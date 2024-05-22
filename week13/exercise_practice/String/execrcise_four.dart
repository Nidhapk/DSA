//delete an given char from a string
void main() {
  String str = 'Nidha';
  String neww = '';
  String s1 = 'i';
  for (int i = 0; i < str.length; i++) {
    if (str[i] != s1) {
      neww += str[i];
    }
  }
  print(neww);
}
