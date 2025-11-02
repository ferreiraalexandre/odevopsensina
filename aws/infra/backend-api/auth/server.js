const express = require('express');
const app = express();
const PORT = 3002;

app.get('/auth', (req, res) => {
  res.send('API de autenticação respondendo na porta 3002');
});

app.listen(PORT, () => {
  console.log(`Auth rodando na porta ${PORT}`);
});
