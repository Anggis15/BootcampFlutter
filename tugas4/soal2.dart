void main(List<String> args) {
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
}

List<int> rangeWithStep(int startNum, int finishNum, int step) {
  List<int> result = [];

  if (finishNum < startNum) {
    for (int i = startNum; i >= finishNum;) {
      result.add(i);
      i -= step;
    }
    return result;
  } else {
    for (int i = startNum; i <= finishNum;) {
      result.add(i);

      i += step;
    }
    return result;
  }
}
