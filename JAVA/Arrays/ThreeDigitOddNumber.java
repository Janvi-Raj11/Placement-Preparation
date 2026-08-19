public class ThreeDigitOddNumber {
    public static void main(String[] args) {
        int[] a = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        System.out.print("ThreeDigitOddNumber: ");
        for (int i = 0; i < a.length; i++) {
            if (a[i] % 2 != 0 && (a[i] >= 100 && a[i] <= 999)) {
                System.out.println(a[i]);
            }
        }
    }
}
