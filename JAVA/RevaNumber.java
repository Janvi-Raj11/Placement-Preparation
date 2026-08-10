//But normally, for a number, we don't call this the classic two-pointer technique. We usually extract digits using % 10 and / 10.
import  java.util.*;
public class RevaNumber {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.print("Pls Enter Num: ");
        int num=sc.nextInt();   
        int rev=0;
        while(num>0){
            int rem=num%10;
            rev=rev*10+rem;
            num=num/10;

        }    
        System.out.println("Reverse: "+rev);
    }
    
}
