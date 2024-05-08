const express = require('express');
const mysql = require('mysql');

const app = express();

// Create a MySQL connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'db_credify'
});

// Connect to MySQL
connection.connect(err => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

// Define routes

// Example route to retrieve all faculty accounts
app.get('/api/faculty-accounts', (req, res) => {
  const query = 'SELECT * FROM faculty_accounts';
  connection.query(query, (error, results) => {
    if (error) {
      console.error('Error executing MySQL query:', error);
      res.status(500).json({ error: 'Internal Server Error' });
      return;
    }
    res.json(results);
  });
});

// Example route to retrieve faculty account by ID
app.get('/api/faculty-accounts/:id', (req, res) => {
  const id = req.params.id;
  const query = 'SELECT * FROM faculty_accounts WHERE faculty_id = ?';
  connection.query(query, [id], (error, results) => {
    if (error) {
      console.error('Error executing MySQL query:', error);
      res.status(500).json({ error: 'Internal Server Error' });
      return;
    }
    if (results.length === 0) {
      res.status(404).json({ error: 'Faculty account not found' });
      return;
    }
    res.json(results[0]);
  });
});

// Start the server
const PORT = process.env.PORT || 4200;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
