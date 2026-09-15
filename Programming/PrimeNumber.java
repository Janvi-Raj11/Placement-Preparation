//WAP to define a method to check whether the given number is prime or not.
public class PrimeNumber {
    public static void main(String[] args) {
        int num = 1;
        if (isPrimeNumber(num)) {
            System.out.println("isPrimeNumber");
        } else
            System.out.println("Not a PrimeNumber");

    }

    public static boolean isPrimeNumber(int n) {

        // for (int i = 2; i < n; i++) {
        //     if (n % i == 0) {
        //         return false;

        //     }
        // }

        if(n<=1) return false;
        
        for (int i = 2; i <= n/2; i++) {
            if (n % i == 0) {
                return false;

            }
        }
        return true;
    }
}
