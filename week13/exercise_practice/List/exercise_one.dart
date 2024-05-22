/** Leetcode 1672 */

class Solution {
  int greates = 0;
  maximumWealth(List<List<int>> accounts) {
    List<int> wealth = [];
    for (int i = 0; i < accounts.length; i++) {
      int sum = 0;
      for (int j = 0; j < accounts[i].length; j++) {
        sum = sum + accounts[i][j];
      }
      wealth.add(sum);
    }
    print(wealth.reduce((a, b) => a > b ? a : b));
  }
}

void main() {
  Solution solution = Solution();
  solution.maximumWealth([
    [1, 2, 3],
    [3, 2, 5]
  ]);
}
