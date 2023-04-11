# Ringkasan Materi Rest API

1) REST API (Representational State Transfer Application Programming Interface) adalah sebuah protokol yang digunakan untuk menghubungkan dua aplikasi atau lebih dengan cara saling bertukar data melalui jaringan. Dalam pengembangan aplikasi Flutter, REST API sering digunakan untuk mengambil data dari server atau mengirim data dari aplikasi ke server.

2) Http : Proktol yang digunakan untuk berkirim data pada internet. Biasanya data tersebut berbentuk media web.
Pola Komunikasi :
* client mengirim request
* server mengolah dan membalas dengan memberi response
* Struktur request :

   - URL : alamat halaman yang akan diakses
   - MMethod HTTP yang digunakan untuk melakukan request, seperti get, post, put, delete
   - Header : Header HTTP yang menyediakan informasi tambahan mengenai request atau response, seperti Content-Type, Accept, dan lain-lain
   - Body : Body HTTP yang berisi data yang dikirimkan atau diterima dalam request atau response, dalam bentuk byte atau string
* Struktur response :

  - Status code : Kode status HTTP yang mengindikasikan apakah request berhasil atau gagal, serta jenis respons yang diterima. Status code yang umum digunakan antara lain 200 OK, 201 Created, 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 500 Internal Server Error, dan lain-lain.
  - Header : Header HTTP yang menyediakan informasi tambahan mengenai request atau response, seperti Content-Type, Content-Length, dan lain-lain.
  - Body : Body HTTP yang berisi data yang dikirimkan atau diterima dalam request atau response, dalam bentuk byte atau string. 

3) Dio adalah sebuah package HTTP client yang populer digunakan dalam pengembangan aplikasi Flutter. Dio menyediakan berbagai fitur seperti request dan response interceptors, pembatalan request, manajemen cookie, dan lain-lain.

* Berikut adalah contoh penggunaan Dio untuk melakukan request HTTP:


        import 'package:dio/dio.dart';

        void fetchData() async {
        try {
        Response response = await Dio().get('https://api.example.com/data');
        print(response.data);
        } catch (e) {
        print(e);
        }
        }
* Request dengan method POST:

        import 'package:dio/dio.dart';

        void createData() async {
        try {
        Response response = await Dio().post(
        'https://api.example.com/data',
        data: {'name': 'John Doe', 'age': 30},
        );
        print(response.data);
        } catch (e) {
        print(e);
        }
        }
* Request dengan method PUT:

        import 'package:dio/dio.dart';

        void updateData() async {
        try {
        Response response = await Dio().put(
        'https://api.example.com/data',
        data: {'name': 'John Doe', 'age': 30},
        );
        print(response.data);
        } catch (e) {
        print(e);
        }
        }
* Request dengan method DELETE:

        import 'package:dio/dio.dart';

        void deleteData() async {
        try {
        Response response = await Dio().delete('https://api.example.com/data/1');
        print(response.data);
        } catch (e) {
        print(e);
        }
        }

4) Serialisasi JSON : Serialization pada Flutter adalah proses mengubah data dari bentuk JSON menjadi objek Dart atau sebaliknya, dari objek Dart menjadi JSON. Untuk melakukan serialization, Anda dapat menggunakan package dart:convert yang sudah disediakan oleh Flutter.
Untuk mengubah objek Dart menjadi JSON, Anda dapat menggunakan method json.encode() dari package dart:convert. Berikut adalah contoh penggunaannya:

        import 'dart:convert';

        class Person {
        String name;
        int age;

        Person(this.name, this.age);

        Map<String, dynamic> toJson() {
        return {
        'name': name,
        'age': age,
        };
        }
        }

        void main() {
        Person person = Person('John Doe', 30);
        String jsonPerson = json.encode(person.toJson());
        print(jsonPerson);
        }
