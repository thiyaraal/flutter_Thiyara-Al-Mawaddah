# Ringkasan Finite State & Unit testing

1) Finite State Machine (FSM)adalah sebuah metodologi perancangan sistem kontrol yang menggambarkan tingkah laku atau prinsip kerja sistem dengan menggunakan tiga hal berikut: State(Keadaan), Event(kejadian) dan action(aksi).

Unit Testing adalah proses pengembangan perangkat lunak di mana bagian aplikasi terkecil yang dapat diuji, yang disebut unit, diperiksa secara individual dan independen untuk mendapatkan hasil tepat. Metodologi pengujian ini dilakukan selama proses pengembangan oleh Software Developer.

2) 3 state yang menunjukkan kejadian dalam suatu proses
 * IDDLE : saat terjadi suatu  proses
 * RUNNING : saat proses sedang berjalan
 * ERROR : saat proses gagal diselesaikan

 * Contoh sukses Iddle akan berubah menjadi running dan running akan kembali menjadi iddle saat proses selesai

 * contoh gagal, iddle berubah menjadi running saat proses berjalan dan rungging berubah menjadi error saat terjadi keggagaln dan error kembali menjadi iddle.


3) * Implemestasi view model

    import 'package:flutter/foundation.dart';

    enum ViewState { Loading, Success, Error }

    class MyViewModel with ChangeNotifier {
    ViewState _state = ViewState.Loading;
    ViewState get state => _state;

    Future<void> fetchData() async {
        try {
        _state = ViewState.Loading;
        notifyListeners();
        final data = await repository.fetchData();
        _state = ViewState.Success;
        notifyListeners();
        // do something with data
        } catch (e) {
        _state = ViewState.Error;
        notifyListeners();
        }
    }
    }

   * Implementasi finite state pada widget

        import 'package:flutter/material.dart';

        enum ViewState { Loading, Success, Error }

        class MyWidget extends StatefulWidget {
        @override
        _MyWidgetState createState() => _MyWidgetState();
        }

        class _MyWidgetState extends State<MyWidget> {
        ViewState _state = ViewState.Loading;

        Future<void> fetchData() async {
            try {
            setState(() {
                _state = ViewState.Loading;
            });
            final data = await repository.fetchData();
            setState(() {
                _state = ViewState.Success;
            });
            // do something with data
            } catch (e) {
            setState(() {
                _state = ViewState.Error;
            });
            }
        }

        @override
        void initState() {
            super.initState();
            fetchData();
        }

        @override
        Widget build(BuildContext context) {
            switch (_state) {
            case ViewState.Loading:
                return Center(child: CircularProgressIndicator());
            case ViewState.Success:
                return Text('Data loaded successfully');
            case ViewState.Error:
                return Text('An error occurred while loading data');
            }
        }
        }