class TrieNode {
  Map<String, TrieNode> character = {};
  bool endOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

//to insert a word in Trie
  insert(String word) {
    TrieNode current = root;
    for (var i = 0; i < word.length; i++) {
      String char = word[i];
      current.character.putIfAbsent(char, () => TrieNode());
      current = current.character[char]!;
    }
    current.endOfWord = true;
  }

//to search an word exist inside a Trie

  search(String word) {
    TrieNode current = root;
    for (var char in word.split('')) {
      if (!current.character.containsKey(char)) {
        return false;
      }
      current = current.character[char]!;
    }
    return true;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('Nidha');
  trie.insert('india');
  trie.insert('america');
  print(trie.search('Nidha'))
  ;
}
