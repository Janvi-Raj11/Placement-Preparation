package ConstructorOverloading;

public class Test {
    public static void main(String[] args) {
        Student s1 = new Student("janvi", 2026, "B.Tech");
        Student s2 = new Student("simran", 2025, "MCA");
        Student s3 = new Student("SHIVANGI", 2024, "BCA", "shivangi@gmail.com");

        s1.display();
        System.out.println();
        s2.display();
        System.out.println();
        s3.display();
        System.out.println();

    }
}
