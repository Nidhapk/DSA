class HashTable<K, V> {
  final int length;
  late List<List<Entry<K, V>>> bucket;
  HashTable({required this.length}) {
    bucket = List.generate(length, (index) => []);
  }
  int haskKey(K key) {
    return key.hashCode % length;
  }

  addData(K key, V value) {
    int index = haskKey(key);
    Entry<K, V> entry = Entry(key: key, value: value);
    for (var entry in bucket[index]) {
      if (entry.key == key) {
        entry.value = value;
        return;
      }
    }
    bucket[index].add(entry);
  }
   remove(K key) {
    int index = haskKey(key);
    bool keyExist = bucket[index].any((element) => element.key == key);
    keyExist?bucket[index].removeWhere((element) => element.key == key):print('No matching key');
  }


  display() {
    for (int i = 0; i < bucket.length; i++) {
      print('bucket:${i + 1}');
      for (int j = 0; j < bucket[i].length; j++) {
        print('${bucket[i][j].key}:${bucket[i][j].value}');
      }
    }
  }

   getData(K key) {
    int index = haskKey(key);
    for (var entry in bucket[index]) {
      if (entry.key == key) {
        return '${entry.key} : ${entry.value}';
      }
    }
    return 'No such key';
  }
}

class Entry<K, V> {
  K key;
  V value;
  Entry({required this.key, required this.value});
}

void main() {
  HashTable hash = HashTable(length: 10);
  hash.addData('1', 'Nidh');
  hash.addData('251', 'Akhula');
  hash.display();
}
