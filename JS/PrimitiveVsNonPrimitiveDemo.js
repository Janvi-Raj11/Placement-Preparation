// =========================================
// JavaScript Primitive Immutability Demo
// Primitive values are immutable.
// Immutable = The value cannot be changed.
// =========================================


// 1. String (Immutable)

let name = "Janvi";

name[0] = "P"; // No effect

console.log("String:", name); // Janvi



// 2. Number (Immutable)

let num = 10;

num = 20; // Creates a new value

console.log("Number:", num); // 20



// 3. Boolean (Immutable)

let isStudent = true;

isStudent = false;

console.log("Boolean:", isStudent); // false



// 4. Undefined (Primitive)

let x;

console.log("Undefined:", x); // undefined



// 5. Null (Primitive)

let y = null;

console.log("Null:", y); // null



// 6. Symbol (Primitive)

let s1 = Symbol("id");
let s2 = Symbol("id");

console.log("Symbol:", s1 === s2); // false



// 7. BigInt (Primitive)

let big = 123456789012345678901234567890n;

console.log("BigInt:", big);

// =========================================
// JavaScript Non-Primitive (Mutable) Demo
// =========================================


// 1. Object (Mutable)

let student = {
    name: "Janvi",
    age: 22
};

student.age = 23; // Changing an existing value
student.city = "Bangalore"; // Adding a new property

console.log(student);


// 2. Array (Mutable)

let numbers = [10, 20, 30];

numbers[0] = 100;   // Modify an element
numbers.push(40);   // Add a new element

console.log(numbers);


// 3. Function (Functions are objects)......???????????????????????????????????

function greet() {
    console.log("Hello");
}

greet.language = "JavaScript"; // Add a property to the function

console.log(greet.language);