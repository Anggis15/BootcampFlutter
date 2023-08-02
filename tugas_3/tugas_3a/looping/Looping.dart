import 'dart:io';

void main(List<String> args) {
  // soal nomer 1
  // looping pertama
  print('===================while loop===================');
  print('================perulangan pertama================');
  bool lanjut = true;
  int counter = 1;
  while (lanjut) {
    if (counter % 2 == 0) {
      print('$counter - I love coding');
      counter++;
    } else if (counter == 21) {
      lanjut = false;
    } else {
      counter++;
    }
  }

  print('================perulangan kedua================');

  // looping kedua
  lanjut = true;
  counter = 20;
  while (lanjut) {
    if (counter % 2 == 0) {
      print('$counter - I will become a mobile developer');
      counter--;
    } else if (counter == 1) {
      lanjut = false;
    } else {
      counter--;
    }
  }
  print('================Soal Nomer 2================');
  print('================For Loop================');
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 == 1) {
      print('$i - I Love Coding');
    } else if (i % 2 == 1) {
      print('$i - Santai');
    } else {
      print('$i - Berkualitas');
    }
  }

  print('================Soal Nomer 3================');
  int sisi = 5;
  for (int i = 0; i < sisi; i++) {
    for (int y = 0; y < sisi; y++) {
      stdout.write('#');
    }
    print('');
  }

  print('================Soal Nomer 4================');
  sisi = 5;
  for (int i = 0; i < sisi; i++) {
    for (int y = 0; y <= i; y++) {
      stdout.write('#');
    }
    print('');
  }
}
