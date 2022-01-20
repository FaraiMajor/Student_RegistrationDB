const Pool = require("pg").Pool

const pool = new Pool({
    user: "",
    password: "",
    database: "Student_DB",
    host: "localhost",
    post: 5432
});

module.exports = pool;