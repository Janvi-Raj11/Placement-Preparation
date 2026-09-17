public class SumOfPrimeDigits {
    public static void main(String[] args) {
        int num = 12345789;
        System.out.println(SumOfPrimeDigits(num));

    }

    public static int SumOfPrimeDigits(int n) {
        int sum = 0;
        while (n != 0) {
            int rem = n % 10;
            if(rem==2 || rem==3|| rem==5||rem==7)
            sum = sum + rem;
            n = n / 10;

        }
        return sum;

    }

}
