package BIKE;

public class Test {
    public static void main(String[] args) {
        Bike B1 = new Bike();
        Bike B2 = new Bike("Royal Enfield Hunter 350", "Black", 138000);

        B1.display();
        System.out.println();
        B2.display();

    }

}
