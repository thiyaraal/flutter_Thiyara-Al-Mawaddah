import 'dart:io';

void main() {
  int bintang;

  print("jumlah bintang : ");
  bintang = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= bintang; i++) {
    int spaces = bintang - i;
    for (int j = 0; j < spaces; j++) {
      stdout.write(" ");
    }
    for (int j = 0; j < 2 * i - 1; j++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}
