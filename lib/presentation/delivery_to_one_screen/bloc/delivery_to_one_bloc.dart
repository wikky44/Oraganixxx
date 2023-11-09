import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/delivery_to_one_screen/models/delivery_to_one_model.dart';
part 'delivery_to_one_event.dart';
part 'delivery_to_one_state.dart';

/// A bloc that manages the state of a DeliveryToOne according to the event that is dispatched to it.
class DeliveryToOneBloc extends Bloc<DeliveryToOneEvent, DeliveryToOneState> {
  DeliveryToOneBloc(DeliveryToOneState initialState) : super(initialState) {
    on<DeliveryToOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DeliveryToOneState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["msg_current_location", "lbl_new_adderss"];
  }

  _onInitialize(
    DeliveryToOneInitialEvent event,
    Emitter<DeliveryToOneState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        deliveryToOneModelObj: state.deliveryToOneModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
