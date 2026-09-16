const fs = require("fs");

const config = JSON.parse(
  fs.readFileSync("./config.json", "utf8")
);

console.log("Application started.");

if (config.enable_new_feature === true) {
  console.log("New Dashboard feature is ENABLED.");
  console.log("Loading the new dashboard...");
} else {
  console.log("New Dashboard feature is DISABLED.");
  console.log("Loading the existing dashboard...");
}
