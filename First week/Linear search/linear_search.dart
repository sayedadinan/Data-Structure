class LinearSearch {
  int search(List<int> list, int target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        return i;
      }
    }
    return -1;
  }

  int searchString(List<String> list, String target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        return i;
      }
    }
    return -1;
  }

  int searchObject(List<Person> list, Person target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].name == target.name && list[i].age == target.age) {
        return i;
      }
    }
    return -1;
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  LinearSearch search = LinearSearch();

  List<int> numbers = [2, 5, 8, 10, 13, 17, 21];
  int targetInt = 13;
  int resultInt = search.search(numbers, targetInt);
  if (resultInt != -1) {
    print("Integer element found at index $resultInt");
  } else {
    print("Integer element not found");
  }

  List<String> names = ['adnan', 'jaseem', 'jasir'];
  String targetString = "usmaan";
  int resultString = search.searchString(names, targetString);
  if (resultString != -1) {
    print("String element found at index $resultString");
  } else {
    print("String element not found");
  }

  List<Person> people = [
    Person("jaseem", 25),
    Person("sabu", 30),
    Person("kungaava", 35),
    Person("David", 40),
  ];
  Person targetObject = Person("David", 35);
  int resultObject = search.searchObject(people, targetObject);
  if (resultObject != -1) {
    print("Object element found at index $resultObject");
  } else {
    print("Object element not found");
  }
}
