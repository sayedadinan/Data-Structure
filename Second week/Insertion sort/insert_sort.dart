class Sort {
  insertionsorts(List<int> datas) {
    for (int i = 1; i < datas.length; i++) {
      int current = datas[i];
      int j = i - 1;
      while (j >= 0 && datas[j] > current) {
        datas[j + 1] = datas[j];
        j--;
      }
      datas[j + 1] = current;
    }
    return datas;
  }
}

void main() {
  Sort value = Sort();
  List<int> datas = [4, 6, 1, 8, 0, 9];
  List<int> result = value.insertionsorts(datas);
  print(result);
}
