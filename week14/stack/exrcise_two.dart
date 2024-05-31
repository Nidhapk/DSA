/** to find the count of even numbers from stack */
void main() {
  List<int> stack = [2, 6, 7, 4, 9, 3];
  int count = 1;
  for (int i = 0; i < stack.length; i++) {
    if (stack.removeLast() % 2 == 0) {
      ++count;
      stack.length--;
    }
  }
  print(count);
}