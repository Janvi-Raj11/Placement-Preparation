public class PowerOfNumber {
    public static void main(String[] args) {
        int n = 3;
        int p = 3;
        System.out.println(PowerOfNumber(n, p));

    }

    public static int PowerOfNumber(int n, int p) {
        int power = 1;
        for (int i = 1; i <= p; i++) {

            power = power * n;
        }
        return power;

    }
}
