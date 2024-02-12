void main() {
  Lists value = Lists();
  value.list();
  value.listaddall();
  value.remove();
  value.forech();
}

class Lists {
  list() {
    List<int> nums = [1, 2, 3];
    nums.add(4);
    print(nums);
  }

  listaddall() {
    List<int> numbers = [1, 2, 3];
    numbers.addAll([4, 5, 6]);
    print(numbers);
  }

  remove() {
    List<int> numbers = [1, 2, 3, 2];
    numbers.remove(2);
    print(numbers);
  }

  forech() {
    List<int> numbers = [1, 2, 3];
    numbers.forEach((number) {
      print(number);
    });
  }
}
