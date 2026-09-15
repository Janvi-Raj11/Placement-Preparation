public class BiggestNumber_OPT {
    public static void main(String[] args) {
        int x = 10;
        int y = 20;
        int z = 70;

        int big = x;
        if (y > big) {
            big = y;
        }
        
        if (z > big) {
            big = z;
        }

        System.out.println(big + " is the  Biggest no.");

    }
}
