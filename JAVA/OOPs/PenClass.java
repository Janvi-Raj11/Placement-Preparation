public class PenClass {
    String brand = "pentonic";  //(directly initialized)
    String color;
    int price = 10;// (directly initialized)

    void display() {
        System.out.println("NAME: " + brand);
        System.out.println("COLOR: " + color);
        System.out.println("PRICE: " + price);
    }
}
// Can one file contain 2 class..?"

// Yes. One Java file can contain 2 or more classes. But there is one important
// rule.

// Rule
// Only one public class is allowed per .java file.
// The file name must match the public class name.

class PenObj {
    public static void main(String[] args) {
        PenClass p1 = new PenClass();
        p1.color = "black"; //Instance variable/property initialization using the object reference
        PenClass p2 = new PenClass();
        p2.color = "red";
        PenClass p3 = new PenClass();
        p3.color = "blue";
        p1.display();
        System.out.println();
        p2.display();
        System.out.println();
        p3.display();

    }
}