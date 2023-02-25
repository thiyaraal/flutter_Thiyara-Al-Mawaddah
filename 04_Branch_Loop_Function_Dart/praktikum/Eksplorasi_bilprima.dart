import 'dart:io';

void main() {
  int bilangan; 
  print(" bilangan: "); 
  bilangan = int.parse(stdin.readLineSync()??("isi"));

  for (int k = 2; k <= bilangan / 2; k++) {
    if (bilangan % k == 0) {
    print('$bilangan merupakan bukan bilangan prima');
      break;
    }
    else {
      print('$bilangan merupakan bilangan prima');
    }
  }}

