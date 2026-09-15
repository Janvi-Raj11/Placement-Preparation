public class StudentClass {
    // One class can create many objects,
    // Student is a user-defined data type (Blueprint/Class).
    // It is used to create Student objects.
    // Class = Blueprint → Object = Real thing created from that blueprint
    // State / Attributes / Data Members / Properties (Instance Variables) /instance
    // variables

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
        double percentage = (phy + chem + bio + math) / 400.0 * 100;
        return percentage;
    }

}
