import express from "express";
import pg from "pg";

const app = express();
const port = 3000;

const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "patient",
  password: "postgres",
  port: 5432,
});

db.connect();

// Middleware
app.use(express.static("public"));
app.use(express.urlencoded({ extended: true }));

// Functions
async function verification(credential) {
  const result = await db.query(
    "SELECT user_id, user_name FROM verification WHERE aadhar_id = $1 AND pass_hash = crypt($2, pass_hash);",
    [credential.aadhar_id, credential.password]
  );
  return result.rows[0];
}

// Route Handlers
app.get("/", (req, res) => {
  res.render("index.ejs");
});

app.post("/verify", async (req, res) => {
  try {
    const auth = await verification(req.body);
    if (auth) {
      res.render("hospital_record.ejs", {user_id: auth.user_id, user_name: auth.user_name});
    } else {
      res.render("index.ejs", {error_message: "Invalid Password"});
    }
  } catch (err) {
    console.log(err);
    res.render("index.ejs", {error_message: "Invalid Credentials"});
  }
});

// Activate server
app.listen(port, () => {
  console.log(`Server is runnning at http://localhost:${port}`);
});
