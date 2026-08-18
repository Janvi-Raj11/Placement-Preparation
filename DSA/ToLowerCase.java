/*Problem: To Lower Case (LeetCode 709)

Approach 1: StringBuilder
TC: O(n)
SC: O(n)

Approach 2: char[]
TC: O(n)
SC: O(n)

Preferred: char[] → simple and direct modification.
3. Is there an O(1) space approach?
Not really if the method must return a new String, because Java String is immutable and the result itself requires O(n) storage.*/

public class ToLowerCase {
    public static void main(String[] args) {
        String s = "HeLlO";
        String res = toLowerCase(s);
        System.out.println("ToLowerCase : " + res);

    }

    public static String toLowerCase(String s) {
        StringBuilder sb = new StringBuilder(s);
        for (int i = 0; i < sb.length(); i++) {
            char ch = sb.charAt(i);
            if (ch >= 'A' && ch <= 'Z') {
                sb.setCharAt(i, (char) (32 + ch));
            }
        }
        return sb.toString();
    }

}
// Mistake: 32 + ch becomes int
// Fix: cast the result to char
// sb.setCharAt(i, (char)(32 + ch));
