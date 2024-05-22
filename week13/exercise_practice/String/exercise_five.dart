void main() {
  String s = 'malayalamm is Good';
  List<String> f = s.split(' ');
  RegExp reg = RegExp(r'[A-Z][a-z]');
  List<String> str = f.where((element) => element.contains(reg)).toList();
  print(str);
}












