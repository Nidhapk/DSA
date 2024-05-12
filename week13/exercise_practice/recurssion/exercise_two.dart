/**check whether a number is palidrome or not*/

class StringClass {
  isPalidrome(String str ) {          //using for loop
    List<String> reversed = [];
    for (var i = str.length - 1; i >= 0; i--) {
      reversed.add(str[i]);
    }
    print(str.split(''));
    print(reversed);
    if (str == reversed.join()) {
      print('true');
    } else {
      print('false');
    }
  }

 isPalindromeRec(String str) {         //using recurssion
    List<String> reversed = [];
    helperFun(str, reversed, str.length - 1);
    if (str == reversed.join()) {
      print('true') ;
      
    } else {
      print('false');
    }
  }

  helperFun(String str, List<String> reversed, int m) {
    if (m >= 0) {
      reversed.add(str[m]);
      helperFun(str, reversed, --m);
    }
  }
}

void main() {
  StringClass str = StringClass();
  str.isPalindromeRec('malayalamm');
}
