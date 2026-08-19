public class FirstHalf {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 0, 91, -24, 56, 17, 63 };
        System.out.print("FirstHalf: ");
        for (int i = 0; i < a.length / 2; i++) {
            System.out.println(a[i]);
        }
    }
}
