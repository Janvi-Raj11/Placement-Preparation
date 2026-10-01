import java.util.*;

public class SumOfEvenElements {

    public static void main(String[] args) {
        int sum = 0;
        int[] a = { 10, 11, 15, 17, 22, 33, 44, 7, 8 };
        // for(int i=0;i<a.length;i++){
        // if(a[i]%2==0)
        // sum +=a[i];
        // }
        // System.out.println(sum);

        System.out.println(Arrays.stream(a).filter(ele -> ele % 2 == 0).sum());

    }
}