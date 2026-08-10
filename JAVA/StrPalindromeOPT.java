import java.util.*;

class StringPalindromeOPT {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Pls Enter str i/p: ");
        String str = sc.nextLine();
        int start = 0;
        int end = str.length() - 1;

        boolean isPalindrome = true; // where and how to display the final result to the user.
        while (start < end) {
            if (str.charAt(start) != str.charAt(end)) { // Compare char "=="
                isPalindrome = false;
                break;

            }
            start++;
            end--;

        }
        if (isPalindrome) {
            System.out.println("IS PALINDROME");
        } else {
            System.out.println("IS NOT PALINDROME");
        }

    }

}
