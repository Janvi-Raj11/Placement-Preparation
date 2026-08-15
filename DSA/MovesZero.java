/*Approach 1: Extra Array (Brute Force)
 * -------------------------------------
 * - Traverse the original array.
 * - Store all non-zero elements in a new array.
 * - Fill the remaining positions with 0.
 *
 * Time Complexity: O(n)
 * Space Complexity: O(n)
 *
 *
 * Approach 2: In-Place (Optimal)
 * ------------------------------
 * - Use an index 'idx' to place non-zero elements at the front.
 * - After placing all non-zero elements, fill the remaining positions with 0.
 * - No extra array is used.
 *
 * Time Complexity: O(n)
 * Space Complexity: O(1)*/

class MovesZero {
    public static void main(String[] args) {
        int[] nums = {0,1,0,3,12};
        moveZeroes(nums);        
    }

    public static void moveZeroes(int[] nums) {
        int idx = 0;

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] != 0) {
                nums[idx++] = nums[i];
                System.out.println(nums[idx-1]); //// My mistake: after idx++, idx points to the next position; use idx - 1 for the previous value.

            }
        }
        for (int j = idx; j < nums.length; j++) {
            nums[idx++] = 0;
            System.out.println(nums[idx-1]);

        }

    }

}