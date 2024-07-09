const express = require('express');
const path = require('path');
const dotenv = require('dotenv');
const mongoose = require('mongoose');
const Element = require('./models/Element');

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

// Servir arquivos estáticos da pasta 'public'
app.use(express.static(path.join(__dirname, 'public')));

// Conectar ao MongoDB
mongoose.connect(process.env.MONGODB_URI, {})
  .then(() => console.log('Connected to MongoDB'))
  .catch(err => console.error('Failed to connect to MongoDB', err));

// Rotas da API
app.get('/api/elements', async (req, res) => {
  try {
    const elements = await Element.find();
    res.json(elements);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

app.get('/api/elements/:atomic_number', async (req, res) => {
  try {
    const element = await Element.findOne({ atomic_number: req.params.atomic_number });
    if (!element) return res.status(404).json({ message: 'Element not found' });
    res.json(element);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// Rota para servir o arquivo index.html
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app;
