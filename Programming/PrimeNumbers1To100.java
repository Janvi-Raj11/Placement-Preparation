public class PrimeNumbers1To100 {
    public static void main(String[] args) {
        for (int i = 1; i <= 100; i++) {
            if (isPrimeNum(i))
                System.out.println(i);
        }

    }

    public static boolean isPrimeNum(int n) {
        if (n <= 1)
            return false;
        for (int i = 2; i <= n / 2; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}
