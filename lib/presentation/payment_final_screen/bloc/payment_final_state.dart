// ignore_for_file: must_be_immutable

part of 'payment_final_bloc.dart';

/// Represents the state of PaymentFinal in the application.
class PaymentFinalState extends Equatable {
  PaymentFinalState({
    this.deliveryController,
    this.paymentFinalModelObj,
  });

  TextEditingController? deliveryController;

  PaymentFinalModel? paymentFinalModelObj;

  @override
  List<Object?> get props => [
        deliveryController,
        paymentFinalModelObj,
      ];
  PaymentFinalState copyWith({
    TextEditingController? deliveryController,
    PaymentFinalModel? paymentFinalModelObj,
  }) {
    return PaymentFinalState(
      deliveryController: deliveryController ?? this.deliveryController,
      paymentFinalModelObj: paymentFinalModelObj ?? this.paymentFinalModelObj,
    );
  }
}
