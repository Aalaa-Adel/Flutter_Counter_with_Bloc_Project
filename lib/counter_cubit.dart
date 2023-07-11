import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increase() {
    return emit(state + 1);
  }

  void decrease() {
    return emit(state - 1);
  }
}
