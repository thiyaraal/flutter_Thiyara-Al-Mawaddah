import 'package:bloc/bloc.dart';
import 'package:tugas_14/bloc/counter_event.dart';
import 'package:tugas_14/bloc/counter_state.dart';


// mendaftarkan event increment jika dipanggil akan melakukan perubahan state, dimana state sebelumnya di tambah 1 (emit)
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<Increment>(((event, emit) => emit(CounterState(state.value + 1)))); // menambah value
    on<Decrement>(((event, emit) => emit(CounterState(state.value - 1)))); // mengurangi value
  }
}
