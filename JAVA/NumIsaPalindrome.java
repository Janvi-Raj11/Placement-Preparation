import java.util.*;

public class NumIsaPalindrome {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Pls enter  Num: ");
        int num = sc.nextInt();

        int temp = num;
        int rev = 0;
        while (temp > 0) {
            int rem = temp % 10;
            rev =rev* 10 + rem;   //MY mistake: rev *= 10 + rem means rev = rev * (10 + rem), which is not how we construct the reversed number.
            temp /= 10;
        }
        if (num == rev) {
            System.out.println("IsPalindrome");
        } else {
            System.out.println("Is Not Palindrome");
        }
    }
}
