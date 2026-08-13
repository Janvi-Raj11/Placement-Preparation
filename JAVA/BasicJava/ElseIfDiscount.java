/*Question:

Create a Java program for a shopping bill containing 4 shirts and 4 pants.

Shirt prices: 599, 1699, 1799, 1899
Pant prices: 799, 1899, 999, 1999

Apply discounts according to the following rules:

Shirts:

Total > 2000 and < 3000 → 10% discount
Total > 3000 and < 4000 → 20% discount
Total > 4000 and < 5000 → 30% discount
Total >= 5000 → 40% discount

Pants:

Total > 3000 and < 4000 → 30% discount
Total > 4000 and < 5000 → 40% discount
Total >= 5000 → 45% discount
Otherwise → 20% discount

If the customer receives the maximum discount on both shirts and pants, apply an additional 5% discount on the discounted total.

Display the shirt discounted amount, pant discounted amount, and final payable amount.*/

package BasicJava;

public class ElseIfDiscount {

    public static void main(String[] args) {
        int s1 = 599, s2 = 1699, s3 = 1799, s4 = 1899, p1 = 799, p2 = 1899, p3 = 999, p4 = 1999;
        int shirtTotal = s1 + s2 + s3 + s4;
        int pantTotal = p1 + p2 + p3 + p4;
        double shirtDiscount = 0;
        double pantDiscount = 0, total = 0, extraDis = 0;
        int count = 0;

        // shirtDis

        if (shirtTotal > 2000 && shirtTotal < 3000) {
            shirtDiscount = shirtTotal - (shirtTotal * (10 / 100.0));
            System.out.println("congratulation you got a 10% discount: " + shirtDiscount);

        } else if (shirtTotal > 3000 && shirtTotal < 4000) {
            shirtDiscount = shirtTotal - (shirtTotal * (20 / 100.0));
            System.out.println("congratulation you got a 20% discount: " + shirtDiscount);

        } else if (shirtTotal > 4000 && shirtTotal < 5000) {
            shirtDiscount = shirtTotal - (shirtTotal * (30 / 100.0));
            System.out.println("congratulation you got a 30% discount: " + shirtDiscount);

        } else if (shirtTotal >= 5000) {
            shirtDiscount = shirtTotal - (shirtTotal * (40 / 100.0));
            count++;
            System.out.println("congratulation you got a 40% discount: " + shirtDiscount);

        }

        // pantDis

        if (pantTotal > 3000 && pantTotal < 4000) {
            pantDiscount = pantTotal - (pantTotal * (30 / 100.0));
            System.out.println("congratulation you got a 30% discount: " + pantDiscount);

        } else if (pantTotal > 4000 && pantTotal < 5000) {
            pantDiscount = pantTotal - (pantTotal * (40 / 100.0));
            System.out.println("congratulation you got a 40% discount: " + pantDiscount);

        } else if (pantTotal >= 5000) {
            pantDiscount = pantTotal - (pantTotal * (45 / 100.0));
            System.out.println("congratulation you got a 45% discount: " + pantDiscount);
            count++;

        } else {
            pantDiscount = pantTotal - (pantTotal * (20 / 100.0));
            System.out.println("congratulation you got a 20% discount: " + pantDiscount);

        }

        //EXTRADIS

        total = shirtDiscount + pantDiscount;

        if (count == 2) {
            extraDis = total * (5 / 100.0);
            System.out.println(
                    "You reached the maximum discount on both. Congratulations! You will get an extra 5% discount: "
                            + extraDis);
        }
        total = total - extraDis;
        System.out.println("Final payable amount after all discounts: " + total);

    }
}
