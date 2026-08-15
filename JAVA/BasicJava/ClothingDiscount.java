/*Question

A customer buys 4 shirts and 4 pants.

Shirt prices: ₹599, ₹699, ₹799, ₹999
Pant prices: ₹799, ₹899, ₹999, ₹599

The customer gets a 20% discount on the total shirt amount.
The customer gets a 30% discount on the total pant amount.
Calculate the final amount to be paid after applying both discounts.
Display:
Total shirt amount after discount
Total pant amount after discount
Final total amount

Write a Java program to solve this problem.*/


public class ClothingDiscount{
    public static void main(String[] args) {
        int s1 = 599, s2 = 699, s3 = 799, s4 = 999, p1 = 799, p2 = 899, p3 = 999, p4 = 599;

        double shirtTotal = s1 + s2 + s3 + s4;
        double pantTotal = p1 + p2 + p3 + p4;

        double S_Dis = shirtTotal - shirtTotal * (20 / 100.0);
        System.out.println("Shirt amount after 20% discount: " + S_Dis);
        double P_Dis = pantTotal - pantTotal * (30 / 100.0);
        System.out.println("Pant amount after 30% discount: " + P_Dis);

        double totalPrice = S_Dis + P_Dis;
        System.out.println("Final amount to be paid: " + totalPrice);
    }

}
