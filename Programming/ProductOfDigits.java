//WAP to find the product of digits of a given number.
public class ProductOfDigits {
    public static void main(String[] args) {
        int digits = 1234;
        int res = ProductOfDigits(digits);
        System.out.println("ProductOfDigits is: " + res);

    }

    public static int ProductOfDigits(int digits) {
        int product= 1;
        while (digits > 0) {
            int rem = digits % 10;
            digits = digits / 10;
            if(rem==0) continue;
            product = product * rem;

        }
        return product;

    }

}
