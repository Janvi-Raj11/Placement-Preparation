//WAP to find the sum of digits of a given number.
public class SumOfDigits {
    public static void main(String[] args) {
        int digits =99999;
        int res = SumOfDigits(digits);
        System.out.println("SumOfDigits is: " + res);

    }

    public static int SumOfDigits(int digits) {
        int sum = 0;
        while (digits > 0) {
            int rem = digits % 10;
            sum = sum + rem;
            digits = digits / 10;

        }
        return sum;

    }

}
