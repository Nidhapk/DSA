/**find the least repeated element in the list using hash table */
class HashTable<K, V> {
  int length;
  late List<List<Entry<K, V>>> bucket;
  HashTable(this.length) {
    bucket = List.generate(length, (index) => []);
  }
  int hashKey(K key) {
    return key.hashCode % length;
  }

  add(K key) {
    int index = hashKey(key);
    Entry<K, V> entry = Entry(key: key, value: 1);
    for (var entries in bucket[index]) {
      if (entries.key == key) {
        entries.value++;
        return;
      }
    }
    bucket[index].add(entry);
  }

  leastRepeated() {
    K? least;
    int count = 100;
    for (int i = 0; i < bucket.length; i++) {
      for (var entries in bucket[i]) {
        if (entries.value < count) {
          count = entries.value;
          least = entries.key;
        }
      }
    }
    return least;
  }

  display() {
    for (int i = 0; i < bucket.length; i++) {
      print('Bucket : ${i + 1}');
      for (var entries in bucket[i]) {
        print('${entries.key} : ${entries.value}');
      }
    }
  }
}

class Entry<K, V> {
  K key;
  int value;
  Entry({required this.key, required this.value});
}

void main() {
  HashTable hashTable = HashTable(11);
  hashTable.add(1);
  hashTable.add(2);
  hashTable.add(1);
  hashTable.display();
  print('least is ');
  print(hashTable.leastRepeated());
}
