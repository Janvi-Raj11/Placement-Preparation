// Approach: StringBuilder
// String is immutable, so StringBuilder is used to build the reverse.
// TC: O(n)
// SC: O(n)
//"String is immutable, so repeatedly concatenating characters with String can create multiple String objects. StringBuilder is mutable and allows us to build the reversed string efficiently."
import java.util.*;

public class StringPalindromeSB {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Pls Enter str i/p: ");
        String str = sc.nextLine();
        // String rev = ""; // Mistake: rev remains empty; sb contains the reversed string
        StringBuilder sb = new StringBuilder();
        for (int i = str.length() - 1; i >= 0; i--) {
            sb.append(str.charAt(i));

        }

        System.out.println(sb.toString());
        if (str.equals(sb.toString())) {
            System.out.println("IS Palindrome");
        } else {
            System.out.println("IS NOT PALINDROME");

        }
    }

}
