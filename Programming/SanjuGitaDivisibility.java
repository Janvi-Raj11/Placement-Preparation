//Write a Java program to print "Sanju" if a number is divisible by 3, "Gita" if the number is divisible by 5, "Sanju Bade Gita" if the number is divisible by both 3 and 5, and "Breakup" otherwise.

public class SanjuGitaDivisibility {
    public static void main(String[] args) {

        int n = 15;
        if (n % 3 == 0 && n % 5 == 0)
            System.out.println("SANJU WED GEETA");
        else if (n % 3 == 0)
            System.out.println("SANJU");
        else if (n % 5 == 0)
            System.out.println("GEETA");
    }
}
