//WAP to define a method to find the factorial of a given number.
public class FactorialOfNumber {
    public static void main(String[] args) {
        int num = 5;
        int f = FactorialOfNumber(num);
        System.out.println( num +" FactorialOfNumber: " +f);

    }

    public static int FactorialOfNumber(int n) {
        int fact = 1;
        for (int i = 1; i <= n; i++) {
            fact = fact * i;
        }
        return fact;
    }
}
