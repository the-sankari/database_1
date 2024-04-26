"use strict";

const persons = require("./person.json");
function search(searchKey, value) {
  // error checking missing
  const found = [];
  for (const person of persons) {
    if (person[searchKey] == value) {
      found.push(person);
    }
  }

  return found;
}

console.log(search("name", "John")); //
console.log(search("city", "Chicago")); //


const city ='New York';
const result = search('city',city);

if (result.length > 0) {
    console.log(`Persons living in ${city} city`);
    for (const person of result) {
        console.log(`Name: ${person.name}, Age: ${person.age}`);
    }
} else {
    console.log(`No person in the ${city} city`);
}