// Write a Java program to check whether a given year is a leap year or not.
public class LeapYear {
    public static void main(String[] args) {
        // int yr = 2024;
        // int yr = 1900 ;
        int yr =2000; 

        if (yr % 4 == 0 && yr % 100 != 0 || yr % 400 == 0)
            System.out.println("LEAP YR");
        else
            System.out.println("NOT LEAP YEAR");

    }

}
