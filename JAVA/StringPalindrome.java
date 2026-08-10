import java.util.*;

public class StringPalindrome {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Pls Enter str i/p: ");
        String str = sc.nextLine();
        // String rev = ""; //MISTAKE
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
