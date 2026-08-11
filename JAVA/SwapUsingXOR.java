import java.util.*;

public class SwapUsingXOR {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("PLS ENTER NUM21: ");
        int num1 = sc.nextInt();
        System.out.print("PLS ENTER NUM2: ");
        int num2 = sc.nextInt();

        num1 = num1 ^ num2;
        num2 = num1 ^ num2;
        num1 = num1 ^ num2;

        System.out.println("num1: " + num1);
        System.out.println("num2: " + num2);

    }

}
