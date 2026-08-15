import java.util.*;
class EvenOrOdd{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.print("PLS ENTER NUM: ");
        int num=sc.nextInt();

        if(num%2==0){
            System.out.println("EVEN");
        }else{
            System.out.println("ODD");
        }

    }
}