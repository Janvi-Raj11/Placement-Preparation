import java.util.*;

public class ArraySum {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] arr = new int[6];
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
            System.out.print("Please enter array element: ");
            arr[i] = sc.nextInt();
        }
        for (int i = 0; i < arr.length; i++) {
            sum += arr[i];

        }
        System.out.println("SumOfArrayElements: " + sum);

    }

}
