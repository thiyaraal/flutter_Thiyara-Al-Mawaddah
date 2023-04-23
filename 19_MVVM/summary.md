# Ringkasan Materi MVVM

1) salah satu arsitektur pembuatan aplikasi berbasis GUI yang berfokus pada pemisahan antara kode untuk logika bisnis dan tampilan aplikasi. Dalam penerapannya, MVVM terbagi atas beberapa layer, yaitu Model, View, dan ViewModel.

2) Arsitektur MVVM
 * Model 
 Model / entity adalah representasi dari data yang digunakan pada business logic, dapat berupa Plain Old Java Object (POJO), Kotlin Data Classes, dll.
 * View
 Representasi UI dari sebuah aplikasi, pada Android sendiri view ini dapat berupa Activity atau Fragment.
 * ViewModel
 Layer yang berinteraksi langsung dengan Model, serta menyajikan data untuk View layer.

#) Cara kerja MVVM 
 * Activity bertanggung jawab sebagai View

* View akan melakukan observasi terhadap data yang disimpan di ViewModel. Apabila ada perubahan pada data di ViewModel, maka View bertanggung jawab untuk melakukan update pada antarmuka sesuai dengan data.

* ViewModel menyimpan data berupa LiveData agar View dapat melakukan observasi.

* ViewModel berkomunikasi dengan Repository (Model) untuk mendapatkan data atau perubahan data dan melakukan update terhadap data yang dimiliki.

* Repository bertanggung jawab untuk mengatur sumber data yang dibutuhkan. Data bisa didapatkan baik dari server maupun dari database lokal menggunakan SQLite.