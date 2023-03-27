# Ringkasan Materi Form Advance & Form Input


1) -  Advance Form : menyediakan kolom input seperti pemilihan tanggal, pemilihan warna .
   - Input Form : masukan adari pengguna yang kemudian di proses atau di olah agar dapat di pakai sesuai kebutuhan


2) Form menerima isian data dari pengguna dengan isiaan data dapat lebih dari satu . menggunakamn stateful widget dan keadaan form disimpan menggunakan GlobalKey< FormatState > . Adapun Jenis Form :
* a. Input : menerima isiand ata dari pengguna yang isiannya dapat lebih dari satu sebagai contoh widget adalah : Text field, Rdio BUtton, Checkbox, 

* Button : harus di tekan atau di klik dan bersifat seperti tombol , adapaun contoh widget button : ElevatedButton ,IconButton, TextButton dll.

3) Picker :
* Date Picker : Widget diman user dapat memasukkan tanggal . dengan cara penggunaannya :
- menggunakan fungsi bawaan flutter yaitu ShowDatePicker
- Memiliki tipe data Futer
- menampilkan dialoh material design date picker
- menambahkan packages intl di pubspec.yaml
- memberi variabel berupa : (sebagai contoh)
   * Class _HomePageState extend State< HomePage > {
    DateTime -dueDate = DateTime.now();
    final currentDate = DateTime.now();
   }
* Color Picker : Widget dimana user bis amemilih color / warna di berbagai macam kondisi. ada pun cara penggunaanya :
- menggunakan packages flutter_collorpicker
- menambahkan packages flutter_colorpicker di pubspec.yaml
- menambahkan variabel (sebagai contoh):
  * Color _currentColor = Colors.orange ( warna bebas)
- Menambahkan fungsi showdialog dalam onpressed dengan return widgetAlertDialog
- impor packages flutter_colorpicker dalma file dart

* file picker :  kemampuan widget untuk mengakses storage dengan memilih dan membuka file adapaun cara membuat nya :
- menggunakan packages file_picker dan  open file
- menambahkan packages file_picker dan open_file di pubsspec.yaml
- import packages file_picker dan open_file di dalam file dart
- membuat fungsi untuk mengexplore dan memilih file dari storage
- memanggil fungsi _picFile didalam onPressed
- membuat fungsi untuk membuka files yang telah dipilih (contoh) :
 * void _openFile(PlatformFile file){
    OpenFile.open(file.path);
 }
- Mengambil file dari object result dan Memanggil Fungsi _openFile didalam fungsi _pickFile
