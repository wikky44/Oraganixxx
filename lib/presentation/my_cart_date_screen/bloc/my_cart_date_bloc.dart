import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/my_cart_date_screen/models/my_cart_date_model.dart';
part 'my_cart_date_event.dart';
part 'my_cart_date_state.dart';

/// A bloc that manages the state of a MyCartDate according to the event that is dispatched to it.
class MyCartDateBloc extends Bloc<MyCartDateEvent, MyCartDateState> {
  MyCartDateBloc(MyCartDateState initialState) : super(initialState) {
    on<MyCartDateInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<MyCartDateState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_07_00_13_00", "lbl_13_00_22_00"];
  }

  _onInitialize(
    MyCartDateInitialEvent event,
    Emitter<MyCartDateState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        myCartDateModelObj: state.myCartDateModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
