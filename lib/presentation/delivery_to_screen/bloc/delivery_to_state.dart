// ignore_for_file: must_be_immutable

part of 'delivery_to_bloc.dart';

/// Represents the state of DeliveryTo in the application.
class DeliveryToState extends Equatable {
  DeliveryToState({
    this.radioGroup = "",
    this.deliveryToModelObj,
  });

  DeliveryToModel? deliveryToModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        deliveryToModelObj,
      ];
  DeliveryToState copyWith({
    String? radioGroup,
    DeliveryToModel? deliveryToModelObj,
  }) {
    return DeliveryToState(
      radioGroup: radioGroup ?? this.radioGroup,
      deliveryToModelObj: deliveryToModelObj ?? this.deliveryToModelObj,
    );
  }
}
