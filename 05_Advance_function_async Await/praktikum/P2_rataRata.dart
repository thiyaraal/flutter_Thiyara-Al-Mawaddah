  void main() {
    List<int> list = [7, 5,3,5,2,1];
    int len = list.length;
    int total = 0;
    int ceil;
      for (var data in list) {
        total += data;
      }
      double rata_rata = total / len;
      print(rata_rata.ceil());
    }
