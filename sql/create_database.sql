-- Drop database if it exists (optional)
DROP DATABASE IF EXISTS periodic_table;

-- Create database with proper encoding and locale
CREATE DATABASE periodic_table
    WITH TEMPLATE = template0
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8';

-- Connect to the newly created database
\connect periodic_table;

-- Create tables
CREATE TABLE public.elements (
    atomic_number INTEGER NOT NULL,
    symbol VARCHAR(2) NOT NULL,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (atomic_number),
    UNIQUE (symbol),
    UNIQUE (name)
);

CREATE TABLE public.types (
    type_id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL
);

CREATE TABLE public.properties (
    atomic_number INTEGER NOT NULL,
    type_id INTEGER NOT NULL,
    atomic_mass DECIMAL NOT NULL,
    melting_point_celsius DECIMAL NOT NULL,
    boiling_point_celsius DECIMAL NOT NULL,
    FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number),
    FOREIGN KEY (type_id) REFERENCES public.types(type_id)
);
