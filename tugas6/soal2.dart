void main(List<String> args) {
  Future.delayed(const Duration(seconds: 1), () {
    print('life');
  });
  Future.delayed(const Duration(seconds: 3), () {
    print('never flat');
  });
  Future.delayed(const Duration(seconds: 2), () {
    print('is');
  });
}
