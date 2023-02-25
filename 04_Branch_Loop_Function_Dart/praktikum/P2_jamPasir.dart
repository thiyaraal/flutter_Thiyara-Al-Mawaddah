import 'dart:io';

void main() {
 {
    stdout.write("\ntotal waktu: ");
    int height = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("\n");

    for (int i = height; i >= 1; i--) {
      int numSpaces = height - i;
      for (int j = 0; j < numSpaces; j++) {
        stdout.write(" ");
      }
      for (int j = 0; j < 2 * i - 1; j++) {
        stdout.write("*");
      }
      stdout.write("\n");
    }
    for (int i = 2; i <= height; i++) {
      int spaces = height - i;
      for (int j = 0; j < spaces; j++) {
        stdout.write(" ");
      }
      for (int j = 0; j < 2 * i - 1; j++) {
        stdout.write("*");
      }
      stdout.write("\n");
    }
  }
}