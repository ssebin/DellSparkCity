const functions = require("firebase-functions");
const admin = require("firebase-admin");

const express = require("express");
const cors = require("cors");

const app = express();

// Enable CORS for all routes
app.use(cors());

// Your other routes and server setup...

app.listen(4000, () => {
  console.log("Server running on port 3000");
});

admin.initializeApp();

// Define an HTTP function to handle API requests
exports.getFloorData = functions.https.onRequest((req, res) => {
  // Allow CORS
  res.set("Access-Control-Allow-Origi", "*");
  res.set("Access-Control-Allow-Methods", "GET, PUT, POST, OPTIONS");
  res.set("Access-Control-Allow-Headers", "*");

  const year = req.query.year;
  const month = req.query.month;
  const floor = req.query.floor;

  const dataRef = admin.database().ref(`${year}/${month}/floor/${floor}`);
  dataRef
      .once("value")
      .then((snapshot) => {
        const floorData = snapshot.val();
        res.json(floorData);
      })
      .catch((error) => {
        res.status(500).send("Error getting floor data: " + error);
      });
});
