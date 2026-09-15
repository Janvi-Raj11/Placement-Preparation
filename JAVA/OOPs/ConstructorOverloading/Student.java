package ConstructorOverloading;

public class Student {
    String name;
    int yop;
    String qualification;
    String email;

    Student(String name, int yop, String qualification) {
        this.name = name;
        this.yop = yop;
        this.qualification = qualification;

    }

    Student(String name, int yop, String qualification, String email) {
        this.name = name;
        this.yop = yop;
        this.qualification = qualification;
        this.email = email;

    }

    void display() {
        System.out.println("name: " + name);
        System.out.println("yop: " + yop);
        System.out.println("qualification: " + qualification);
        System.out.println("email: " + email);

    }

}
