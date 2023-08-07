const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/function/hello", (req, res) => {
  res.status(200).json({ response: "Hello world" });
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
