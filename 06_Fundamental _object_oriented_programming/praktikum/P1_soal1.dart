void main() {
  Mobil jalan = Mobil();
  jalan.tambahMuatan(Hewan());
}
/// inisialisasi kelas hewan
class Hewan {
  double berat_hewan = 20;
}
// inisialisasi kelas mobil
class Mobil {
  final kapasitas_hewan = 1000;
  double total_muatan = 0;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan data_hewan) {
    // menambah muatan hewan
    if (total_muatan + data_hewan.berat_hewan <= kapasitas_hewan) {
      muatan.add(data_hewan);
      total_muatan += data_hewan.berat_hewan;
      print('Muatan mobil seberat : $total_muatan ton');} 
    else 
    {print('Berat hewan telah melebihi kapasitas muatan mobil');}
  }
}