package ConstructorOverloading;

public class Run {
    public static void main(String[] args) {
        Employee e1 = new Employee("janvi", "GOOGLE");
        Employee e2 = new Employee("shabd", "Amazon", 8000000);
        Employee e3 = new Employee("ved", "Oracle", 9000000, 4);
        Employee e4 = new Employee("khushi", "GOOGLE", 1.2);

        e1.display();
        System.out.println();
        e2.display();
        System.out.println();
        e3.display();
        System.out.println();
        e4.display();

    }

}
