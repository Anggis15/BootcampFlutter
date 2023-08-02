void main(List<String> args) {
  print(factorial(8));
}

int factorial(int angka) {
  if (angka <= 0) {
    return 1;
  }
  return angka * factorial(angka - 1);
}
