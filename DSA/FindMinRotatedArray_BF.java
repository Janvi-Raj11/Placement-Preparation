public class FindMinRotatedArray_BF {
    public static void main(String[] args) {
        int[] nums = { 4, 5, 6, 7, 0, 1, 2 };
        int res = findMin(nums);
        System.out.println("MinRotatedArray: " + res);
    }

    public static int findMin(int[] nums) {
        int min = Integer.MAX_VALUE;

        for (int i = 0; i < nums.length; i++) {
            if (min > nums[i]) {
                min = nums[i];
            }

        }
        return min;
    }

}
