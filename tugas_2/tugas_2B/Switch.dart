import 'dart:io';

void main(List<String> args) {
  print("Masukan nama hari");
  var hari = stdin.readLineSync()!;
  jadwalHari(hari);

  print('Masukan Tanggal');
  var tanggal = int.parse(stdin.readLineSync()!);

  print('Masukan Bulan');
  var bulan = int.parse(stdin.readLineSync()!);

  print('Masukan Tahun');
  var tahun = int.parse(stdin.readLineSync()!);

  menentukanTanggal(tanggal, tahun, bulan);
}

void jadwalHari(var hari) {
  switch (hari.toLowerCase()) {
    case 'senin':
      print(
          'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      break;
    case 'selasa':
      print(
          'Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
      break;
    case 'rabu':
      print(
          'Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
      break;
    case 'kamis':
      print(
          'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      break;
    case 'jumat':
      print('Hidup tak selamanya tentang pacar.');
      break;
    case 'sabtu':
      print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      break;
    case 'minggu':
      print(
          'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
  }
}

void menentukanTanggal(var tanggal, var tahun, var bulan) {
  if (validTanggal(tanggal) && validBulan(bulan) && validTahun(tahun)) {
    print(DateTime(tahun, bulan, tanggal));
  } else {
    print('Data yang di masukan tidak valid');
  }
}

bool validTanggal(var tanggal) {
  if (tanggal >= 1 && tanggal <= 31) {
    return true;
  }
  return false;
}

bool validBulan(var bulan) {
  if (bulan >= 1 && bulan <= 12) {
    return true;
  }
  return false;
}

bool validTahun(var tahun) {
  if (tahun >= 1900 && tahun <= 2200) {
    return true;
  }
  return false;
}
