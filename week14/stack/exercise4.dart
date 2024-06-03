/**find the most repeated prime number in the stack*/
void main() {
  List stack = [3, 4, 3, 2, 3, 8, 9, 2];
  List prime = [];
  while (stack.isNotEmpty) {
    int count = 0;
    int value = stack.removeLast();
    for (int j = 1; j <= value; j++) {
      if (value % j == 0) {
        count++;
      }
    }
    if (count == 2) {
      prime.add(value);
    }
  }
  Map countof = {};
  int visited = -1;
  int count2 = 0;
  for (int i = 0; i < prime.length; i++) {
    count2 = 1;
    if (prime[i] != visited) {
      for (int j = i + 1; j < prime.length; j++) {
        if (prime[i] == prime[j]) {
          count2++;
          prime[j] = visited;
        }
      }
      countof.addAll({'${prime[i]}': '$count2'});
    }
  }
  print(prime);
  print(countof);
  List newList = countof.values.toList();
  newList.sort();
  print(newList);

  for (var entries in countof.entries) {
    if (entries.value == newList.last) {
      print(entries.key);
    }
  }
}
