public class SquareOfArray {
    public static void main(String[] args) {
        int[] arr = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        int[] b = squareOfArray(arr);
        for (int i = 0; i < arr.length; i++) {

            System.out.println(b[i]);
        }

    }

    static int[] squareOfArray(int[] arr) {
        int[] b = new int[arr.length];
        for (int i = 0; i < arr.length; i++) {
            b[i] = arr[i] * arr[i];
        }

        return b;
    }

}
