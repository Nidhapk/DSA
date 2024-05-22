/**Leetcode 1470 */

class Solution {
  shuffleArray(List<int> nums) {
    int middle = (0 + nums.length - 1) ~/ 2;
    List<int> nums1 = nums.sublist(0, middle + 1);
    List<int> nums2 = nums.sublist(middle + 1, nums.length);
    List<int> shuffledlist = [];
    for (int i = 0; i <= middle; i++) {
      shuffledlist.add(nums1[i]);
      if (i <= nums2.length - 1) shuffledlist.add(nums2[i]);
    }
    print("List before shuffling:$nums");
    print(" List after shuffling: $shuffledlist");
  }
}

void main() {
  Solution solution = Solution();
  solution.shuffleArray([1, 2, 3, 4, 5, 6]);
}
