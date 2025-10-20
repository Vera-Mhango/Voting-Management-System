const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');

app.use(express.static('public'));

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',   
  password: '',      
  database: 'malawi electoral comition'  
});

// Connecting ku database
db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL database');
});

app.get('/dashboard.ejs', (req, res) => {
    const unregisteredQuery = `
    SELECT
      'Females' AS gender,
      ROUND(
        ((SELECT COUNT(*) FROM citizen WHERE gender = 'f') -
         (SELECT COUNT(*) FROM citizen c JOIN voter v ON c.citizenID = v.citizenID WHERE c.gender = 'f')) * 100.0 /
        (SELECT COUNT(*) FROM citizen WHERE gender = 'f'),
        2
      ) AS percentage_unregistered
    UNION ALL
    SELECT
      'Males',
      ROUND(
        ((SELECT COUNT(*) FROM citizen WHERE gender = 'm') -
         (SELECT COUNT(*) FROM citizen c JOIN voter v ON c.citizenID = v.citizenID WHERE c.gender = 'm')) * 100.0 /
        (SELECT COUNT(*) FROM citizen WHERE gender = 'm'),
        2
      );
    `;

    const winnersQuery = `
    SELECT 'Presidential' AS election_type, presidential_candidate AS candidate_name
    FROM presidential_winner
    UNION ALL
    SELECT 'Parliamentary' AS election_type, candidate_name
    FROM parlimental_winner
    UNION ALL
    SELECT 'Local Government' AS election_type, candidate_name
    FROM localgovt_winner;
    `;

    const unregisteredCandidatesQuery = `
    SELECT
      ROUND(
        (COUNT(*) - COUNT(v.voterID)) * 100.0 / COUNT(*),
        2
      ) AS percentage_unregistered_candidates
    FROM candidate c
    LEFT JOIN voter v ON c.citizenID = v.citizenID;
    `;

    const nullVotesQuery = `
    SELECT *
    FROM nullvotes_ward1
    UNION ALL
    SELECT *
    FROM nullvotes_ward2;
    `;

    const genderForGenderQuery = `
    SELECT * FROM gender_for_gender;
    `;

    db.query(unregisteredQuery, (err, unregistered) => {
        if (err) {
            console.error('Error fetching unregistered by gender:', err);
            res.status(500).send('Database error');
            return;
        }

        db.query(winnersQuery, (err, winners) => {
            if (err) {
                console.error('Error fetching winners:', err);
                res.status(500).send('Database error');
                return;
            }

            db.query(unregisteredCandidatesQuery, (err, unregisteredCandidates) => {
                if (err) {
                    console.error('Error fetching unregistered candidates:', err);
                    res.status(500).send('Database error');
                    return;
                }

                db.query(nullVotesQuery, (err, nullVotes) => {
                    if (err) {
                        console.error('Error fetching null votes:', err);
                        res.status(500).send('Database error');
                        return;
                    }

                    db.query(genderForGenderQuery, (err, genderForGender) => {
                        if (err) {
                            console.error('Error fetching gender for gender stats:', err);
                            res.status(500).send('Database error');
                            return;
                        }

                        res.render('dashboard.ejs', {
                            unregistered,
                            winners,
                            unregisteredCandidates,
                            nullVotes,
                            genderForGender
                        });
                    });
                });
            });
        });
    });
});

app.get('/voters.ejs', (req, res) => {
  const query = `
    SELECT
      v.voterID,
      v.regID,
      c.fname,
      c.lname,
      c.gender,
      DATE_FORMAT(vr.reg_date, '%e-%b-%y') AS new_regdate
    FROM
      voter v
    JOIN
      citizen c ON v.citizenID = c.citizenID
    JOIN
      voter_reg vr ON v.regID = vr.regID;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching voters:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('voters.ejs', { voters: results });
  });
});

app.get('/districts.ejs', (req, res) => {
  const query = `
    SELECT
      d.districtID,
      d.name AS district_name,
      r.name AS region_name
    FROM
      district d
    JOIN
      region r ON d.regionID = r.regionID;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching district and region data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('districts.ejs', { districts: results });
  });
});

app.get('/const.ejs', (req, res) => {
  const query = `
    SELECT
      c.constID,
      c.name AS const_name,
      d.name AS district_name,
      r.name AS region_name
    FROM
      constituency c
    JOIN
      district d ON c.districtID = d.districtID
    JOIN
      region r ON d.regionID = r.regionID;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching constituency data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('const.ejs', { constituencies: results });
  });
});

app.get('/wards.ejs', (req, res) => {
  const query = `
    SELECT
      w.wardID,
      w.name AS ward_name,
      c.name AS constituency_name,
      d.name AS district_name,
      r.name AS region_name
    FROM
      ward w
    JOIN
      constituency c ON w.constID = c.constID
    JOIN
      district d ON c.districtID = d.districtID
    JOIN
      region r ON d.regionID = r.regionID;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching district and region data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('wards.ejs', { wards: results });
  });
});

app.get('/polling.ejs', (req, res) => {
  const query = `
    SELECT
      pc.poll_centerID,
      pc.name AS polling_center_name,
      w.name AS ward_name,
      c.name AS constituency_name
    FROM
      polling_center pc
    JOIN
      ward w ON pc.wardID = w.wardID
    JOIN
      constituency c ON w.constID = c.constID;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching polling center data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('polling.ejs', { polling_centers: results });
  });
});

app.get('/registeredCands.ejs', (req, res) => {
  const query = `
    SELECT
      rc.*, 
      c.fname,
      c.lname,
      c.gender,
      DATE_FORMAT(rc.regdate, '%e-%b-%y') AS new_regdate
    FROM
      reg_candidate rc
    JOIN
      citizen c ON rc.citizenID = c.citizenID;
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching registered candidates:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('registeredCands.ejs', { reg_candidates: results });
  });
});

