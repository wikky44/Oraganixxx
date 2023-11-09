import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/payment_popup_screen/models/payment_popup_model.dart';
part 'payment_popup_event.dart';
part 'payment_popup_state.dart';

/// A bloc that manages the state of a PaymentPopup according to the event that is dispatched to it.
class PaymentPopupBloc extends Bloc<PaymentPopupEvent, PaymentPopupState> {
  PaymentPopupBloc(PaymentPopupState initialState) : super(initialState) {
    on<PaymentPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentPopupInitialEvent event,
    Emitter<PaymentPopupState> emit,
  ) async {}
}
