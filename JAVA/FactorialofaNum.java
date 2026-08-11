import java.util.*;

public class FactorialofaNum {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Pls Enter Num: ");
        int num = sc.nextInt();
        int fact = 1;
        for (int i = 2; i <= num; i++) {
            fact *= i;
        }
        System.out.println("Factorial of this Num is: " + fact);
    }

}
