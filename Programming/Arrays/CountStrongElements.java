public class CountStrongElements {
    public static void main(String[] args) {
        int[] a = { 10, 145, 123, 2, 40585, 7 };
        int count = 0;
        for (int i : a) {
            if (isStrongNumbers(i))
                count++;

        }
        System.out.println(count);

    }

    public static boolean isStrongNumbers(int n) {
        int org = n;
        int sum = 0;
        while (n > 0) {
            int rem = n % 10;
            sum += factorial(rem);
            n = n / 10;

        }
        System.out.println(sum==org);
        return org == sum;

    }

    public static int factorial(int n) {
        int fact = 1;
        for (int i = 1; i <= n; i++) {
            fact = fact * i;

        }
        return fact;
    }

}
