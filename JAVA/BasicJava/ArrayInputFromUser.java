import java.util.*;

public class ArrayInputFromUser {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("PLS ENTER THE SIZE OF ARRAY YOU WANT: ");
        int sizeOFArray = sc.nextInt();
        int[] arr = new int[sizeOFArray];
        System.out.print("PLS ENTER ARRAY ELE: ");
        for (int i = 0; i < arr.length; i++) {

            arr[i] = sc.nextInt();
        }

        displayArray(arr);

    }

    static void displayArray(int[] arr) {
        System.out.println("Display all Array ele: ");
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }

    }

}
