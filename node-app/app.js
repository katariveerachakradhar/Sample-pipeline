const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Node.js Microservice on AKS!");
});

app.get("/health", (req, res) => {
  res.json({ status: "UP" });
});

app.listen(3000, () => {
  console.log("App running on port 3000");
});
