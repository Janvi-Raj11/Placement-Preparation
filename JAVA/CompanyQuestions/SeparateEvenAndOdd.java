public class SeparateEvenAndOdd {
    public static void main(String[] args) {
        int[] arr = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        int[] a = SeparateEvenAndOdd(arr);
        for (int i = 0; i < arr.length; i++) {
            System.out.println(a[i]);
        }

    }

    static int[] SeparateEvenAndOdd(int[] arr) {
        int[] b = new int[arr.length];
        int idx = 0;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] % 2 == 0) {
                b[idx++] = arr[i];
            }
        }
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] % 2 != 0) {
                b[idx++] = arr[i];

            }
        }
        return b;

    }
}
