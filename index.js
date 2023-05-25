const express = require("express");
const bodyParser = require("body-parser");
const userController = require("./user.controller");
const pool = require("./db.config");

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Default route
app.get("/", (req, res) => {
  res.json({ message: "Hello world!" });
});

app.get("/users", async (req, res) => {
  const reults = await pool.query("SELECT * FROM users");
  res.status(200).json(reults.rows);
});

app.get("/users", userController.getAllUsers);

const PORT = process.env.PORT || 4242;

app.listen(PORT, () =>
  console.log(`Server running on port ${PORT}: http://localhost:${PORT}`)
);