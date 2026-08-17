
public class VowelConsonantCount {
    public static void main(String[] args) {
        String str = "HelloWorld13644";
        int vowels = 0, Consonants = 0, specialChar = 0;
        ;
        String lowerText = str.toLowerCase();
        for (int i = 0; i < lowerText.length(); i++) {
            char ch = lowerText.charAt(i);
            if (ch >= 'a' && ch <= 'z') {
                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
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
// Mistake: I treated every non-vowel character as a consonant.
// Fix: First check whether the character is an alphabet.
// Non-alphabet characters are counted separately.
