"use strict";

const luamin = require("luamin");
const fs = require("fs");

let contents = fs.readFileSync('output\\output.txt', 'utf8')

let code = luamin.minify(contents)

fs.writeFileSync('output\\output.txt', code)
