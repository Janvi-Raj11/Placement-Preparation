import java.util.HashSet;

class ContainsDuplicate_OPT {
    public static void main(String[] args) {
        int[]  nums = {1,2,3,1};
        boolean res =containsDuplicate(nums);
        System.out.println("ContainsDuplicate: "+res);
    }

    public static boolean containsDuplicate(int[] nums) {
        HashSet<Integer> set = new HashSet<>();

        for (int i = 0; i < nums.length; i++) {
            if (set.contains(nums[i])) {
                return true;

            }
            set.add(nums[i]);
        }
        return false;
    }
}