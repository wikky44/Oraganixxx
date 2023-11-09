// ignore_for_file: must_be_immutable

part of 'deliver_to_current_location_bloc.dart';

/// Represents the state of DeliverToCurrentLocation in the application.
class DeliverToCurrentLocationState extends Equatable {
  DeliverToCurrentLocationState({
    this.radioGroup = "",
    this.deliverToCurrentLocationModelObj,
  });

  DeliverToCurrentLocationModel? deliverToCurrentLocationModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        deliverToCurrentLocationModelObj,
      ];
  DeliverToCurrentLocationState copyWith({
    String? radioGroup,
    DeliverToCurrentLocationModel? deliverToCurrentLocationModelObj,
  }) {
    return DeliverToCurrentLocationState(
      radioGroup: radioGroup ?? this.radioGroup,
      deliverToCurrentLocationModelObj: deliverToCurrentLocationModelObj ??
          this.deliverToCurrentLocationModelObj,
    );
  }
}
