public class SquarePattern_AlternatingBinaryColumns {
    public static void main(String[] args) {
        int n = 5;
        for (int i = 1; i <= 5; i++) {
            for (int j = 1; j <= n; j++) {
                System.out.print(j % 2 + " ");
            }
            System.out.println();
        }
    }
}
