public class SumOfPalindromeElements {
    public static void main(String[] args) {
        int[] a = { 12, 121, 45, 131, 22, 78, 1441 };
        int sum = 0;
        for (int i : a) {
            if (isPalindrome(i))
                sum += i;

        }
        System.out.println(sum);

    }

    public static boolean isPalindrome(int n) {
        int org = n;
        int rev = 0;
        while (n > 0) {
            int rem = n % 10;
            rev = rev * 10 + rem;
            n = n / 10;
        }
        return org == rev;
    }
}
