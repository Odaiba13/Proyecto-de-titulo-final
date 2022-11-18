"use strict";
require('dotenv').config();
const Pool = require('pg').Pool;
const pool = new Pool({
    user: process.env.USER,
    host: process.env.HOST,
    database: process.env.DATABASE,
    password: process.env.PASS,
    port: process.env.PORT,
});
const PostUser = (req, res) => {
    // console.log(req.body.username);
    pool.query(`INSERT INTO "users" (username,userpassword,email,charge) VALUES($1,$2,$3,$4) RETURNING *`, [req.body.username, req.body.userpassword, req.body.email, req.body.charge], (err, respuesta) => {
        if (err) {
            console.log(err);
            return;
        }
        else {
            console.log(respuesta.rows[0].iduser);
            res.send(JSON.stringify({ "status": "ok", "item": respuesta.rows[0].iduser }));
        }
    });
};
module.exports = {
    PostUser
};
