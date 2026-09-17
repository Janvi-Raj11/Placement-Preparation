public class SumOfEvenDigits {
    public static void main(String[] args) {
        int num = -2147483648;
        System.out.println(SumOfEvenDigits(num));
    }

    public static int SumOfEvenDigits(int n) {
        int sum = 0;
        while (n != 0) {
            int rem = n % 10;
            if (rem % 2 == 0)
                sum = sum + rem;
            n = n / 10;

        }
        return sum;
    }
}
