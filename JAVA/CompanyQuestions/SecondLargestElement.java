
class SecondLargestElement {
    public static void main(String[] args) {
        int[] arr = { 10, 50, 20, 50, 30 };
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
            } else if (sec_lar < arr[i] && arr[i] != first_lar) {
                sec_lar = arr[i];
            }

        }

        return sec_lar;

    }

}

/*Mistake:
Forgot to check arr[i] != first_lar, which can make the second largest
equal to the largest when duplicate maximum values are present.

Lesson:
For second-largest DISTINCT element, always exclude the current largest
element from becoming second largest.*/