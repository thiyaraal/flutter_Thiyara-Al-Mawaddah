# Bloc

1) BLoC atau Business Logic Component adalah design pattern yang membantu kamu untuk memisahkan presentation dengan business logic. Sehingga komponen pada project terbagi menjadi presentational component, BLoC, dan backend. Pattern ini memperbolehkan developer untuk fokus dalam mengkonversikan event menjadi state. BLoC mengelola state dengan menggunakan pendekatan stream atau reactive. Secra umum, data akan bergerak dari BLOC ke UI, atau sebaliknya dalam bentuk streams.

2) Manfaat kegunaan BloC 
    * Simple : Mudah dipahami dan bisa digunakan oleh developer dengan berbagai tingkat keterampilan
    * Powerful : Dapat membantu pembuatan aplikasi kompleks yang tersusun dari komponen-komponen yang lebih kecil
    * Testable : Mudah ditest

3) Terdapat beberapa istilah yang digunakan dalam penerapan BLoC, yaitu:

    a) Events adalah input untuk Bloc. Biasanya, event ini merupakan UI events seperti tombol yang ditekan atau load halaman.
    contoh penerapannya :

    b) States adalah output dari Bloc. Komponen dari UI dapat didefinisikan sebagai state dan bisa digambar ulang sesuai dengan state mereka saat ini.

    c) Transitions adalah perubahan dari satu state ke state lain. Transition terjadi ketika suatu event dikirim setelah mapEventToState dipanggil, tetapi sebelum state dari Bloc diupdate. Transition terdiri atas current state, event, dan next state
    
    d) Blocs adalah komponen yang mengonversi Stream dari event ke Stream yang mengubah state
