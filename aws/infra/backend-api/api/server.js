const express = require('express');
const app = express();
const PORT = 3001;

app.get('/', (req, res) => {
  res.send('API principal respondendo na porta 3001');
});

app.listen(PORT, () => {
  console.log(`API rodando na porta ${PORT}`);
});