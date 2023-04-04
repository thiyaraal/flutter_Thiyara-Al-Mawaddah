# State Management Provider

1)Provider merupakan sebuah widget yang biasa digunakan oleh beberapa orang untuk mengakses state management yang berasal dari ChangeNotifier, Jika kalian pernah mencoba flutter_bloc dalam membuat sebuah state management, maka provider isinya hanyalah BlocBuilder, BlocListener dan kawan - kawannya yang tujuannya hanya menkonsumsi perubahan state pada ChangeNotifier.
merupakan package yang harus di instal agar dapat digunakan dalam sebuah project.
cth: flutter pub get 
atau dengan mebnambah kan path provider pada file pubspec.yml

2) Manfaat dalam penggunaan provider
    * Mengalokasikan resource menjadi lebih sederhana
    * Lazy-loading
    * Mengurangi boilerplate saat membuat kelas baru setiap saat
    * Support dengan devtool, karena status aplikasi kamu
    akan terlihat di flutter devtool
    * Peningkatan skalabilitas untuk class yang memanfaatkan mekanisme listen yang dibangun secara kompleks.

3) a. ChangeNotifierProvider 
- Dalam penggunaan ChangeNotifierProvider kalian dapat langsung membuat object pada ChangeNotifierProvider atau langsung di inisialisasi pada halaman namun harap di ingat hal tersebut tidak dapat dicombine dengan membuat object notifier secara bersamaan baik pada ChangeNotifierProvider dan sebuah halaman karena itu dapat membuat multiple instance object atau objek ChangeNotifier ganda.
    contoh:
    ChangeNotifierProvider< UnauthenticatedNotifier >(
      create: (_) => UnauthenticatedNotifier(),
      child: SomeWidget()
)
 b. MultiProvider
- Jika dalam suatu kasus kalian perlu menggunakan ChangeNotifier lebih dari satu, saya sarankan untuk menggunakan MultiProvider hal ini akan mempermudah kalian dalam membungkus widget yang mengkonsumsi state management dengan jumlah lebih dari satu.
    Contoh : 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => _notifier)
      ],
      child: SomeWidget()
      )

