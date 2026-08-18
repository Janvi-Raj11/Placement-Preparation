import java.util.*;

class ArmstrongNumber {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("PLS  ENTER  NUM: ");
        int num = sc.nextInt();
        int originalNum = num;
        int count = 0;
        double ArmstrongNumber = 0;

        while (num > 0) {
            num /= 10;
            count++;
        }
        // After above loop, num becomes 0. So your second loop will never execute.:Restore num before the second loop

        num = originalNum;
        while (num > 0) {
            int rem = num % 10;
            ArmstrongNumber = ArmstrongNumber + Math.pow(rem, count);
            num /= 10;

        }
        System.out.println("ArmstrongNumber is: " + ArmstrongNumber);

    }
}