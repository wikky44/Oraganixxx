import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/payment_screen/models/payment_model.dart';
part 'payment_event.dart';
part 'payment_state.dart';

/// A bloc that manages the state of a Payment according to the event that is dispatched to it.
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc(PaymentState initialState) : super(initialState) {
    on<PaymentInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<PaymentState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<PaymentState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["msg_debit_credit_card", "lbl_net_banking", "lbl_upi"];
  }

  _onInitialize(
    PaymentInitialEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
      radioGroup1: "",
    ));
    emit(state.copyWith(
        paymentModelObj: state.paymentModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
