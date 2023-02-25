import 'dart:io';

  void main() {
    // Soal_2
    stdout.write("\nMasukkan nominal :");
    int angka = int.parse(stdin.readLineSync()!);
    List factors = [];

    for (int i = 1; i <= angka; i++) {
      if (angka % i == 0) {
        factors.add(i);
      }
    }
    print("faktor angka $angka adalah : $factors");
  }
