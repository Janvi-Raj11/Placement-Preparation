package Employee;

public class Test {
    public static void main(String[] args) {
        Employees e1 = new Employees();
        Employees e2 = new Employees();

        e1.name = "janvi";
        e1.company = "Google";
        e1.salary = 10000;
        e1.exp = 5.6;

        e2.name = "shabd";
        e2.company = "atlassian";
        e2.salary = 80000;
        e2.exp = 6;

        e1.display();
        System.out.println();
        System.out.println();
        e2.increment();

        e2.display();

    }

}
