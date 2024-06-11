mergeSort(List list) {
  if (list.length <= 1) {
    return list;
  }
  int middle = list.length ~/ 2;
  List left = list.sublist(0, middle);
  List right = list.sublist(middle);
  return mergeList(mergeSort(left), mergeSort(right));
}

mergeList(List left, List right) {
  List newList = List.filled(left.length + right.length, 0);
  int i = 0, j = 0, k = 0;
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
  print(mergeSort([4, 6, 2, 100, 45, 500]));
}
