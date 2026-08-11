//Used linear traversal (O(n)) because the array is unsorted; sorting + binary search would take O(n log n), so it is unnecessary for finding the largest element.
import java.util.*;

public class LargestElement {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] arr = new int[6];
        int max = Integer.MIN_VALUE;

        System.out.print("PLS ENETR ARRAY ELEMENT: ");

        for (int i = 0; i < arr.length; i++) {
            arr[i] = sc.nextInt();
        }

        for (int i = 0; i < arr.length; i++) {
            if (max < arr[i]) {
                max = arr[i];
            }

        }

        System.out.println("Largest Ele of Array is: " + max);
    }
}
