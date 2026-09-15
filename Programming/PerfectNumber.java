//Define a method to check whether the given number is a perfect number or not.
//A number is called a perfect number when the sum of its proper factors (excluding the number itself) is equal to the number.
public class PerfectNumber {
    public static void main(String[] args) {
        int n = 20;
        int res = isPerfectNumber(n);
        if (res == n) {
            System.out.println("isPerfectNumber");
        } else
            System.out.println("not a PerfectNumber ");

    }

    public static int isPerfectNumber(int n) {
        int sum = 0;
        for (int i = 1; i <= n / 2; i++) {
            if (n % i == 0) {
                sum = sum + i;
            }

        }
        return sum;
    }
}
