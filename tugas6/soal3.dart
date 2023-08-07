void main(List<String> args) async {
  print('Ready Sing');

  await line();
  await line2();
  await line3();
  await line4();
}

line() async {
  await Future.delayed(const Duration(seconds: 5), () {
    print("pernahkan kau merasa");
  });
}

line2() async {
  await Future.delayed(const Duration(seconds: 3), () {
    print("pernahkan kau merasa........");
  });
}

line3() async {
  await Future.delayed(const Duration(seconds: 2), () {
    print("pernah kah kau merasa");
  });
}

line4() async {
  await Future.delayed(const Duration(seconds: 1), () {
    print("hatimu hampa, pernahkah kau merasa hati mu kosong.......");
  });
}
