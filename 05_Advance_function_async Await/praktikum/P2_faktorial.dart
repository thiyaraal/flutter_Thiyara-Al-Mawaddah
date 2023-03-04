import 'dart:io';

Future<void> main() async {
    print("input nilai yang ingin di faktorial:");
    int faktorial_ = int.parse(stdin.readLineSync()!);

    BigInt hasil = await faktor(faktorial_);
    await Future.delayed(Duration(seconds: 3),
        () => print("Faktorial dari $faktorial_ : $hasil"));
  }

  Future<BigInt> faktor(int angka) async {
    if (angka == 0 || angka == 1) {
      return BigInt.one;
    } else {
      BigInt result = BigInt.one;
      for (int j = 2; j <= angka; j++) {
        await Future.delayed(
            const Duration(milliseconds: 20), () => result *= BigInt.from(j));
      }
      return result;
    }
  }