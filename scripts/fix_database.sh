#!/bin/bash

PSQL="psql -X --username=carlosreinis --dbname=periodic_table --tuples-only -c"

# Rename columns
$PSQL "ALTER TABLE properties RENAME COLUMN weight TO atomic_mass;"
$PSQL "ALTER TABLE properties RENAME COLUMN melting_point TO melting_point_celsius;"
$PSQL "ALTER TABLE properties RENAME COLUMN boiling_point TO boiling_point_celsius;"

# Set NOT NULL constraints
$PSQL "ALTER TABLE properties ALTER COLUMN melting_point_celsius SET NOT NULL;"
$PSQL "ALTER TABLE properties ALTER COLUMN boiling_point_celsius SET NOT NULL;"

# Add UNIQUE constraints
$PSQL "ALTER TABLE elements ADD UNIQUE(symbol);"
$PSQL "ALTER TABLE elements ADD UNIQUE(name);"

# Set NOT NULL constraints
$PSQL "ALTER TABLE elements ALTER COLUMN symbol SET NOT NULL;"
$PSQL "ALTER TABLE elements ALTER COLUMN name SET NOT NULL;"

# Add foreign key constraint
$PSQL "ALTER TABLE properties ADD FOREIGN KEY (atomic_number) REFERENCES elements(atomic_number);"

# Create types table and insert data
$PSQL "CREATE TABLE types(type_id SERIAL PRIMARY KEY, type VARCHAR(50) NOT NULL);"
$PSQL "INSERT INTO types(type) VALUES('nonmetal'), ('metal'), ('metalloid');"

# Update properties table with type_id values
$PSQL "UPDATE properties SET type_id = CASE
  WHEN type = 'nonmetal' THEN 1
  WHEN type = 'metal' THEN 2
  WHEN type = 'metalloid' THEN 3
  END;"

# Remove old type column
$PSQL "ALTER TABLE properties DROP COLUMN type;"

# Trim trailing zeros
$PSQL "UPDATE properties SET atomic_mass = TRIM(TRAILING '0' FROM atomic_mass::TEXT)::NUMERIC;"
