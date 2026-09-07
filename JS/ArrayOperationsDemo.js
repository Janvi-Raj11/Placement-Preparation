// =======================================================
// JavaScript Array Operations Demo
// Covers: Create, Read, Update, Delete,
// new Array(), Sparse Array,
// push, pop, unshift, shift, splice
// =======================================================



// =======================================================
// 1. CREATE ARRAY
// =======================================================

let arr = [10, 12.5, true, 'a', "jsp", () => {}, [], {}, null, undefined];

console.log("Original Array:", arr);

/*
Output:
Original Array:
[
 10, 12.5, true, 'a', 'jspiders',
 [Function], [], {}, null, undefined
]
*/



// =======================================================
// 2. READ ARRAY
// =======================================================

console.log("First Element:", arr[0]);      // 10
console.log("Second Element:", arr[1]);     // 12.5
console.log("100th Element:", arr[100]);    // undefined   Why doesn't JavaScript throw "Array Index Out of Bounds"? ---Because JavaScript arrays are dynamic and flexible.
console.log("Array Length:", arr.length);   // 10



// =======================================================
// 3. UPDATE ARRAY
// =======================================================

arr[0] = "jspiders";
arr[3] = 1000;

console.log("Updated Array:", arr);

/*
Output:
[
 'jspiders',12.5,true,1000,
 'jspiders',[Function],[],{},
 null,undefined
]
*/



// =======================================================
// 4. DELETE ELEMENTS
// delete removes value but keeps index.
// =======================================================

delete arr[0];
delete arr[1];

console.log("After Delete:", arr);
console.log("Length After Delete:", arr.length);

/*
Output:
[
 empty,empty,true,1000,
 'jspiders',[Function],[],
 {},null,undefined
]

Length: 10
*/



// =======================================================
// 5. SPARSE ARRAY
// =======================================================

let arr2 = [10, 20, 30];

arr2[100] = "RAHUL";

console.log("Sparse Array Length:", arr2.length);
console.log("Index 100:", arr2[100]);

/*
Output:
101
RAHUL
*/



// =======================================================
// 6. ARRAY USING new Array()
// =======================================================

// Multiple values
let arr3 = new Array(10, 20, 30, "true", true, {});
console.log("arr3:", arr3);

// Single number creates empty slots ---IMPORTANT
let arr4 = new Array(10);

console.log("arr4 Length:", arr4.length);
console.log("arr4:", arr4);

/*
Output:
arr3:
[10,20,30,"true",true,{}]

arr4 Length:
10

arr4:
[empty × 10]
*/



// =======================================================
// ARRAY MUTATING METHODS
// (These modify the original array.)
// =======================================================



// =======================================================
// 7. push()
// Adds elements at the END.
// Returns new length.
// =======================================================

let pushArr = [10,20,30,40,50];

pushArr.push(60);
pushArr.push(70,80,90);

console.log("After push:", pushArr);
console.log("Length:", pushArr.length);

/*
Output:
[10,20,30,40,50,60,70,80,90]
Length: 9
*/



// =======================================================
// 8. pop()
// Removes ONE last element.
// Returns removed element.
// =======================================================

let popArr = [10,20,30,40,50];

console.log("Removed:", popArr.pop());
console.log("After pop:", popArr);

popArr.pop(3);   // Argument ignored.

console.log("After pop(3):", popArr);

/*
Output:
Removed:
50

After pop:
[10,20,30,40]

After pop(3):
[10,20,30]
*/



// =======================================================
// 9. unshift()
// Adds elements at the START.
// Returns new length.
// =======================================================

let unshiftArr = [10,20,30];

unshiftArr.unshift(100,200,300);

console.log("After unshift:", unshiftArr);

/*
Output:
[100,200,300,10,20,30]
*/



// =======================================================
// 10. shift()
// Removes ONE first element.
// Returns removed element.
// =======================================================

let shiftArr = [10,20,30,40];

console.log("Removed:", shiftArr.shift());
console.log("After shift:", shiftArr);

shiftArr.shift(4);   // Argument ignored.

console.log("After shift(4):", shiftArr);

/*
Output:
Removed:
10

After shift:
[20,30,40]

After shift(4):
[30,40]
*/



// =======================================================
// 11. splice()
// Syntax:
// array.splice(start, deleteCount, item1, item2...)
// =======================================================



// ---------------------------
// Example 1
// Remove everything from index 2
// ---------------------------

let splice1 = [10,20,30,40,50];

console.log("Removed:", splice1.splice(2));
console.log("Array:", splice1);

/*
Output:
Removed:
[30,40,50]

Array:
[10,20]
*/



// ---------------------------
// Example 2
// Remove 2 elements
// ---------------------------

let splice2 = [10,20,30,40,50];

console.log("Removed:", splice2.splice(2,2));
console.log("Array:", splice2);

/*
Output:
Removed:
[30,40]

Array:
[10,20,50]
*/



// ---------------------------
// Example 3
// Remove and Insert
// ---------------------------

let splice3 = [10,20,30,40,50];

console.log("Removed:", splice3.splice(3,2,100,200,300));
console.log("Array:", splice3);

/*
Output:
Removed:
[40,50]

Array:
[10,20,30,100,200,300]
*/



// ---------------------------
// Example 4
// Replace 2 elements
// ---------------------------

let splice4 = [10,20,30,40,50];

console.log("Removed:", splice4.splice(1,2,90,80,100));
console.log("Array:", splice4);

/*
Output:
Removed:
[20,30]

Array:
[10,90,80,100,40,50]
*/



// ---------------------------
// Example 5
// Insert without deleting
// ---------------------------

let splice5 = [10,20,30,40,50];

console.log("Removed:", splice5.splice(2,0,60,70,80,90,100));
console.log("Array:", splice5);

/*
Output:
Removed:
[]

Array:
[10,20,60,70,80,90,100,30,40,50]
*/



// =======================================================
// QUICK INTERVIEW REVISION
// =======================================================

/*
push()     -> Add at End
pop()      -> Remove from End
unshift()  -> Add at Start
shift()    -> Remove from Start
splice()   -> Remove/Insert/Replace
delete     -> Removes value, keeps index
length     -> Total highest index + 1
new Array(10) -> Creates 10 empty slots
arr[100] = value -> Creates sparse array
*/
