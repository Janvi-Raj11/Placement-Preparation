import java.util.*;

public class PrimeNum {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Pls Enter the Num: ");
        int num = sc.nextInt();

        boolean isPrime = true;

        for (int i = 2; i * i < num; i++) { //but i * i <= num is more optimal.
            if (num % i == 0) { // I were checking only divisibility by 2.
                isPrime = false;
                break;

            }
        }
        if (isPrime) {
            System.out.println("IS PRIME NUM");
        } else {
            System.out.println("Not Prime");
        }
    }

}
