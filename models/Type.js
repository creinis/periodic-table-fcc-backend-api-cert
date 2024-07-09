const mongoose = require('mongoose');

const typeSchema = new mongoose.Schema({
  type_id: { type: Number, unique: true, required: true },
  type: { type: String, unique: true, required: true }
});

module.exports = mongoose.model('Type', typeSchema);
