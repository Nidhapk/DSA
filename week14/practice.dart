void main() {
  List<int> stack = [2, 6, 7, 4, 9, 3];
  int count = 1;
  List<int> newlist = [];
  while (stack.isNotEmpty) {
    if (stack.last % 2 != 0) {
      newlist.add(stack.last);
    }
    stack.removeLast();
  }
  print(newlist);
}
