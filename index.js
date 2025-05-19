// Que es express? Es un servior
const express = require('express');

const app = express();

const port = 3000;

app.get('/', (req, res) => {
  res.send('Hola precioso guapo chulo');
});

app.get('hello', (req, res) => {
  res.send('TE AMOOO');
});

app.listen(port, () => {
  console.log('Servidor escuchando en el puerto 3000');
});