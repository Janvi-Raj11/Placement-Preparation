public class SumOfOddElements {
    public static void main(String[] args) {
        int[] a = { 10, 11, 15, 17, 22, 33, 44, 7, 8 };
        int sum = 0;
        for (int ele : a) {
            if (ele % 2 != 0) {
                sum += ele;

            }

        }
        System.out.println(sum);

    }

}
