/** bubble sort using recurssion */

bubble(List list) {
 
  return helper(list, 0);
}

helper(List list, int i) {
  if (i >= list.length) {
    return list;
  }
  swap(list,list.length-i, 1);
  return helper(list, i+1);
}

swap(List list,int length, int j) {
  if (j >=length) {
    return ;
  }
   if (list[j] < list[j - 1]) {
    int temp = list[j];
    list[j] = list[j - 1];
    list[j - 1] = temp;
   
  }
  swap(list,length,j+1);
}

void main() {
  print(bubble([8, 9, 500, 45, 76, 200, 1]));
}
