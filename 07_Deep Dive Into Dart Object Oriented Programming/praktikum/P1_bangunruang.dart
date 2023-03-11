import 'dart:ffi';

class BangunRuang {
  int panjang = 0;
  int lebar = 0;
  int tinggi = 0;
  volume() {}
}

class Kubus extends BangunRuang {
  int sisi = 0;

  void volume() {
    int rumusVolumeKubus = sisi * sisi * sisi;
    print("volume kubus adalah $rumusVolumeKubus");
  }
}
class Balok extends BangunRuang {
  void volume() {
    int rumusVolumeBalok = panjang * lebar * tinggi;
    print("volume balok adalah $rumusVolumeBalok");
  }
}

void main() {
  var bangun1 = Kubus();
  bangun1.sisi = 6;
  bangun1.volume();

  var bangun2 = Balok();
  bangun2.panjang = 12;
  bangun2.lebar = 4;
  bangun2.tinggi= 8;

  bangun2.volume();
}
