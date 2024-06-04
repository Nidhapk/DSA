/**reverse string using queue */
void main() {
  String s = 'Nidha';
  List queue = s.split('');
  String reversed = '';

  while (queue.isNotEmpty) {
    reversed = queue.removeAt(0) + reversed;
  }

  s = reversed;
  print(s);
}
