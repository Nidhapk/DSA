/**find prime numbers  using stack */
void main() {
  List<int> stack = [7, 8, 9, 3, 2];
  
  List<int> prime = [];
  while (stack.isNotEmpty) {
    int count = 0;
    int value = stack.removeLast();
    for (int j = 1; j <= value; j++) {
      if (value % j == 0) {
        count++;
      }
    }
    if (count <=2) {
      prime.add(value);
    }
  }
  print(prime);
}
