//Find the square: 9 × 9 = 81 ---- Sum the digits of the square: 8 + 1 = 9
public class NeonNumber {
    public static void main(String[] args) {
        int num = -9;  //9

        if (isNeonNumber(num))
            System.out.println("isNeonNumber");
        else
            System.out.println("is not a NeonNumber");
    }

    public static boolean isNeonNumber(int n) {
        int sq = n * n;
        int sum = 0;
        while (sq != 0) {
            sum = sum + sq % 10;
            sq = sq / 10;

        }
        if (sum == n)
            return true;
        else
            return false;

    }
}
