public class ExceptFirstThreeLastThree {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 0, 91, -24, 56, 17, 63 };
        System.out.print("ExceptFirstThreeLastThree: ");
        for (int i = 1; i < a.length - 3; i++) {
            System.out.println(a[i]);
        }
    }
}
