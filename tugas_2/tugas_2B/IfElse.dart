import 'dart:io';

void main(List<String> args) {
  print('Masukan Nama ');
  String nama = stdin.readLineSync()!;

  print("Masukan role");

  String role = stdin.readLineSync()!;
  mulaiPermainan(nama, role);
}

void mulaiPermainan(var nama, var role) {
  if (nama == '') {
    print("Nama harus di isi!!!");
  } else if (role == '') {
    print('Halo $nama, Pilih peranmu untuk memulai game!');
  } else if (role.toLowerCase == 'penyihir') {
    print("Selamat datang di Dunia Werewolf, $nama"
        "Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
  } else if (role.toLowerCase() == 'guard') {
    print("Selamat datang di Dunia Werewolf, $nama"
        "Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
  } else if (role.toLowerCase() == 'werewolf') {
    print("Selamat datang di Dunia Werewolf, $nama "
        "Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
  }
}
