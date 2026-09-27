public class LeftAlignedHalfPyramid_OddUpperEvenLower {
    public static void main(String[] args) {
        int n = 5;
        for (int i = 1; i <= 5; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(i % 2 != 0 ? (char) (j + 64) + "  " : (char) (j + 96) + "  ");
            }
            System.out.println();
        }
    }
}
