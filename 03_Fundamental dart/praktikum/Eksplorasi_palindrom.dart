import 'dart:io';

  void main() {
    // Soal_1
    stdout.write("\npegecekan kata : ");
    String? kata = stdin.readLineSync();

    final save = kata?.split("").reversed.join("");

    if (kata == save) {
      print("\nKata $kata merupakan kata palindrom");
    } else {
      print("\nKata $kata bukan kata palindrom");
    }
  }