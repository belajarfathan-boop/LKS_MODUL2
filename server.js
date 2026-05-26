const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('<h1>🚀 AKHIRNYAA! Aplikasi Web Docker Berhasil Didistribusikan via CI/CD Pipeline LKS Modul 2! 🚀</h1>');
});

app.listen(PORT, () => {
  console.log(`Server jalan di port ${PORT}`);
}); 