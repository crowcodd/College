import fs from "fs";
import path from "path";

let result = "";
const DIRS = [".", "./ui/components", "./utils"];

for (let dir of DIRS) {
  const files = fs.readdirSync(dir);
  for (let file of files) {
    const fullPath = path.join(dir, file);

    if (path.extname(fullPath) === ".py") {
      result += "# " + fullPath + "\n";
      result += fs.readFileSync(fullPath);
      result += "\n\n";
    }
  }
}

console.log(result);
fs.writeFileSync("list_result.txt", result);
