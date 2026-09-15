package BIKE;

public class Bike {
    String model;
    String color;
    double price;

    Bike(String m,
            String c,
            double p) {
        model = m;
        color = c;
        price = p;

    }

    Bike() {

    }

    void display() {
        System.out.println(model + " " + color + " " + price + " ");
    }

}
