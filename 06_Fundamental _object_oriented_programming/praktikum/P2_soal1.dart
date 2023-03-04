import 'dart:convert';

void main() {
  Calculator kalkulator = Calculator();
  double a = 20;
  double b = 2;
  print("hasil operasi pertambahan dari $a + $b adalah : ${kalkulator.penambahan(a,b)}");
  print("hasil operasi pengurangan dari $a - $b adalah : ${kalkulator.pengurangan(a,b)}");
  print("hasil operasi perkalian   dari $a * $b adalah : ${kalkulator.perkalian(a,b)}");
  print("hasil operasi pembagian   dari $a / $b adalah : ${kalkulator.pembagian(a,b)}");

}
// penambha
class Calculator {
  double penambahan(a,b) {
  double hasil_penambahan = a + b;
    return hasil_penambahan;
  }
  double pengurangan(a,b) {
  double hasil_penambahan = a - b;
    return hasil_penambahan;
  }
  double perkalian(a,b) {
  double hasil_penambahan = a * b;
    return hasil_penambahan;
  }
  double pembagian(a,b) {
  double hasil_penambahan = a / b;
    return hasil_penambahan;
  }
}