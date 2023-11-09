// ignore_for_file: must_be_immutable

part of 'payment_popup_bloc.dart';

/// Represents the state of PaymentPopup in the application.
class PaymentPopupState extends Equatable {
  PaymentPopupState({this.paymentPopupModelObj});

  PaymentPopupModel? paymentPopupModelObj;

  @override
  List<Object?> get props => [
        paymentPopupModelObj,
      ];
  PaymentPopupState copyWith({PaymentPopupModel? paymentPopupModelObj}) {
    return PaymentPopupState(
      paymentPopupModelObj: paymentPopupModelObj ?? this.paymentPopupModelObj,
    );
  }
}
