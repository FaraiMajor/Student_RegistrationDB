const express = require("express");
const app = express();
const pool = require("./db");

app.use(express.json())

//Router for post request to add data to the store table
app.post("/student", async(req, res) => {
    try {
        const { student_id, student_name, student_major } = req.body;
        const newStudent = await pool.query("INSERT INTO student (student_id, student_name, student_major) VALUES ($1, $2, $3) RETURNING *", [student_id, student_name, student_major]);

        res.json(newStudent.rows[0]) // return the first row created

    } catch (err) {
        console.log(err.message)
    }

})

//Router for get request to get all data from the store table
app.get("/student", async(req, res) => {
    try {
        const allStudents = await pool.query(
            "SELECT * FROM student",
        );

        res.json(allStudents.rows)

    } catch (err) {
        console.log(err.message)
    }

})

//Router for get request to get both the ids and names from the store table
app.get("/student/id&name", async(req, res) => {
    try {
        const allStudent = await pool.query(
            "SELECT student_id,student_name FROM student",
        );

        res.json(allStudent.rows)

    } catch (err) {
        console.log(err.message)
    }

})

app.listen(3000, () => {
    console.log("server is listening on port 3000");
});