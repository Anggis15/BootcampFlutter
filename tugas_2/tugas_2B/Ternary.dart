import 'dart:io';

void main(List<String> args) {
  print("Apakah anda ingin menginstall aplikasi? Y/T");
  var hasil = stdin.readLineSync()!;

  if (hasil.toLowerCase() == 'y') {
    print('anda akan menginstall aplikasi dart');
  } else {
    print('aborted');
  }
}
