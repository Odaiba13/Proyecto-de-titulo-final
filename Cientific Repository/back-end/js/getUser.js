"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
require('dotenv').config();
const Pool = require('pg').Pool;
const pool = new Pool({
    user: process.env.USER,
    host: process.env.HOST,
    database: process.env.DATABASE,
    password: process.env.PASS,
    port: process.env.PORT,
});
const GetUser = (req, res) => {
    let listaUsers = new Array();
    pool.query(`SELECT * FROM "users"`, (err, respuesta) => {
        if (err) {
            console.error(err);
            return;
        }
        for (let row of respuesta.rows) {
            listaUsers.push(row);
        }
        console.log(listaUsers);
        res.send(JSON.stringify({ "status": "ok", "items": listaUsers }));
    });
};
module.exports = {
    GetUser
};
