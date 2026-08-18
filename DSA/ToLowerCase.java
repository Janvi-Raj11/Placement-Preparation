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
