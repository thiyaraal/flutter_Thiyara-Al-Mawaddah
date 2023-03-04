void main() {
    List<String> nilai_data1 = ["amuse","tommy kaira","spoon","HKS","litchfield","amuse","HKS"];
    List<String> nilai_data2 = ["JS Racing","amuse","spoon","spoon","JS Racing","amuse"];
    //// data kedua
    print("data pertama : $nilai_data1");
    nilai_data1 = nilai_data1.toSet().toList();
    print("setelah pembersian data yang unik $nilai_data1\n");
    //// data kedua 
    print("data kedua : $nilai_data2");
    nilai_data2 = nilai_data2.toSet().toList();
    print("setelah pembersian data yang unik $nilai_data2");
  }
