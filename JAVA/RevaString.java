import java.util.*;
class RevaString{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        String str=sc.nextLine();
        StringBuilder sb=new StringBuilder(str);
        int start=0;
        int end=str.length()-1;
        while(start<end){ //forget
            char ch=sb.charAt(start);
            sb.setCharAt(start,sb.charAt(end)); // function rem
            sb.setCharAt(end, ch);
            start++;
            end--;

        }

        System.out.println(sb.toString());
    }
}