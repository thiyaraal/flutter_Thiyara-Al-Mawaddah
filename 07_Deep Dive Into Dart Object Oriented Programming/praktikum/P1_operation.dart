void main() {
  var faktorKelipatanterkecil = FaktorPersekutuanTerkecil(20, 35);
  var faktorKelipatanTerbesar = FaktorPersekutuanTerbesar(20, 35);

  faktorKelipatanTerbesar.hasil();
  faktorKelipatanterkecil.hasil();
}

class Matematika {
  hasil() {}
}

class FaktorPersekutuanTerkecil implements Matematika {
  late int x;
  late int y;

  FaktorPersekutuanTerkecil(int x, int y) {
    this.x = x;
    this.y = y;
  }
  @override
  hasil() {
    int hasilkpk = getLCM(x, y);
    print("KPK dari $x dan $y adalah $hasilkpk");
  }

  int getLCM(int x, int y) {
    return (x * y) ~/ gcd(x, y);
  }

  int gcd(int x, int y) {
    return x.gcd(y);
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  late int x;
  late int y;

  FaktorPersekutuanTerbesar(int x, int y) {
    this.x = x;
    this.y = y;
  }
  @override
  hasil() {
    int hasilfpb = gcd(x, y);
    print("FPB dari $x dan $y adalah $hasilfpb");
  }

  int gcd(int x, int y) {
    return x.gcd(y);
  }
}
