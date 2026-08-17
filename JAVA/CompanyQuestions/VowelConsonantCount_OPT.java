public class VowelConsonantCount_OPT {

    public static void main(String[] args) {
        String str = "HElloWOrld13644";
        int vowels = 0, Consonants = 0, specialChar = 0;
        ;
        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);
            if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' || ch == 'A' || ch == 'E' || ch == 'I'
                        || ch == 'O' || ch == 'U') {
                    vowels++;
                } else {
                    Consonants++;
                }
            } else {
                specialChar++;
            }
        }
        System.out.println("vowels character: " + vowels);
        System.out.println("Consonants character: " + Consonants);
        System.out.println("special character: " + specialChar);

    }

}
