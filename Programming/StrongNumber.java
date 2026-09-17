public class StrongNumber {
    public static void main(String[] args) {
        int n =40585;
        System.out.println(StrongNumber(n) ? "StrongNumber" : "NOT A StrongNumber");
    }

    public static boolean StrongNumber(int n) {
        int org = n;
        int sum = 0;
        while (n != 0) {
            int fact = 1;
            int rem = n % 10;
            for (int i = 1; i <= rem; i++) {
                fact = fact * i;
            }
            sum = sum + fact;
            n = n / 10;
        }
        return sum == org;
    }

}
