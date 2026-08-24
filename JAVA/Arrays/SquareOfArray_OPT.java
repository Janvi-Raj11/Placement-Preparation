public class SquareOfArray_OPT {
    public static void main(String[] args) {
        int[] arr = {
                7, 12, 48, 135, 24,
                101, 16, 99, 256, 33,
                72, 408, 5, 84, 17,
                64, 321, 40, 8, 111
        };
        squareOfArray(arr);
        for (int i = 0; i < arr.length; i++) {

            System.out.println(arr[i]);
        }

    }

    static void squareOfArray(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            arr[i] = arr[i] * arr[i];
        }

    }

}
