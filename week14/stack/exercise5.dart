/**find the least repeated even number using stack */
void main() {
  List stack = [1, 3, 2, 4, 8, 9, 8, 4, 4];
  List even = [];
  while (stack.isNotEmpty) {
    int value = stack.removeLast();
    if (value % 2 == 0) {
      even.add(value);
    }
  }
  int visited = -1;
  Map map = {};
  for (int i = 0; i < even.length; i++) {
    int count = 1;
    if (even[i] != visited) {
      for (int j = i + 1; j < even.length; j++) {
        if (even[i] == even[j]) {
          count++;
          even[j] = visited;
        }
      }
      map.addAll({'${even[i]}': count});
    }
  }
  int least = map.values.first;
  String ans = map.keys.first;
  map.forEach(
    (key, value) {
      if (value< least ) {
        least = value;
        ans = key;
      }
      
    },
  );
  
  print(' Least repeated even number is $ans');
}
