import 'dart:io';

void main() {
  int angka; // buat variable bilangan bulat yang ingin dicari faktorialnya
  BigInt faktorial = BigInt.one;

  print("masukkan bilangan bulat: "); // input bilangan bulat
  angka = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= angka; i++) {
    faktorial *= BigInt.from(i); // rumus menghitung bilangan bulat
  }
  print("faktorial dari $angka adalah $faktorial");
}