app.get('/presidents.ejs', (req, res) => {
    const query = `
        SELECT
      rc.*,
      c.fname,
      c.lname,
      c.gender,
      p.name AS party_name,
      DATE_FORMAT(rc.regdate, '%e-%b-%y') AS new_regdate
    FROM
      reg_candidate rc
    JOIN
      citizen c ON rc.citizenID = c.citizenID
    JOIN
      party p ON rc.partyID = p.partyID
    WHERE
      rc.typeID = 1
    ORDER BY
      rc.regdate;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching presidential candidates:', err);
            res.status(500).send('Database error');
            return;
        }

        res.render('presidents.ejs', { presidents: results });
    });
});

app.get('/parlimentary.ejs', (req, res) => {
    const query = `
      SELECT
      rc.*,
      c.fname,
      c.lname,
      c.gender,
      p.name AS party_name,
      const.name AS constituency_name,
      DATE_FORMAT(rc.regdate, '%e-%b-%y') AS new_regdate
    FROM
      reg_candidate rc
    JOIN
      citizen c ON rc.citizenID = c.citizenID
    JOIN
      party p ON rc.partyID = p.partyID
    JOIN
      constituency const ON rc.constID = const.constID
    WHERE
      rc.typeID = 2
    ORDER BY
      rc.regdate;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching parlimenatary candidates:', err);
            res.status(500).send('Database error');
            return;
        }

        res.render('parlimentary.ejs', { parliments : results });
    });
});

app.get('/local.ejs', (req, res) => {
    const query = `
        SELECT
      rc.*,
      c.fname,
      c.lname,
      c.gender,
      p.name AS party_name,
      const.name AS constituency_name,
      w.name AS ward_name,
      DATE_FORMAT(rc.regdate, '%e-%b-%y') AS new_regdate
    FROM
      reg_candidate rc
    JOIN
      citizen c ON rc.citizenID = c.citizenID
    JOIN
      party p ON rc.partyID = p.partyID
    JOIN
      constituency const ON rc.constID = const.constID
    JOIN
      ward w ON rc.wardID = w.wardID
    WHERE
      rc.typeID = 3
    ORDER BY
      rc.regdate;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching local government candidates:', err);
            res.status(500).send('Database error');
            return;
        }

        res.render('local.ejs', { localgovts : results });
    });
});

app.get('/votes.ejs', (req, res) => {
    const query = `
        SELECT 
            CONCAT(vc.fname, ' ', vc.lname) AS \`Voter Full Name\`,
            CONCAT(pres_c.fname, ' ', pres_c.lname) AS \`President Full Name\`,
            CONCAT(parl_c.fname, ' ', parl_c.lname) AS \`Parliament Full Name\`,
            CONCAT(local_c.fname, ' ', local_c.lname) AS \`Local Govt Full Name\`,
            w.name AS \`Ward Name\`
        FROM cast_vote cv
        JOIN voter v ON cv.voterID = v.voterID
        JOIN citizen vc ON v.citizenID = vc.citizenID
        JOIN president pres ON cv.presidentID = pres.presidentID
        JOIN reg_candidate rc_pres ON pres.regNum = rc_pres.regNum AND rc_pres.typeID = 1
        JOIN citizen pres_c ON rc_pres.citizenID = pres_c.citizenID
        JOIN member_ofparl mop ON cv.member_ofparlID = mop.member_ofParlID
        JOIN reg_candidate rc_parl ON mop.regNum = rc_parl.regNum AND rc_parl.typeID = 2
        JOIN citizen parl_c ON rc_parl.citizenID = parl_c.citizenID
        JOIN localgovt lg ON cv.localgovtID = lg.localgovtID
        JOIN reg_candidate rc_local ON lg.regNum = rc_local.regNum AND rc_local.typeID = 3
        JOIN citizen local_c ON rc_local.citizenID = local_c.citizenID
        JOIN ward w ON cv.wardID = w.wardID
        ORDER BY cv.voterID;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching cast votes:', err);
            res.status(500).send('Database error');
            return;
        }

        res.render('votes.ejs', { cast_votes : results });
    });
});

app.get('/complaints.ejs', (req, res) => {
    const query = `
        SELECT * FROM complaints;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching votes:', err);
            res.status(500).send('Database error');
            return;
        }

        res.render('complaints.ejs', { complaint : results });
    });
});

app.get('/index2.ejs', (req, res) => {
  db.query('SELECT * FROM region', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('index2.ejs', { regions: results });
  });
});

app.get('/voters.ejs', (req, res) => {
  db.query('SELECT * FROM voter', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('voters.ejs', { voters: results });
  });
});



app.get('/index.ejs', (req, res) => {
  db.query('SELECT * FROM citizen', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('index.ejs', { citizens: results });
  });
});

app.get('/index4.ejs', (req, res) => {
  db.query('SELECT * FROM party', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('index4.ejs', { parties: results });
  });
});

app.get('/const.ejs', (req, res) => {
  db.query('SELECT * FROM constituency', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('const.ejs', { constituencies: results });
  });
});

app.get('/votes.ejs', (req, res) => {
  db.query('SELECT * FROM cast_vote', (err, results) => {
    if (err) {
      console.error('Error fetching data:', err);
      res.status(500).send('Database error');
      return;
    }
    res.render('votes.ejs', { cast_votes: results });
  });
});


app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});