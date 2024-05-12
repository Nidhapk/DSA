/** return the index of a perticular value in the list using binary search */

class BinarSearch {
  searchIter(List<int> list, int value) {       //search in an iterative way
    int start = 0;                             //stat index of list
    int end = list.length - 1;                //end index of list

    while (start <= end) {
      int middle = (start + (end - start) / 2).toInt();      //eqn for finding middle element
      if (list[middle] == value) {
        print(middle);                                      //print middle if value ==midle
        return;
      } else if (list[middle] > value) {                   
        end = middle - 1;                                   //if middle>value , end index will become middle-1,so the next searches will happen only within the middle value 
      } else if (list[middle] < value) {                    //else start index will become middle+1, next searches will start after middle 
        start = middle + 1;
      }
    }
    print('Nothing found');
  }
  searchRec(List<int> list, int value) { // search in an recursive way
    searchRecHelper(0, list.length - 1, list, value);
  }

  searchRecHelper(int start, int end, List<int> list, int value) {//use help of a helper function 
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
  binary.searchIter([1, 2, 3, 4, 5], 6);
}
