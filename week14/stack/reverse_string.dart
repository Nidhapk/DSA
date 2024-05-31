reverse(String s) {
  List newList = [];
  String revers = '';
  for (int i = 0; i < s.length; i++) {
    newList.add(s[i]);
  }
  while (newList.isNotEmpty) {
    revers += newList.removeLast();
  }
  return revers;
}

void main() {
  print(reverse('Nidha'));
}
