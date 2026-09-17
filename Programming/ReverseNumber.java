public class ReverseNumber {
    public static void main(String[] args) {
        int  n=-123;
        System.out.println(reverseNumber(n));
    }
    public static int reverseNumber(int n) {
        int rev=0;
        while(n!=0){
            int rem=n%10;
            rev=rev*10 + rem;
            n=n/10;
        }
        return rev;
        
    }
}
