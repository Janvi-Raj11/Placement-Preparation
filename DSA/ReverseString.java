/*
 * Problem: Reverse String
 *
 * Approaches:
 *
 * 1. Brute Force - Using another char[]
 *    TC: O(n)
 *    SC: O(n)
 *
 * 2. Brute Force - Using StringBuilder
 *    TC: O(n)
 *    SC: O(n)
 *
 * 3. Optimal - Two Pointer + Swap
 *    TC: O(n)
 *    SC: O(1)
 *
 * My Mistake:
 * Initially used a for loop for the two-pointer approach.
 * Remember: For two-pointer reversal, use while (start < end)
 * so the pointers stop when they meet/cross.
 */

class ReverseString {
    public static void main(String[] args) {
        char[] s = { 'h', 'e', 'l', 'l', 'o' };
        reverseString(s);
    }

    public static void reverseString(char[] s) {
        int start = 0, end = s.length - 1;

        while (start < end) {
            char temp = s[start];
            s[start] = s[end];
            s[end] = temp;
            start++;
            end--;
        }
        System.out.println("Result: " + new String(s));

    }

}