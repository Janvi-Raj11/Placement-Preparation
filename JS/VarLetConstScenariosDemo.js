a1 = 10
b1 = "janvi"
c1 = true
console.log(typeof a1);
console.log(typeof b1);
console.log(typeof c1);

console.log("122" + 2); //1222
console.log("122" - 2); //120

// =========================================
// JavaScript var - All Scenarios Demo
// =========================================


// 1. DECLARE
// Create a variable without giving it a value.
var a;
console.log("1. Declare:", a); // undefined  Why is undefined? --When we declare a variable with var but don't assign a value, JavaScript automatically gives it the value undefined.


// 2. INITIALIZE
// Give a value to an already declared variable.
a = 10;
console.log("2. Initialize:", a); // 10


// 3. DECLARE + INITIALIZE
// Create a variable and give it a value in the same line.
var b = 20;
console.log("3. Declare + Initialize:", b); // 20


// 4. REDECLARE
// Declare the same variable again.
// var allows redeclaration, so no error occurs.
var b;
console.log("4. Redeclare:", b); // 20


// 5. REINITIALIZE (REASSIGN)
// Change the value of an existing variable.
b = 30;
console.log("5. Reinitialize:", b); // 30


// 6. REDECLARE + REINITIALIZE
// Declare the same variable again and assign a new value.
// var allows both redeclaration and assigning a new value.
var b = 40;
console.log("6. Redeclare + Reinitialize:", b); // 40


 // =========================================
// JavaScript let - All Scenarios Demo
// =========================================


// 1. DECLARE
// Create a variable without giving it a value.
let x;
console.log("1. Declare:", x); // undefined


// 2. INITIALIZE
// Give a value to an already declared variable.
x = 10;
console.log("2. Initialize:", x); // 10


// 3. DECLARE + INITIALIZE
// Not possible here because x is already declared.
// let x = 20; //  SyntaxError


// 4. REDECLARE
// let does NOT allow redeclaration in the same scope.
// let x; //  SyntaxError


// 5. REINITIALIZE (REASSIGN)
// Change the value of an existing variable.
x = 30;
console.log("5. Reinitialize:", x); // 30


// 6. REDECLARE + REINITIALIZE
// let x = 40; //  SyntaxError


 // =========================================
// JavaScript const - All Scenarios Demo
// =========================================


// 1. DECLARE
// Not allowed. const must be initialized immediately.
// const y; // SyntaxError


// 2. DECLARE + INITIALIZE
// This is the correct way.
const y = 10;
console.log("2. Declare + Initialize:", y); // 10


// 3. INITIALIZE LATER
// Not possible because const must get a value when declared.
// const z;
// z = 20; // SyntaxError


// 4. REDECLARE
// const y = 20; // SyntaxError


// 5. REINITIALIZE (REASSIGN)
// Not allowed.
// y = 30; // TypeError


// 6. REDECLARE + REINITIALIZE
// const y = 40; // SyntaxError