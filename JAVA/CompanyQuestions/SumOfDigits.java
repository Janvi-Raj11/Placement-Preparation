import java.util.*;

class SumOfDigits {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("PLS ENTER DIGITS: ");
        int digits = sc.nextInt();
        int sum = 0;

        while (digits > 0) {
            int rem = digits % 10;
            sum += rem;
            digits /= 10;

        }
        System.out.println("SumOfDigits: " + sum);

    }
}
// TC: O(log₁₀ n) — number of digits in n