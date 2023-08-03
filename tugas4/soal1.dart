void main(List<String> args) {
  print(range(1, 10));
  print(range(11, 18));
}

List<int> range(int startNum, int finishNum) {
  List<int> result = [];

  for (int i = startNum; i <= finishNum; i++) {
    result.add(i);
  }
  return result;
}
