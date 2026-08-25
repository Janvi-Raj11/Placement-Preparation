
class FindDuplicateCharacters {
    public static void main(String[] args) {
        java.util.Scanner sc = new java.util.Scanner(System.in);
        System.out.println("PLS ENTER STRING: ");
        String str = sc.nextLine(); // programming
        char ch = findDuplicateCharacters(str);
        System.out.println("DuplicateCharacters: " + ch);

    }

    public static char findDuplicateCharacters(String str) {
        for (int i = 0; i < str.length(); i++) {
            for (int j = i + 1; j < str.length(); j++) {
                char ch1 = str.charAt(i);
                char ch2 = str.charAt(j);
                if (ch1 == ch2) {
                    return ch1;
                }
            }
        }
        return '\0';
    }
}