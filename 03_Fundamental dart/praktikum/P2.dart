void main() {
  var gabung = Gabung();
  var tabung = Tabung();

  gabung.penggabungan();
  tabung.volume();
}

class Gabung {
  void penggabungan() {
    // Soal_1
    String intro = "nama saya adalah ";
    String nama = "thiyara al-mawaddah ";
    String usia = "yang berusia 21 tahun\n";

    String gabungan = intro + nama + usia;

    print(gabungan);
  }
}

class Tabung {
  void volume() {
    // Soal_2
    double r = 6;
    double t = 12;
    final phi = 3.14;

    double volume_tabung = phi * (r * r) * t;

    print("Volume Tabung(Cylinder) dalah : $volume_tabung\n");
  }
}
