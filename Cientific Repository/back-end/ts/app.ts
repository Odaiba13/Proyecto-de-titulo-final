const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');
// import modulos
const InsertarUser=require('./postUser');
const ListarUser=require('./getUser');

const configuracion ={
   hostname: '127.0.0.1',
   port: 3001,
}
const jsonParser = bodyParser.json()

const urlencodedParser = bodyParser.urlencoded({ extended: false })

app.use(cors());
app.use(bodyParser.json());

//Llamados al CRUD
app.get('/ListarUser', bodyParser.json(),ListarUser.GetUser);
app.post('/InsertUser', bodyParser.json(),InsertarUser.PostUser);

app.listen (configuracion, () => {
  console.log(`Conectado al servidor http://${configuracion.hostname}:${configuracion.port}`);
});