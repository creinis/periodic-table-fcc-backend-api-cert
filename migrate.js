/* const { Pool } = require('pg');
const mongoose = require('mongoose');
const dotenv = require('dotenv');
const Element = require('./models/Element');
const Type = require('./models/Type');

dotenv.config();

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: false
});

mongoose.connect(process.env.MONGODB_URI, {})
  .then(() => console.log('Connected to MongoDB'))
  .catch(err => console.error('Failed to connect to MongoDB', err));

const migrateData = async () => {
  try {
    const client = await pool.connect();

    const typesRes = await client.query('SELECT * FROM types');
    const types = typesRes.rows;
    await Type.insertMany(types);

    const elementsRes = await client.query(`
      SELECT e.atomic_number, e.symbol, e.name, p.type_id, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius
      FROM elements e
      JOIN properties p ON e.atomic_number = p.atomic_number
    `);
    const elements = elementsRes.rows;
    await Element.insertMany(elements);

    client.release();
    console.log('Data migrated successfully');
  } catch (err) {
    console.error('Error migrating data', err);
  } finally {
    mongoose.connection.close();
  }
};

migrateData();
 */