quickSort(List list) {
  
  List left = [];
  List right = [];
  List equal = [];
  if (list.length <= 1) {
    return list;
  }
  int pivot = list[list.length ~/ 2];
  for (var i in list) {
    if (i < pivot) {
      left.add(i);
    } else if (i == pivot) {
      equal.add(i);
    } else {
      right.add(i);
    }
  }
  return [...quickSort(left), ...equal, ...quickSort(right)];
}

void main() {
  print(quickSort([1, 101, 3, 4, 22, 0]));
}