public class FindPrimeElements {
    public static void main(String[] args) {
        int[] a = { 10, 11, 15, 17, 22, 33, 44, 121, 7, 8 };
        for (int ele : a) {
            if (isPrime(ele))
                System.out.println(ele);

        }

    }

    public static boolean isPrime(int n) {
        if (n <= 1)
            return false;
        for (int i = 2; i <= n / 2; i++) {
            if (n % i == 0)
                return false;
        }
        return true;

    }
}
