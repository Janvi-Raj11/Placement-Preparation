import java.util.*;

public class StudentMarksCalculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("PLS ENTER YOUR NAME: ");
        String name = sc.nextLine();
        System.out.print("PLS ENTER YOUR QUALIFICATION Masters: ");
        char masters = sc.next().toUpperCase().charAt(0);
        System.out.print("PLS ENTER YOUR YOP: ");
        int yop = sc.nextInt();
        System.out.print("pls enter your phyMarkes: ");
        int phy = sc.nextInt();
        System.out.print("pls enter your chemMarkes: ");
        int chem = sc.nextInt();
        System.out.print("pls enter your mathMarkes: ");
        int math = sc.nextInt();
        System.out.print("pls enter your optionalMarkes: ");
        int optional = sc.nextInt();

        System.out.println();

        Display(name, masters, yop, phy, chem, math, optional);

    }

    public static void Display(String name, char masters, int yop, int phy, int chem, int math, int optional) {
        System.out.println("NAME: " + name);
        System.out.println("Masters: " + masters);
        System.out.println("YOP: " + yop);
        System.out.println("TotalMarkes: " + totalMarkes(phy, chem, math, optional));
        System.out.println("Percentage: " + percentage(phy, chem, math, optional));

    }

    public static int totalMarkes(int phy, int chem, int math, int optional) {
        return math + phy + chem + optional;
    }

    public static double percentage(int phy, int chem, int math, int optional) {
        int totalMarkes = totalMarkes(phy, chem, math, optional);
        double percentage = (totalMarkes / 400.0) * 100;
        return percentage;

    }

}
