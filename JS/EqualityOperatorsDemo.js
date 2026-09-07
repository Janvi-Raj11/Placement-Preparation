// =========================================
// JavaScript == vs === Demo
// =========================================

// == (Loose Equality)
// Compares only the value.
// JavaScript converts the data type if needed.

console.log(5 == "5");        // true
console.log(true == 1);       // true
console.log(false == 0);      // true
console.log(null == undefined); // true


// === (Strict Equality)
// Compares both value and data type.
// No type conversion happens.

console.log(5 === "5");       // false
console.log(true === 1);      // false
console.log(false === 0);     // false
console.log(5 === 5);         // true
console.log("Hello" === "Hello"); // true