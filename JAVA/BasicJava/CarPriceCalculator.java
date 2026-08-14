/*Question

Write a Java program to calculate the on-road price of a car based on the following conditions:

If the car price is less than ₹10,00,000 → give 21% discount.
If the car price is between ₹10,00,000 and ₹20,00,000 → give 28% discount.
If the car price is between ₹20,00,000 and ₹30,00,000 → give 32% discount.
If the car price is ₹30,00,000 or more → give 38% discount.
Calculate insurance based on engine CC:
Below 1000 CC → ₹6,550
1000–1999 CC → ₹16,750
2000–2999 CC → ₹32,800
3000 CC or above → ₹42,500
Finally, calculate the on-road price.*/

package BasicJava;

public class CarPriceCalculator {

    public static void main(String[] args) {

        String carName = "BMW";
        double carPrice = 4580000;
        int cc = 1499;

        double discountPrice;
        int insurance;
        double onRoadPrice;

        // Calculate price after discount
        if (carPrice < 1000000) {
            discountPrice = carPrice - carPrice * 21 / 100.0;
            System.out.println("Congratulations! You will get 21% discount.");
        } else if (carPrice < 2000000) {
            discountPrice = carPrice - carPrice * 28 / 100.0;
            System.out.println("Congratulations! You will get 28% discount.");
        } else if (carPrice < 3000000) {
            discountPrice = carPrice - carPrice * 32 / 100.0;
            System.out.println("Congratulations! You will get 32% discount.");
        } else {
            discountPrice = carPrice - carPrice * 38 / 100.0;
            System.out.println("Congratulations! You will get 38% discount.");
        }

        // Calculate insurance based on engine CC
        if (cc < 1000) {
            insurance = 6550;
        } else if (cc < 2000) {
            insurance = 16750;
        } else if (cc < 3000) {
            insurance = 32800;
        } else {
            insurance = 42500;
        }

        // Calculate on-road price
        onRoadPrice = discountPrice + insurance;

        System.out.println("Car Name       : " + carName);
        System.out.println("Original Price : " + carPrice);
        System.out.println("Discounted Price: " + discountPrice);
        System.out.println("Insurance      : " + insurance);
        System.out.println("On-Road Price  : " + onRoadPrice);
    }
}