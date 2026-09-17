public class CountOddDigits {
    public static void main(String[] args) {
        int n = 12345;
        System.out.println(CountOddDigits(n));
    }

    public static int CountOddDigits(int n) {
        int count = 0;
        while (n != 0) {
            int rem = n % 10;
            if (rem % 2 != 0) {
                count ++;
            }
            n=n/10;
        }
        return count;
    }

}
