public class ProductOfElements {
    public static void main(String[] args) {
        int[] a = { 45, -12, 78, 33, 10, 91, -24, 56, 17, 63 };
        long product = 1;
        for (int i = 0; i < a.length; i++) {
            product = product * a[i];
        }
        System.out.println("ProductOfElements: " + product);
    }
}
