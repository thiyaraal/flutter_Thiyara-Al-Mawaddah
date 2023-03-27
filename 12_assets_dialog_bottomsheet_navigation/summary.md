# Ringkasan Materi BottomSheet , Alert Dialog, Assets dan Navigation 

1) Assets : file yang di bundled dan di deployed bersamaan dengan aplikasi dengan tipe seperti : static data (JSON files), icon, images, dan font fule (ttf)
- asset berada pada file pubspec.yaml
- gunakan karakter " / " untuk mengakses assetd dibawah satu directori name .
Adapaun jenis asset yang digunakan :
* Image : untuk menampilkan gambar dari project asset yang telah dimasukkan dalam file pubspec.yaml dengan format gambar JPEG, WebPG, GIF, Animation Web/GIF, BMP, dan WBMP .
    - Menggunakan widget Imahe
    - Membutuhkan properti image dengan nilai class AssetImage()
    - Menggubakan method image.asset 
* font  : penggunaan fonst dengan style tertentu , dengan custom font dari package. cara penggunaan :
    - donwload font ( fonts.google.com)
    - import file .ttf
    - daftarkan font pada pubspec.yaml
    - mengatur font sebagai default
    - gunakan font di spesifik widget
    - tambahkan package goolge_fonts di depedencies
    - import packages di file dart
    - gunakan font dengan memanggil GoogleFonts.namaFont(roboto) --> example

2) * BottomSheet : muncul dari bawah layar aplikasi menggunakan fungsi bawaan flutter dengan dua properti yaitu context dan builder. cara pemakaian :
   - buat file dart baru dengan komponen didalamnya
   - menggantikan Container pada buildershowBottomSheet menjadi ProfileSheet()
   * Allert Dialog : menginformasikan pengguna tentang situasi tertentu bisa digunakan untuk mendapatkan input dari user yang membutuhkan helper method showdialog . cara pemakian :
   - Menambhkan Alert Dialog
   - memanggil fungsi onPressed pada IconButton
   - showDialog membutuhkan context dan builder
   - di builder akan me retrun AlertDialog
   - didalam content bisa dimasukkan widget text, gambar, dan animasi gambar
   - action bis aditambahkan button untuk menerima respon dari user
   - menambahkan fungsi Navigator.pop(context) dan scaffoldMessenger.

3) Navigation : berpindah halaman satu ke halaman yang lain
   * Navigator push : perpindahakn halaman 
   * Navigator pop : Kembali kehalaman sebelumnya
   * Navigation dengan Named Route : tiap halaman memiliki alamat yang disebut route , exmaple :
   initialRoute: '/'
   routes : {
      '/' :(_) => const HomeScreen(),
      '/about' : (_) => const AboutScreen(),
   }



