package Watch;

public class Watch {
    String brand;
    String color;
    double price;

    // The compiler gets confused between the constructor parameter and the instance
    // variable (object variable) when they have the same name.
    // Watch(String brand, String color,double price){
    // brand=brand;
    // color=color;
    // price=price;

    // }

    Watch(String b, String c, double p) {
        brand = b;
        color = c;
        price = p;

    }

    Watch() {

    }

    void display() {
        System.out.println("Brand: " + brand);
        System.out.println("Color: " + color);
        System.out.println("Price: " + price);

    }

}
