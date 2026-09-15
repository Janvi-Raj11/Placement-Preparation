package Employee;
// Problem Statement 
// Employee Salary Increment

// Create a Java program to store and display employee details using classes and objects.

// Create an Employees class with the following properties:

// Name
// Company
// Salary
// Experience

// Create methods:

// display() → Display all employee details.
// increment() → Increase the employee's salary by 10%.

// In the Test class:

// Create objects for 2 employees.
// Assign their details.
// Display the details of both employees.
// Increase the salary of one employee by 10%.
// Display the updated salary.

public class Employees {
    String name;
    String company;
    double salary;
    double exp;

    void display() {
        System.out.println("NAME: " + name);
        System.out.println("company: " + company);
        System.out.println("salary: " + salary);
        System.out.println("EXP: " + exp);

    }

    void increment() {
        salary = salary * 1.10;
        System.out.println("Salary inc by 10% ");
    }

}
