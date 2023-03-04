import 'dart:io';

class Calculator {

  void tambah(int a, int b) {
    print('Hasil penjumlahan: ${a + b}');
  }

  void kurang(int a, int b) {
    print('Hasil pengurangan: ${a - b}');
  }

  void kali(int a, int b) {
    print('Hasil perkalian: ${a * b}');
  }

  void bagi(int a, int b) {
    print('Hasil pembagian: ${a / b}');
  }


}

void main() {

  int a = 12;
  int b = 6;

  var calculator = Calculator();

  calculator.tambah(a, b);
  calculator.kurang(a, b);
  calculator.kali(a, b);
  calculator.bagi(a, b);

}