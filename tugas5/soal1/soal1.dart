void main(List<String> args) {
  Segitiga luasSegitiga = new Segitiga();

  print(luasSegitiga.luasSegitiga(0.5, 20, 30));
}

class Segitiga {
  double setengah = 0;
  double alas = 0;
  double tinggi = 0;

  double luasSegitiga(double setengah, double alas, double tinggi) {
    return setengah * alas * tinggi;
  }
}
