import 'dart:io';

void main() {
  int number;
    stdout.write("Masukkan : ");
    number = int.parse(stdin.readLineSync() ?? "0");
    print("\n Matriks Perkalian $number\n");

    for (int k = 1; k <= number; k++) {
      for (int l = 1; l <= number; l++) {
        stdout.write("${(k * l).toString().padLeft(4)}");
      }
      stdout.write("\n");
    }
  }