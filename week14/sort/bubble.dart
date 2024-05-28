bubble(List list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 1; j < list.length - i; j++) {
      if (list[j] < list[j - 1]) {
        int temp = list[j];
        list[j] = list[j - 1];
        list[j - 1] = temp;
      }
    }
  }
  return list;
}

void main() {
  print(bubble([4, 90, 12, 22, 1, 200]));
}