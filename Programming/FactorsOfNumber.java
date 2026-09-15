//Write a Java program to print all factors (divisors) of a given number.
public class FactorsOfNumber {
    public static void main(String[] args) {
        int num = 35;

        // for(int i=1;i<=35;i++){
        // if(num%i==0){
        // System.out.println("FactorsOfNumber: " +i);
        // }
        // }

        for (int i = 1; i <= num / 2; i++) {
            if (num % i == 0) {
                System.out.println("FactorsOfNumber: " + i);
            }
        }
        System.out.println("FactorsOfNumber: " + num);

    }
}
