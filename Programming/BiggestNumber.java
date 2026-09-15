//Write a Java program to find the biggest number among three numbers using only if statements.
public class BiggestNumber {
    public static void main(String[] args) {
        int x = 10;
        int y = 20;
        int z = 70;

        if (x > y && x > z) {
            System.out.println(x + " is the BiggestNo");
        }
        if (y > x && y > z) {
            System.out.println(y + " is the BiggestNo");
        }
        if (z > x && z > y)
            System.out.println(z + " is the BiggestNo");

    }

}
