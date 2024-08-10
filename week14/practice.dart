sort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int middle = list.length ~/ 2;
  List<int> left = list.sublist(0, middle);
  List<int> right = list.sublist(middle);
  return mergeList(sort(left), sort(right));
}

mergeList(List<int> left, List<int> right) {
  int i = 0, j = 0, k = 0;
  List<int> newList = List.filled(left.length + right.length, 0);
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      newList[k++] = left[i++];
    } else {
      newList[k++] = right[j++];
    }
  }
  while (i < left.length) {
    newList[k++] = left[i++];
  }
  while (j < right.length) {
    newList[k++] = right[j++];
  }
  return newList;
}

void main() {
  print(sort([45, 210, 1, 67, 90, 45, 67, 32]));
}
