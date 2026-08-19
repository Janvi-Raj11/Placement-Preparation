public class TransferArrayElements {
    public static void main(String[] args) {
        int[] a = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        int[] arr = new int[a.length];
        for (int i = 0; i < a.length; i++) {
            arr[i] = a[i];
        }
        System.out.print("TransferArrayElements: ");
        for (int i = 0; i < a.length; i++) {
            System.out.println(arr[i]);

        }
    }
}
