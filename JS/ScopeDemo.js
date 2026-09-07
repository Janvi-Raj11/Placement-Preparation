// Global Scope
var a = 10;

function test() {

    // Function Scope
    var a = 100;   // Local variable (different from global a)
    let b = 20;    // Function scope
    const c = 30;  // Function scope

    console.log("Inside Function:");
    console.log(a); // 100
    console.log(b); // 20
    console.log(c); // 30
}

test();

console.log("Outside Function:");
console.log(a); // 10

// console.log(b); //  ReferenceError
// console.log(c); // ReferenceError


// =========================================
// JavaScript Block Scope Demo
// let and const are block scoped.
// =========================================

if (true) {

    // Block Scope
    let x = 10;
    const y = 20;

    console.log("Inside Block:");
    console.log(x); // 10
    console.log(y); // 20
}

// Outside the block
console.log("Outside Block:");

// console.log(x); //  ReferenceError: x is not defined
// console.log(y); //  ReferenceError: y is not defined




