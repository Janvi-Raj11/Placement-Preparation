public class PrintReverse {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 0, 91, -24, 56, 17, 63 };
        System.out.print("PrintReverse: ");
        for (int i = a.length - 1; i >= 0; i--) {
            System.out.println(a[i]);

        }
    }
}
