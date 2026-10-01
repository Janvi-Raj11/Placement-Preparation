import java.util.*;

public class FindLargestElement {
    public static void main(String[] args) {
        int[] a = { 45, 12, 78, 5, 91, 23, 8 };
        // int large = a[0];
        // for (int i = 1; i < a.length; i++) {
        // if (a[i] > large)
        // large = a[i];
        // }
        // System.out.println(large);

        System.out.println(Arrays.stream(a).max().getAsInt());
    }

}
