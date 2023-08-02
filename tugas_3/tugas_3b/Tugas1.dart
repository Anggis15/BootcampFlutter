import 'Function.dart';

void main(List<String> args) {
  // soal 1
  print(teriak());
  // soal 2
  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);
  // soal 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  print(factorial(5));
}

// Soal nomer 1
String teriak() {
  return 'Halo Sanbers!';
}

// Soal Nomer 2
int kalikan(int x, int y) {
  return x * y;
}

// Soal Nomer 3
String introduce(var name, var age, var address, var hobby) {
  return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!';
}
