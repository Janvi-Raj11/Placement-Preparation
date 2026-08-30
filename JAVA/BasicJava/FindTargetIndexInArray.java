public class FindTargetIndexInArray {
    public static void main(String[] args) {
        int[] arr = { 12, 7, 25, 40, 18, 55, 30 };
        // int tar = 18;
        int tar = 99;
        int idx = FindTargetIndexInArray(arr, tar);
        if (idx >= 0) {
            System.out.println("Target element found at index: " + idx);

        } else {
            System.out.println("Target element not found.");

        }

    }

    public static int FindTargetIndexInArray(int[] arr, int tar) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == tar) {
                return i;
            }
        }
        return -1; // "After traversing the entire array, if the target is not found, I return -1
                   // because it is not a valid array index and indicates the element is absent."
    }
}
