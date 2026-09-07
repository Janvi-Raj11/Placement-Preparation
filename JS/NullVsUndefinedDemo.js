// =========================================
// JavaScript Null vs Undefined
// =========================================


// ---------------------------
// 1. undefined
// ---------------------------

// A variable is declared but no value is assigned.

let a;
console.log("a =", a); // undefined


// ---------------------------
// 2. null
// ---------------------------

// null is an intentional empty value assigned by the programmer.

let b = null;
console.log("b =", b); // null


// ---------------------------
// 3. typeof undefined
// ---------------------------

console.log(typeof undefined); // "undefined"


// ---------------------------
// 4. typeof null
// ---------------------------

// This is a famous JavaScript interview question.

console.log(typeof null); // "object"


// ---------------------------
// 5. Loose Equality (==)
// ---------------------------

// JavaScript treats null and undefined as equal with ==

console.log(null == undefined); // true


// ---------------------------
// 6. Strict Equality (===)
// ---------------------------

// Different data types

console.log(null === undefined); // false


// ---------------------------
// 7. Boolean Conversion........???????????
// ---------------------------

console.log(Boolean(null));      // false
console.log(Boolean(undefined)); // false


// ---------------------------
// 8. Function Returning Nothing
// ---------------------------

function test() {}

console.log(test()); // undefined


// ---------------------------
// 9. Object Property
// ---------------------------

let student = {
    name: "Janvi"
};

console.log(student.age); // undefined


// ---------------------------
// 10. Intentionally Clearing a Value
// ---------------------------

student.name = null;

console.log(student.name); // null


