import java.util.Arrays;

public class FindSmallestElement {
    public static void main(String[] args) {
        int[] a = { 45, 12, 78, 5, 91, 23, 8 };
        System.out.println(Arrays.stream(a).min().getAsInt());
    }

}
