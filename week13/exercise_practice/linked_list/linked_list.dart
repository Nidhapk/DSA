class BinarSearch {
  // searchIter(List<int> list, int value) {
  //   int start = 0;
  //   int end = list.length - 1;

  //   while (start <= end) {
  //     int middle = (start + (end - start) / 2).toInt();
  //     if (list[middle] == value) {
  //       print(middle);
  //       return;
  //     } else if (list[middle] > value) {
  //       end = middle - 1;
  //     } else if (list[middle] < value) {
  //       start = middle + 1;
  //     }
  //   }
  //   print('Nothing found');
  // }
  searchRec(List<int> list, int value) {
    searchRecHelper(0, list.length - 1, list, value);
  }

  searchRecHelper(int start, int end, List<int> list, int value) {
    if (start > end) {
      print('nothing found');
      return;
    }
    int middle = (start + (end - start) / 2).toInt();
    if (list[middle] == value) {
      print(middle);
      return;
    } else if (list[middle] > value) {
      searchRecHelper(start, middle - 1, list, value);
    } else {
      searchRecHelper(middle + 1, end, list, value);
    }
  }
}

void main() {
  BinarSearch binary = BinarSearch();
  binary.searchRec([1, 2, 3, 4, 5], 6);
}
