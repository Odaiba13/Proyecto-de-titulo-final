import { User } from "./User"; 

require('dotenv').config();
const Pool=require('pg').Pool;
const pool = new Pool({
    user: process.env.USER,
    host: process.env.HOST,
    database: process.env.DATABASE,
    password: process.env.PASS,
    port: process.env.PORT,
});

const GetUser= (req:any, res:any) => {
    let listaUsers=new Array<User>();
    pool.query(`SELECT * FROM "users"`, (err:any, respuesta:any) => {
        if (err) {
            console.error(err);
            return;
        }
        for (let row of respuesta.rows) {
            listaUsers.push(row);
        }
         console.log(listaUsers);
        res.send(JSON.stringify({"status":"ok","items":listaUsers}));
    })
}

module.exports={
    GetUser
}