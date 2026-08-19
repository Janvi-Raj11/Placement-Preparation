public class TransferOddNumbers {
    public static void main(String[] args) {
        int[] a = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        int count = 0;
        int idx = 0;

        for (int i = 0; i < a.length; i++) {
            if (a[i] % 2 != 0) {
                count++;
            }

        }
        int[] b = new int[count];

        for (int i = 0; i < a.length; i++) {
            if (a[i] % 2 != 0) {
                b[idx++] = a[i];
            }

        }
        System.out.print("TransferOddNumbers: ");

        for (int i = 0; i < b.length; i++) {
            System.out.println(b[i]);

        }

    }
}
