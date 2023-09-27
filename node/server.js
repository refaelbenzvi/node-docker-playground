'use strict';
const express = require('express');

const PORT = 3001;

const app = express();
app.get('/', (req, res) => {
  res.send('Hello Docker!🐳\n');
});

app.listen(PORT);
console.log(`Running on port ${PORT}`);
