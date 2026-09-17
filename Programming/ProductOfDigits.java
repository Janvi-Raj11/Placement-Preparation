//WAP to find the product of digits of a given number.
public class ProductOfDigits {
    public static void main(String[] args) {
        int digits = - 12345;
        int res = ProductOfDigits(digits);
        System.out.println("ProductOfDigits is: " + res);

    }

    public static int ProductOfDigits(int digits) {
        int product = 1;
        while (digits != 0) { // while (digits != 0) --- THIS CONDITION ONLY WORK FOR POSITIVE NUM

            int rem = digits % 10;
            digits = digits / 10;
            product = product * rem;

        }
        return product;

    }

}
