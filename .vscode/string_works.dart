class Strings {
  reversingstring(String input) {
    if (input.length <= 1) {
      return input;
    } else {
      String reversed = reversingstring(input.substring(1)) + input[0];
      print(reversed);
      return reversed;
    }
  }

  replaceall(String name) {
    String repleced = name.replaceAll('sayed', 'adnan');
    print(repleced);
  }

  substringfun(String text) {
    String result = text.substring(1, 7);
    print(result);
  }

  concatination(String text1, String text2) {
    String result = text1 + text2;
    print(result);
  }

  trimfun(String text) {
    String result = text.trim();
    print(result);
  }

  upandlow(String text, String text2) {
    String result1 = text.toLowerCase();
    String result2 = text2.toUpperCase();
    print(result1);
    print(result2);
  }

  containcheck(String text) {
    bool result = text.contains('su');
    print(result);
  }
}

void main() {
  Strings value = Strings();
  value.reversingstring('usman');
  value.replaceall('this is me sayed');
  value.substringfun('this is a testing');
  value.concatination('sayed', 'adnan');
  value.trimfun('   test for that giving some space      ');
  value.upandlow('FOR SMALL', 'for big');
  value.containcheck('adnansu');
}
