public class FullPyramid_OddLowercaseEvenUppercase {
    public static void main(String[] args) {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n - i; j++) {
                System.out.print("   ");
            }
            for (int j = 1; j <= 2 * i - 1; j++) {
                System.out.printf("%3c", i % 2 != 0 ? (char) (j + 96) : (char) (j + 64));
            }
            System.out.println();

        }
    }
}
