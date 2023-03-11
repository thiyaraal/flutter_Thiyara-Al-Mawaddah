class Shape {
  void getarea() {}
  void getPerimeter() {}
}

class Circle implements Shape {
  int r = 2;

  @override
  getarea() {
    double hasil = 3.14 * r * r;
    print(" luas lingkaran adalah = $hasil");
  }

  @override
  void getPerimeter() {
    double hasil = 3.14 * r * 2;
    print(" keliling lingkaran adalah = $hasil\n");
  }
}

class Square implements Shape {
  int side = 8;

  @override
  getarea() {
    int hasil = side * side;
    print(" luas persegi adalah = $hasil");
  }

  @override
  void getPerimeter() {
    int hasil = 4 * side;
    print(" keliling persegi adalah = $hasil\n");
  }
}

class Retangle implements Shape {
  int width = 4;
  int height = 8;
  @override
  getarea() {
    int hasil = width * height;
    print(" luas persegi panjang adalah = $hasil");
  }

  @override
  void getPerimeter() {
    int hasil = 2 * (width + height);
    print(" keliling persegi panjang  adalah = $hasil");
  }
}

void main() {
  var segitiga = Circle();
  var persegi = Square();
  var persegiPanjang = Retangle();

  persegi.getarea();
  persegi.getPerimeter();

  segitiga.getarea();
  segitiga.getPerimeter();

  persegiPanjang.getarea();
  persegiPanjang.getPerimeter();
}
