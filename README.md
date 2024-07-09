# Periodic Table - Database w/ Frontend

###### Technologies:
<p align="center">
<img src="https://img.icons8.com/color/75/000000/console.png" width="75" height="75" alt="Bash" style="margin: 10px 15px 0 15px;" />
<img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/skills/postgresql-colored.svg" width="75" height="75" alt="PostgreSQL" style="margin: 10px 15px 0 15px;" />
<img src="https://img.icons8.com/color/75/000000/javascript.png" width="75" height="75" alt="JavaScript" style="margin: 10px 15px 0 15px;" />
<img src="https://img.icons8.com/color/75/000000/mongodb.png" width="75" height="75" alt="MongoDB" style="margin: 10px 15px 0 15px;" />
<img src="https://img.icons8.com/color/75/000000/html-5.png" width="75" height="75" alt="HTML" style="margin: 10px 15px 0 15px;" />
<img src="https://img.icons8.com/color/75/000000/css3.png" width="75" height="75" alt="CSS" style="margin: 10px 15px 0 15px;" />
</p>

- **Bash:** Utilizado para escrever scripts de shell que facilitam a configuração, manutenção e consulta do banco de dados.
- **PostgreSQL:** Sistema de gerenciamento de banco de dados relacional utilizado para armazenar os dados dos elementos químicos.
- **JavaScript:** Utilizado no frontend para interatividade e manipulação dinâmica dos elementos da tabela periódica.
- **MongoDB/Mongoose:** Utilizados para o backend, armazenando e gerenciando dados sobre os elementos químicos de forma não relacional.

### Functionality

This project showcases a relational and non-relational database designed to store comprehensive information about chemical elements found in the periodic table. It includes scripts for setting up the database schema, seeding initial data, and querying information effectively. Additionally, it provides a web interface for users to interact with the data visually.

## Project Structure

- `sql/`: Contains SQL scripts for creating and seeding the PostgreSQL database.
- `scripts/`: Contains shell scripts for querying and updating the PostgreSQL database.
- `models/`: Contains Mongoose schemas for MongoDB.
- `public/`: Contains frontend files (HTML, CSS, JS).
- `atomic_mass.txt`: File containing corrected atomic masses.
- `index.js`: Main server file to run the backend using Express.

## Setup

### Prerequisites

- PostgreSQL installed
- Bash shell
- Node.js and npm installed
- MongoDB installed

### Installation Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/periodic-table-database.git
   cd periodic-table-database
   ```

2. Create the PostgreSQL database and tables:
   ```bash
   psql -U postgres -f sql/create_database.sql
   ```

3. Seed the PostgreSQL database with initial data:
   ```bash
   psql -U yourdatabase -d periodic_table -f sql/seed_data.sql
   ```

4. Adjust the PostgreSQL database structure:
   ```bash
   bash scripts/fix_database.sh
   ```

5. Install the Node.js dependencies:
   ```bash
   npm install
   ```

6. Set up the MongoDB database:
   - Ensure MongoDB is running.
   - Add connection string to `.env` file:
     ```
     MONGODB_URI=mongodb://localhost:27017/periodic_table
     ```

7. Run the server:
   ```bash
   node index.js
   ```

## Usage

### Querying Element Information (PostgreSQL)

To retrieve information about a specific chemical element by its name, symbol, or atomic number:

```bash
bash scripts/main.sh Hydrogen
```

Replace `Hydrogen` with the element's name, symbol, or atomic number to query details about that element.

### Interacting with the Web Interface

1. Open a web browser and go to `http://localhost:3000`.
2. Use the search bar to find elements by name or symbol.
3. Click on any element in the periodic table to view detailed information.

## Functionality

The database and web interface allow users to:

- **Retrieve Element Information:** Query by name, symbol, or atomic number to obtain details such as atomic mass, melting point, boiling point, and classification.
- **Update and Maintain Database:** Use provided scripts to seed initial data and adjust the database structure as needed.
- **Explore Chemical Properties:** Leverage SQL queries to explore relationships and properties of elements within the periodic table.
- **Interactive Frontend:** Visually interact with the periodic table, view element details, and search for elements using a user-friendly web interface.

## Practical Use Case

This project can be integrated into educational platforms, scientific applications, or chemical data analysis tools where detailed information about chemical elements is required.

## Benefits

- **Structured Data Storage:** Organizes element information into relational tables for efficient querying and data management.
- **Scripted Setup and Maintenance:** Simplifies initial database setup and ongoing maintenance tasks through provided SQL and shell scripts.
- **Extensibility:** Offers potential for further expansion and integration with additional chemical properties or external data sources.
- **User-Friendly Interface:** Provides an interactive frontend for easy access and visualization of chemical element data.

---
#### This is a FreeCodeCamp Challenge for Relational Database Projects Certification
<p align="center">
<img src="https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg" width="250" height="75" alt="freeCodeCamp" style="margin: 0 15px; opacity: 0.6" />
</p>
