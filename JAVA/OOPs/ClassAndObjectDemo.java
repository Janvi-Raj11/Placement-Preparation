public class ClassAndObjectDemo {
    // One class can create many objects,
    // Student is a user-defined data type (Blueprint/Class).
    // It is used to create Student objects.
    // Class = Blueprint → Object = Real thing created from that blueprint

    public static class Student {

        // State / Attributes / Data Members / Properties (Instance Variables)

        String name;
        int id;
        int age;
        String branch;
        int phy;
        int chem;
        int bio;
        int math;

        // Behavior / Method / Function

        void display() {
            System.out.println("NAME: " + name);
            System.out.println("AGE: " + age);
            System.out.println("ID: " + id);
            System.out.println("BRANCH: " + branch);
            System.out.println("PERCENTAGE: " + percentage());
        }

        double percentage() {
            return (phy + chem + bio + math) / 400.0 * 100;
        }
    }

    // Program execution starts from the main() method.

    public static void main(String[] args) {

        // Object Creation--an object is created based on a class. The class defines the
        // structure and behavior, and the new keyword creates an object of that class
        // in Heap memory.
        // Student -> User-defined data type.
        // s1 -> Reference variable (stores the object's reference/address).
        // new -> Creates a new object in Heap Memory.
        // This statement declares the reference variable and creates the object.

        Student s1 = new Student();

        // Object Initialization
        // Assigning values to the object's properties.

        s1.name = "Janvi";
        s1.id = 2253034;
        s1.age = 21;
        s1.branch = "AEIE";
        s1.phy = 60;
        s1.bio = 75;
        s1.math = 95;
        s1.chem = 85;

        Student s2 = new Student();

        s2.name = "Simran";
        s2.id = 2253033;
        s2.age = 24;
        s2.branch = "AEIE";
        s2.phy = 70;
        s2.bio = 75;
        s2.math = 85;
        s2.chem = 85;

        Student s3 = new Student(); // Declaration + object creation. The object's instance variables get default
                                    // values (0, null, etc.).

        // Method Call
        // Calling the display() method using the object.
        s1.display();
        System.out.println();
        s2.display();
        System.out.println();
        s3.display();
    }
}