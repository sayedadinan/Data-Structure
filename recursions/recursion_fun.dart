class Recursions {
  String reverseString(String input) {
    if (input.length <= 1) {
      return input;
    }
    String a = reverseString(input.substring(1)) + input[0];
    print(a);
    return a;
  }

  int sum(int x) {
    if (x == 0) {
      return x;
    } else {
      int s = x + sum(x - 1);
      print(s);
      return s;
    }
  }

  int min(int x) {
    if (x == 1) {
      return x;
    } else {
      int s = min(x - 1);
      print(s);
      return s;
    }
  }

  int multi(int x) {
    if (x == 1) {
      return x;
    } else {
      int s = x * multi(x - 1);
      print(s);
      return s;
    }
  }

  displaywithrec(temp) {
    if (temp == null) {
      print('empty');
    } else {
      displaywithrec(temp = temp.next);
    }
  }
}

void main() {
  Recursions value = Recursions();
  value.sum(5);
  value.reverseString('adnan');
}
