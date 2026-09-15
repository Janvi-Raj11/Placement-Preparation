package ConstructorOverloading;

public class Employee {
    String name;
    String company;
    int salary;
    double experience;

    Employee(String name, String company) {
        this.name = name;
        this.company = company;
    }

    Employee(String name, String company, int salary) {
        this.name = name;
        this.company = company;
        this.salary = salary;

    }

    Employee(String name, String company, double experience) {
        this.name = name;
        this.company = company;
        this.experience = experience;

    }

    Employee(String name, String company, int salary, double experience) {
        this.name = name;
        this.company = company;
        this.salary = salary;
        this.experience = experience;

    }

    void display() {
        System.out.println("name: " + name);
        System.out.println("company: " + company);
        System.out.println("Salary: " + salary);
        System.out.println("EXPERIENCE: " + experience);
    }

}
