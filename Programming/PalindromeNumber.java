public class PalindromeNumber {
    public static void main(String[] args) {
        int n = -121;
        System.out.println(isPalindromeNumber(n) ? "PalindromeNumber" : "Not A PalindromeNumber");
    }

    public static boolean isPalindromeNumber(int n) {
        int org = n;
        int rev = 0;
        while (n > 0) {
            int rem = n % 10;
            rev = rev * 10 + rem;
            n = n / 10;
        }
        return rev==org;

    }
}
