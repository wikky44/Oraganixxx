// ignore_for_file: must_be_immutable

part of 'deliver_to_current_location_one_bloc.dart';

/// Represents the state of DeliverToCurrentLocationOne in the application.
class DeliverToCurrentLocationOneState extends Equatable {
  DeliverToCurrentLocationOneState({
    this.radioGroup = "",
    this.deliverToCurrentLocationOneModelObj,
  });

  DeliverToCurrentLocationOneModel? deliverToCurrentLocationOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        deliverToCurrentLocationOneModelObj,
      ];
  DeliverToCurrentLocationOneState copyWith({
    String? radioGroup,
    DeliverToCurrentLocationOneModel? deliverToCurrentLocationOneModelObj,
  }) {
    return DeliverToCurrentLocationOneState(
      radioGroup: radioGroup ?? this.radioGroup,
      deliverToCurrentLocationOneModelObj:
          deliverToCurrentLocationOneModelObj ??
              this.deliverToCurrentLocationOneModelObj,
    );
  }
}
