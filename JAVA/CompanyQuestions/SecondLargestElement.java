
class SecondLargestElement {
    public static void main(String[] args) {
        int[] arr = { 50, 10, 20, 30, 40 };
        int first_lar = arr[0];
        int sec_lar = Integer.MIN_VALUE;
        int res = SecondLargest(arr, first_lar, sec_lar);
        System.out.println("SecondLargest : " + res);

    }

    public static int SecondLargest(int[] arr, int first_lar, int sec_lar) {

        for (int i = 1; i < arr.length; i++) {
            if (first_lar < arr[i]) {
                sec_lar = first_lar;
                first_lar = arr[i];
            } else if (sec_lar < arr[i]) {
                sec_lar = arr[i];
            }

        }

        return sec_lar;

    }

}