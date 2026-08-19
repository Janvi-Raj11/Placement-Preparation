public class CountDigits {
    public static void main(String[] args) {
        int[] a = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        int oneDigit = 0;
        int twoDigit = 0;
        int threeDigit = 0;
        for (int i = 0; i < a.length; i++) {
            if (a[i] >= 0 && a[i] <= 9) {
                oneDigit++;
            } else if (a[i] >= 10 && a[i] <= 99) {
                twoDigit++;
            } else if (a[i] >= 100 && a[i] <= 999) {
                threeDigit++;
            }

        }
        System.out.println("oneDigit: " + oneDigit);
        System.out.println("twoDigit: " + twoDigit);
        System.out.println("threeDigit: " + threeDigit);
    }
}
