//WAP to count the number of digits in a given number.
public class CountOfDigits {
    public static void main(String[] args) {
        int digits =0;  //EDGE CASE
        int res = CountOfDigits(digits);
        System.out.println("CountOfDigits is: " + res);

    }

    public static int CountOfDigits(int digits) {
        int count = 0;
        while (digits > 0) {
            digits = digits / 10;
            count ++;

        }
        return count;

    }

}

    

