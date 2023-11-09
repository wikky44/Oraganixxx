// ignore_for_file: must_be_immutable

part of 'delivery_to_one_bloc.dart';

/// Represents the state of DeliveryToOne in the application.
class DeliveryToOneState extends Equatable {
  DeliveryToOneState({
    this.radioGroup = "",
    this.deliveryToOneModelObj,
  });

  DeliveryToOneModel? deliveryToOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        deliveryToOneModelObj,
      ];
  DeliveryToOneState copyWith({
    String? radioGroup,
    DeliveryToOneModel? deliveryToOneModelObj,
  }) {
    return DeliveryToOneState(
      radioGroup: radioGroup ?? this.radioGroup,
      deliveryToOneModelObj:
          deliveryToOneModelObj ?? this.deliveryToOneModelObj,
    );
  }
}
