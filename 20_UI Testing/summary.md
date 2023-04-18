# Ringkasan Materi Mengenai UI Testing


1) Unit testing merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat meneriuma interaksi dan memberi respon kepada pengguna. UI testing biasanya dilakukan dengan menggunakan otomatisasi pengujian, di mana pengujian dilakukan pada elemen-elemen UI seperti tombol, menu, formulir, dan tampilan. Hal ini dilakukan untuk memastikan bahwa elemen-elemen tersebut berfungsi dengan benar dan memberikan respons yang tepat ketika diinteraksikan oleh pengguna.

2) Keuntungan UI Testing
 * Memastikan seluruh widget memberi tampilan yang sesuaai
 * Memastikan seluruh interaksi dapat di terima dengan baik
 * Menjadi ketentuan yang harus diikuti saat dipelrukan perubahan pada widget

3) Cara Melakukan UI Testing
 * Instalasi Package Testing (Pad file pubspec.yaml)

         dependencies:
            flutter_driver:
                sdk: flutter

 * untuk pembuatan script testing di lakukan pada folder "test" dan nama file harus diikuti dengan " _test.dart"
 contoh : contact_tes.dart

 * tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing dan diawali dengan testWidgets

        void main() {
        testWidgets(
            'cari judul contact',
            (WidgetTester tester) async {
            await tester.pumpWidget(const MaterialApp(
                home: MyHomePage(title: 'Contact'),
            ));
            expect(find.text('Contact'), findsOneWidget);
            },
        );
        }
 * perintah yang dijalankan untuk melakukan ui testing adalah flutter test yang dijalankan pada terminal. apabila test berhasil atau gagal akan mengeluarkan output berupa :
    - perintah berhasil
    
            flutter test
            00:o5 +1: All tests paased!
    
    - perintah gagal

            00:04 +2 -1: Mencari judul List Contacts [E]
            Test failed. See exception logs above.
            The test description was: Mencari judul List Contacts
            00:04 +2 -1: Some tests failed.
    *Error terjadi apa bila descripsi yang kita masukkan pada script tidak sesuai dengan apa yang ada pada ui , baiktu widget ataupun text yang ada didalamnya. sebagai infromasi sebaiknya saat ingin melakukan ui testing kita harus mengecek apa kah script yang kita masukkan sudah sesuai atau belum.
            


