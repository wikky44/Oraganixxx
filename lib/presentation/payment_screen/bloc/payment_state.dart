// ignore_for_file: must_be_immutable

part of 'payment_bloc.dart';

/// Represents the state of Payment in the application.
class PaymentState extends Equatable {
  PaymentState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.paymentModelObj,
  });

  PaymentModel? paymentModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        paymentModelObj,
      ];
  PaymentState copyWith({
    String? radioGroup,
    String? radioGroup1,
    PaymentModel? paymentModelObj,
  }) {
    return PaymentState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      paymentModelObj: paymentModelObj ?? this.paymentModelObj,
    );
  }
}
