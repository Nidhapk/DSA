/**Leetcode-1512 */

class Solution {
  numIdenticalPairs(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          count++;
        }
      }
    }
    print(count) ;
  }
}

void main() {
  Solution solution = Solution();
  solution.numIdenticalPairs([1, 2, 3, 1, 1, 2]);
}
