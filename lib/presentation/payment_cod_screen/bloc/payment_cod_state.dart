// ignore_for_file: must_be_immutable

part of 'payment_cod_bloc.dart';

/// Represents the state of PaymentCod in the application.
class PaymentCodState extends Equatable {
  PaymentCodState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.paymentCodModelObj,
  });

  PaymentCodModel? paymentCodModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        paymentCodModelObj,
      ];
  PaymentCodState copyWith({
    String? radioGroup,
    String? radioGroup1,
    PaymentCodModel? paymentCodModelObj,
  }) {
    return PaymentCodState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      paymentCodModelObj: paymentCodModelObj ?? this.paymentCodModelObj,
    );
  }
}
