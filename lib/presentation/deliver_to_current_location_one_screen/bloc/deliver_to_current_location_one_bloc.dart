import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/deliver_to_current_location_one_screen/models/deliver_to_current_location_one_model.dart';
part 'deliver_to_current_location_one_event.dart';
part 'deliver_to_current_location_one_state.dart';

/// A bloc that manages the state of a DeliverToCurrentLocationOne according to the event that is dispatched to it.
class DeliverToCurrentLocationOneBloc extends Bloc<
    DeliverToCurrentLocationOneEvent, DeliverToCurrentLocationOneState> {
  DeliverToCurrentLocationOneBloc(DeliverToCurrentLocationOneState initialState)
      : super(initialState) {
    on<DeliverToCurrentLocationOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DeliverToCurrentLocationOneState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["msg_current_location", "lbl_new_adderss"];
  }

  _onInitialize(
    DeliverToCurrentLocationOneInitialEvent event,
    Emitter<DeliverToCurrentLocationOneState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        deliverToCurrentLocationOneModelObj:
            state.deliverToCurrentLocationOneModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
