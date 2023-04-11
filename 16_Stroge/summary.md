# Ringkasan Materi Stroge

1) Flutter menyediakan beberapa opsi penyimpanan data, seperti shared preferences, local storage, dan SQLite sebagai local database. Setiap opsi penyimpanan data memiliki kegunaannya masing-masing. Berikut adalah penjelasan singkat tentang kegunaan dari masing-masing opsi penyimpanan data di Flutte

* Shared preferences: Digunakan untuk menyimpan data yang sederhana dan kecil dalam bentuk key-value pair. Contohnya seperti menyimpan pengaturan aplikasi seperti bahasa, tema, dan preferensi pengguna lainnya.

* Local storage: Digunakan untuk menyimpan data yang lebih besar dan kompleks, seperti file gambar, video, atau dokumen. Local storage juga dapat digunakan untuk menyimpan data yang diperlukan oleh aplikasi, seperti cache atau data yang diunduh.

* SQLite: Digunakan untuk menyimpan data yang sangat kompleks, seperti tabel dan relasi antar tabel. SQLite digunakan ketika aplikasi membutuhkan penyimpanan data yang lebih kuat dan terstruktur.

2) SharedPreferences : Ini adalah jenis storage yang digunakan untuk menyimpan data kecil seperti pengaturan aplikasi atau preferensi pengguna. SharedPreferences menyimpan data dalam bentuk key-value pairs dan hanya dapat menyimpan tipe data dasar seperti string, boolean, dan integer.

* Untuk menggunakan SharedPreferences pada Flutter,        pertama-tama Anda perlu menambahkan package shared_preferences ke dalam pubspec.yaml file Anda. 

        dependencies:
            flutter:
                sdk: flutter
            shared_preferences: ^2.0.6
* Setelah itu, import package shared_preferences ke dalam kode Flutter Anda:

        import 'package:shared_preferences/shared_preferences dart';
* Untuk menyimpan data pada SharedPreferences, Anda dapat menggunakan kode berikut:

        // Mendapatkan instance SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();

        // Menyimpan data string
        await prefs.setString('key', 'value');

        // Menyimpan data integer
        await prefs.setInt('key', 123);

        // Menyimpan data boolean
        await prefs.setBool('key', true);

        // Menyimpan data double
        await prefs.setDouble('key', 3.14);
* Untuk mengambil data dari SharedPreferences, Anda dapat menggunakan kode berikut:

        // Mendapatkan instance SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();

        // Mengambil data string
        String? stringValue = prefs.getString('key');

        // Mengambil data integer
        int? intValue = prefs.getInt('key');

        // Mengambil data boolean
        bool? boolValue = prefs.getBool('key');

        // Mengambil data double
        double? doubleValue = prefs.getDouble('key');
* Anda juga dapat menghapus data dari SharedPreferences dengan menggunakan kode berikut:

        // Mendapatkan instance SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();

        // Menghapus data dengan key tertentu
        await prefs.remove('key');

        // Menghapus semua data SharedPreferences
        await prefs.clear();

3) Dalam Flutter, Anda dapat menggunakan SQLite sebagai local database untuk menyimpan data yang lebih kompleks seperti tabel dan relasi antar tabel. SQLite merupakan database open source yang ringan dan mendukung berbagai platform.
Untuk menggunakan SQLite pada Flutter, pertama-tama Anda perlu menambahkan package sqflite ke dalam pubspec.yaml file Anda. Berikut adalah contoh kode untuk menambahkan package tersebut:

* Tambahkan package

        dependencies:
        flutter:
            sdk: flutter
        sqflite: ^2.0.0+3
* Setelah itu, import package sqflite ke dalam kode Flutter Anda:

        import 'package:sqflite/sqflite.dart';
        import 'package:path/path.dart';
* Untuk membuat database baru, Anda dapat menggunakan kode berikut:

        // Membuka database dan membuat file jika belum ada
        Database database = await openDatabase(
        join(await getDatabasesPath(), 'example_database.db'),
        onCreate: (db, version) {
            // Membuat tabel baru pada database
            return db.execute(
                'CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');
        },
        version: 1,
        );
* Kode di atas akan membuka database dengan nama "example_database.db" dan akan membuat tabel baru "users" jika tabel tersebut belum ada pada database.
Untuk mengambil data dari tabel, Anda dapat menggunakan kode berikut:

        // Mengambil semua data dari tabel
        List<Map<String, dynamic>> users = await database.query('users');

        // Mengambil data dengan kriteria tertentu
        List<Map<String, dynamic>> users = await database.query(
        'users',
        where: 'age > ?',
        whereArgs: [18],
        );

* Untuk menyimpan data ke dalam tabel, Anda dapat menggunakan kode berikut:

        // Menyimpan data ke dalam tabel
        await database.insert(
        'users',
        {'name': 'John Doe', 'age': 25},
        );

        // Mengupdate data di dalam tabel
        await database.update(
        'users',
        {'age': 30},
        where: 'id = ?',
        whereArgs: [1],
        );

        // Menghapus data di dalam tabel
        await database.delete(
        'users',
        where: 'id = ?',
        whereArgs: [1],
        );

2) 