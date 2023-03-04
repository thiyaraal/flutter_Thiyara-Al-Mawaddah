void main() {
  BookStore TB = BookStore();
  BOOK buku_pertama =
      BOOK(111, "statistika", "math", "thiyaraal", 200000);
  BOOK buku_kedua =
      BOOK(222, "kalkulus", "program", "mawaddah", 100000);
  BOOK buku_ketiga =
      BOOK(333, "bahasa c", "Program", "al", 555000);

  TB.tambahData_buku(buku_pertama);
  TB.tambahData_buku(buku_kedua);
  TB.tambahData_buku(buku_ketiga);
  TB.hapusData_buku(buku_kedua);
  TB.hapusData_buku(buku_ketiga);
  TB.lihatData_buku();
}

class BOOK {
  int id;
  String judul;
  String penerbit;
  String kategori;
  int harga;

  BOOK(this.id, this.judul, this.kategori, this.penerbit, this.harga);
}

class BookStore {
  List<BOOK> listbuku = [];

  void tambahData_buku(BOOK buku) {
    listbuku.add(buku);
  }

  void hapusData_buku(BOOK buku) {
    listbuku.remove(buku);
  }

  void lihatData_buku() {
    if (listbuku.isEmpty) {
      print("Buku tidak tersedia");
    } else {
      print("Book list");
      for (var buku in listbuku) {
        print("- ID         : ${buku.id} ");
        print("  Judul      : ${buku.judul}");
        print("  Penerbit   : ${buku.penerbit}");
        print("  Kategori   : ${buku.kategori}");
        print("  Harga      : Rp.${buku.harga}\n");
      }
    }
  }
}
