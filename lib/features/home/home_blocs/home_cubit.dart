import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<int> {
  //Constructor
  HomeCubit(super.initialState);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}