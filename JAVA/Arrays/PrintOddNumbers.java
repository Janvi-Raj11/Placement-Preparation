public class PrintOddNumbers {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 10, 91, -24, 56, 17, 63, 0, -7, 100 };
        System.out.print("PrintOddNumbers: ");
        for (int i = 0; i < a.length; i++) {
            if (a[i] % 2 != 0) {
                System.out.println(a[i]);
            }
        }
    }
}
