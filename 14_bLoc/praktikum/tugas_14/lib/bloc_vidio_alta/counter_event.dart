import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// event untuk menambah nilai
class Increment extends CounterEvent {}

// mengurangi nilai
class Decrement extends CounterEvent {}