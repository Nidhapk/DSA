class Solution {
  String shuffleString(String s) {
    return helperFun(s);
  }

  String helperFun(String str) {
    if (str.length-1 <= 0) {
      return str;
    }
    return str[str.length - 1] + helperFun(str.substring(0, str.length - 1));
  }
}

void main() {
  Solution solution = Solution();
  String shuffled = solution.shuffleString("Nidha");
  print(shuffled); // Output: "ahdiN"
}