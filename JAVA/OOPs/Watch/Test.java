package Watch;

public class Test {
    public static void main(String[] args) {
        Watch w1 = new Watch("Rolex", "gold", 200000000);
        Watch w2 = new Watch();

        w1.display();
        System.out.println();
        System.out.println();
        w2.display();

    }

}
