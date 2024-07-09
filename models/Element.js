const mongoose = require('mongoose');

const elementSchema = new mongoose.Schema({
  atomic_number: { type: Number, unique: true, required: true },
  symbol: { type: String, unique: true, required: true },
  name: { type: String, unique: true, required: true },
  type_id: { type: Number, required: true },
  atomic_mass: { type: Number, required: true },
  melting_point_celsius: { type: Number, required: true },
  boiling_point_celsius: { type: Number, required: true }
});

module.exports = mongoose.model('Element', elementSchema);
