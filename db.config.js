const { Pool } = require("pg");

const pool = new Pool({
  host: "localhost",
  user: "postgres",
  password: "password123",
  database: "hackthegap",
  port: 5432,
});

module.exports = pool;