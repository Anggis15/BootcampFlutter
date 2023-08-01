import 'dart:io';

void main(List<String> args) {
  soal1();
  soal2();

  print("Masukan nama depan mu");
  String? firstName = stdin.readLineSync();

  print("Masukan nama belakang mu");
  String? lastName = stdin.readLineSync();

  soal3(firstName, lastName);

  print("Masukan angka pertama");
  int angkaPertama = int.parse(stdin.readLineSync()!);

  print("Masukan angka kedua");
  var angkaKedua = int.parse(stdin.readLineSync()!);

  soal4(angkaPertama, angkaKedua);
}

void soal1() {
  var word = 'dart ';
  var second = 'is ';
  var third = 'awesome ';
  var fourth = 'and ';
  var fifth = 'I ';
  var sixth = 'love ';
  var seventh = 'it! ';

  print(word + second + third + fourth + fifth + sixth + seventh);
}

void soal2() {
  var sentence = "I am going to be Flutter Developer";

  var exampleFirstWord = sentence[0];
  var secondWord = sentence[2] + sentence[3];
  var thirdWord = sentence.substring(5, 10);
  var fourthWord = sentence.substring(11, 13);
  var fifthWord = sentence.substring(14, 16);
  var sixthWord = sentence.substring(17, 24);
  var seventhWord = sentence.substring(25, 34);

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + secondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
}

void soal3(var firstName, var lastName) {
  print('$firstName $lastName');
}

void soal4(var angkaPertama, var angkaKedua) {
  print(angkaPertama * angkaKedua);
}
