package CompanyQuestions;

import java.util.*;

public class FibonacciSeries {
    public static void main(String[] args) {
        int a = 0;
        int b = 1;

        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the number of Fibonacci terms you want: ");
        int num = sc.nextInt();

        System.out.print(a + ",");
        System.out.print(b + ",");
        /*
         * Mistake:
         * I was printing 'a' and 'b' inside the loop.
         * Since the loop runs multiple times, 'a' and 'b' were printed repeatedly.
         */
        for (int i = 3; i <= num; i++) {
            int c = a + b;
            System.out.print(c + ",");
            a = b;
            b = c;
        }

    }

}
