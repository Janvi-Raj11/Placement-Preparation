import java.util.Arrays;

public class PrintEvenElements {
    public static void main(String[] args) {
        int[] a = { 10, 11, 15, 17, 22, 33, 44, 7, 8 };
        Arrays.stream(a).filter(ele -> ele % 2 == 0).forEach(ele -> System.out.print(ele + " "));

    }

}
