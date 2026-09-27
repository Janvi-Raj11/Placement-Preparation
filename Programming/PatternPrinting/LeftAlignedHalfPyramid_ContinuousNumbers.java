public class LeftAlignedHalfPyramid_ContinuousNumbers {
    public static void main(String[] args) {
        int n = 5, k = 1;
        for (int i = 1; i <= 5; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.printf("%3d", k);
                k++;
            }
            System.out.println();
        }
    }
}
