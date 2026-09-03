//No. In Java, you cannot write main() without a class.
public class Student {
    // Instance variables

    String name;
    int id;
    int age;
    String branch;
    int phy;
    int chem;
    int bio;
    int math;
    // Instance method

    void display() {
        System.out.println("NAME: " + name);
        System.out.println("AGE: " + age);
        System.out.println("ID: " + id);
        System.out.println("BRANCH: " + branch);
        System.out.println("PERCENTAGE: " + percentage());
    }
    // Instance method

    double percentage() {
        double percentage = (phy + chem + bio + math) / 400.0 * 100;
        return percentage;
    }
    // Entry point

    public static void main(String[] args) {

        Student s1 = new Student();

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

        Student s3 = new Student();

        s1.display();
        System.out.println();
        s2.display();
        System.out.println();
        s3.display();
    }
}
