public class SecondHalf {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 0, 91, -24, 56, 17, 63 };
        System.out.print("SecondHalf: ");
        for (int i = a.length/ 2; i < a.length; i++) {
            System.out.println(a[i]);
        }
    }
}
