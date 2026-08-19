public class OddIndexTwoDigitEvenMultipleOfFour {
    public static void main(String[] args) {
        int[] a = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        System.out.print("OddIndexTwoDigitEvenMultipleOfFour: ");
        for (int i = 0; i < a.length; i++) {
            if (i % 2 != 0 && (a[i] >= 10 && a[i] <= 99) && a[i] % 2 == 0 && a[i] % 4 == 0) {
                System.out.println(a[i]);
            }
        }
    }

}
