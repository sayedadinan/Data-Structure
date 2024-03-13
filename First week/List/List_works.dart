class Lists {
  void list() {
    List<int> nums = [1, 2, 3];
    nums.add(4);
    print(nums);
  }

  void listAddAll() {
    List<int> numbers = [1, 2, 3];
    numbers.addAll([4, 5, 6]);
    print(numbers);
  }

  void remove() {
    List<int> numbers = [1, 2, 3, 2];
    numbers.remove(2);
    print(numbers);
  }

  void forEach() {
    List<int> numbers = [1, 2, 3];
    numbers.forEach((number) {
      print(number);
    });
  }

  void map() {
    List<int> numbers = [1, 2, 3];
    List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
    print(doubledNumbers);
  }

  void where() {
    List<int> numbers = [1, 2, 3, 4, 5];
    List<int> evenNumbers = numbers.where((number) => number.isEven).toList();
    print(evenNumbers);
  }

  void any() {
    List<int> numbers = [1, 2, 3];
    bool containsEven = numbers.any((number) => number.isEven);
    print(containsEven);
  }

  void every() {
    List<int> numbers = [1, 2, 3];
    bool allEven = numbers.every((number) => number.isEven);
    print(allEven);
  }
}

void main() {
  Lists value = Lists();
  value.list();
  value.listAddAll();
  value.remove();
  value.forEach();
  value.map();
  value.where();
  value.any();
  value.every();
}
