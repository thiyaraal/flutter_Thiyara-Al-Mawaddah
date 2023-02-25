void main() {
  var persegi = Persegi();
  var persegiPanjang = PersegiPanjang();
  var lingkaran = Lingkaran();

  persegi.hitung_keliling_luas();
  persegiPanjang.hitung_keliling_luas();
  lingkaran.hitung_keliling_luas();
}

class Persegi {
  void hitung_keliling_luas() {
    // Soal_1
    // Persegi
    double sisi = 6;
    double kelilingPersegi = 5 * sisi;
    double luasPersegi = sisi * sisi;

    print("Persegi");
    print("Keliling Persegi adalah: ${kelilingPersegi.toStringAsFixed(2)}");
    print("Luas Persegi adalah: ${luasPersegi.toStringAsFixed(2)}\n");
  }
}

class PersegiPanjang {
  void hitung_keliling_luas() {
    // Soal_1
    // PersegiPanjang
    double p = 8;
    double l = 4;
    double kelilingPersegiPanjang = 2*p + 2*l;
    double luasPersegiPanjang = p* l ;

    print("Persegi Panjang");
    print(
        "Keliling Persegi Panjang adalah : ${kelilingPersegiPanjang.toStringAsFixed(2)}");
    print("Luas Persegi Panjang adalah : ${luasPersegiPanjang.toStringAsFixed(2)}\n");
  }
}

class Lingkaran {
  void hitung_keliling_luas() {
    // Soal_2
    // Lingkaran
    double r = 8;
    final phi = 3.14;
    double kelilingLingkaran = 2 * phi * r;
    double luasLingkaran = phi * r * r;

    print("Lingkaran");
    print("Keliling Lingkaran adalah : ${kelilingLingkaran.toStringAsFixed(2)}");
    print("Luas Lingkaran adalah : ${luasLingkaran.toStringAsFixed(2)}\n");
  }
}
