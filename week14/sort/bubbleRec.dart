/** bubble sort using recurssion */

bubble(List list) {
 
  return outerLopp(list, 0);
}

outerLopp(List list, int i) {
  if (i >= list.length) {
    return list;
  }
  innerLoop(list, 1, list.length - i);
  return outerLopp(list, i + 1);
}

innerLoop(List list, int j, int length) {
  if (j >= length) {
    return;
  }
  if (list[j] < list[j - 1]) {
    int temp = list[j];
    list[j] = list[j - 1];
    list[j - 1] = temp;
  }
  innerLoop(list, j + 1, length);
}

void main() {
  print(bubble([9, 0, 45, 600, 92, 1]));
}