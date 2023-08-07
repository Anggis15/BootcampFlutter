void main(List<String> args) async {
  var h = new Human();

  print('luffy');
  print('zoro');
  print('killer');

  await h.getData();

  print('namanya ' + h.name);
}

class Human {
  String name = "nama character Onepiece";

  Future<void> getData() async {
    await Future.delayed(const Duration(seconds: 3), () => name = "hilmy");
    // await Future.delayed(const Duration(seconds: 3));
    // name = "hilmy";
    print("Get data [done]");
    // name = "hilmy";
  }
}
