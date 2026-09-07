// =========================================
// JavaScript Truthy and Falsy Values
// =========================================


// =========================================
// FALSY VALUES
// These values become false in a Boolean context.
// JavaScript has only 8 falsy values.
// =========================================

// 1. false
console.log(Boolean(false)); // false

// 2. 0
console.log(Boolean(0)); // false

// 3. -0
console.log(Boolean(-0)); // false

// 4. 0n (BigInt Zero)
console.log(Boolean(0n)); // false

// 5. "" (Empty String)
console.log(Boolean("")); // false

// 6. null
console.log(Boolean(null)); // false

// 7. undefined
console.log(Boolean(undefined)); // false

// 8. NaN
console.log(Boolean(NaN)); // false



// =========================================
// TRUTHY VALUES
// Everything else is truthy.
// =========================================

console.log(Boolean(true));        // true
console.log(Boolean(1));           // true
console.log(Boolean(-5));          // true
console.log(Boolean(100));         // true
console.log(Boolean("Hello"));     // true
console.log(Boolean("0"));         // true
console.log(Boolean("false"));     // true
console.log(Boolean([]));          // true
console.log(Boolean({}));          // true
console.log(Boolean(function(){}));// true



// =========================================
// if Statement Examples
// =========================================

if ("Hello") {
    console.log("String is Truthy");
}

if (1) {
    console.log("1 is Truthy");
}

if ([]) {
    console.log("Empty Array is Truthy");
}

if ({}) {
    console.log("Empty Object is Truthy");
}



// =========================================
// Falsy Example
// =========================================

let age = 0;

if (age) {
    console.log("Valid Age");
} else {
    console.log("Age is Falsy");
}



// =========================================
// Practical Example
// =========================================

let username = "";

if (username) {
    console.log("Welcome", username);
} else {
    console.log("Please enter your username");
}