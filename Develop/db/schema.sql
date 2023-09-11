const mysql = require('mysql2');
const fs = require('fs');
const path = require('path');

// Database configuration
const config = {
  host: 'localhost',
  user: 'your_mysql_username',
  password: 'your_mysql_password',
  port: 3306,
};

// Create a connection to MySQL
const db = mysql.createConnection(config);

// Read the schema.sql file
const schemaFilePath = path.join(__dirname, 'db', 'schema.sql');
const schemaSQL = fs.readFileSync(schemaFilePath, 'utf8');

// Connect to MySQL and create the database and tables
db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }

  console.log('Connected to MySQL database.');

  // Create the database
  db.query('CREATE DATABASE IF NOT EXISTS ecommerce_db', (err) => {
    if (err) {
      console.error('Error creating database:', err);
      db.end();
      return;
    }

    console.log('Database "ecommerce_db" created or already exists.');

    // Use the "ecommerce_db" database
    db.query('USE ecommerce_db', (err) => {
      if (err) {
        console.error('Error selecting database:', err);
        db.end();
        return;
      }

      console.log('Using database "ecommerce_db".');

      // Execute the schema.sql file
      db.query(schemaSQL, (err) => {
        if (err) {
          console.error('Error running schema.sql:', err);
          db.end();
          return;
        }

        console.log('Tables created from schema.sql.');

        // Close the MySQL connection
        db.end();
      });
    });
  });
});

