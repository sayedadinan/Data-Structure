class HashTable {
  List<List<int>> table; // Marking 'table' as 'late'
  late int size;

  HashTable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  int hashFunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, int value) {
    int index = hashFunction(key);
    table[index].add(value);
  }

  List<int> search(dynamic key) {
    int index = hashFunction(key);
    return table[index];
  }

  void remove(dynamic key, int value) {
    int index = hashFunction(key);
    table[index].remove(value);
  }

  void displayall() {
    for (int i = 0; i < size; i++) {
      List<int> temp = table[i];
      print(temp);
    }
  }
}

void main() {
  HashTable hashtable = HashTable(10);

  hashtable.insert("apple", 1);
  hashtable.insert("banana", 2);
  hashtable.insert("orange", 3);

  print(hashtable.search("apple")); // Output: [1]
  print(hashtable.search("banana")); // Output: [2]
  print(hashtable.search(2)); // Output: [3]

  hashtable.remove("apple", 1);
  print(hashtable.search("apple"));
  // Output: []
  hashtable.displayall();
}
