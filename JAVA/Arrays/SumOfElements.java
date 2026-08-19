public class SumOfElements {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 0, 91, -24, 56, 17, 63 };
        int sum = 0;
        for (int i = 0; i < a.length; i++) {
            sum = sum + a[i];

        }
        System.out.println("SumOfElements: " + sum);
    }

}
