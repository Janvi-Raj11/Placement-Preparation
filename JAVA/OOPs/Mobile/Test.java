package Mobile;

public class Test {
    public static void main(String[] args) {
        Mobile m1=new Mobile();
        Mobile m2=new Mobile();
        Mobile m3=new Mobile();


        m1.brand="oppo";
        m1.model="oppoA92020";
        m1.color="silver";
        m1.price=25000;
        m1.memory=256;

        m2.brand="iPhone";
        m2.model="iPhone 18 Pro Max";
        m2.color="Jet Black";
        m2.price=164900;
        m2.memory=512;

        m1.display();
        System.out.println();
        System.out.println();
        m2.display();
        System.out.println();
        System.out.println();
        m3.display();
    }

}
