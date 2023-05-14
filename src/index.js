// import express
const express = require('express');
const dotenv = require('dotenv').config();

// initialize our express application
const app = express()

// get request
app.get('/', (req, res) => {
  res.status(200).json({ message: 'Docker is easy 🐳'})
});

// create an express server
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Successfully connected to our server on http://localhost:${PORT}`)
})