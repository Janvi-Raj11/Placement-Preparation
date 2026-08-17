import java.util.*;

public class MinMaxDigit {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Pls Enter Number: ");
        int num = sc.nextInt();
        int max = Integer.MIN_VALUE;
        int min = Integer.MAX_VALUE;

        while (num > 0) {
            int rem = num % 10;
            if (max < rem) {
                max = rem;
            } else if (min > rem) {
                min = rem;
            }
            num /= 10;
        }

        System.out.println("Largest digit: " + max);
        System.out.println("Smallest digit: " + min);

    }

}
