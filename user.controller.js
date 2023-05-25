const pool = require("./db.config")

exports.getAllUsers = async(req, res) => {
    const results = await pool.query("SELECT * FROM users");
    res.status(200).json(results.rows);

};