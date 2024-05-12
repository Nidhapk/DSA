/** reverse an list using recurssion */

class Array {
  reverseRec(List<int> list) {
    List<int> reversedList = [];  //creating an empty list to store reversed array
    
    //calling helper function
    helperFun(list, reversedList, list.length - 1);     //passing value of m as list.length-1,which represent the last element in the list
    print(reversedList);
  }

  helperFun(List<int> list, List<int> reversed, int m) {
    if (m >= 0) {
      reversed.add(list[m]);
      helperFun(list, reversed, --m);   //value of m will be decremented by 1 when next time it is called
    }
  }
}

void main() {
  Array array = Array();
  array.reverseRec([1, 2, 3, 4, 5]);  //calling fun for reversing
}
