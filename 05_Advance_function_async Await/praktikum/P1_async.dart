Future<void> main() async {
  List<int> list_data = [2, 4, 6, 8, 10]; //list data yang akan di kalikan
  int pengali = 5; // pengali
  List<int> res = await multiplyListData(list_data, pengali); 
  // output yang akan dihasilkan
  print("list data $list_data");
  print("pengali bernilai : $pengali");
  print("hasil list data setelah di kali dengan $pengali adalah $res\n");
}

// code untuk membuat fungsi asyncrounus untuk output
Future<List<int>> multiplyListData(List<int> data, int pengali) async {
  List<int> res = [];
  for (int item in data) {
    res.add(item * pengali);
    await Future.delayed(Duration(milliseconds: 30));
  }
  return res;
}
