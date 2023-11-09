// ignore_for_file: must_be_immutable

part of 'track_order_bloc.dart';

/// Represents the state of TrackOrder in the application.
class TrackOrderState extends Equatable {
  TrackOrderState({
    this.orderConfirmedTime = false,
    this.orderPlacedStatus = false,
    this.orderConfirmedTime1 = false,
    this.orderConfirmed = false,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.trackOrderModelObj,
  });

  TrackOrderModel? trackOrderModelObj;

  bool orderConfirmedTime;

  bool orderPlacedStatus;

  bool orderConfirmedTime1;

  bool orderConfirmed;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  @override
  List<Object?> get props => [
        orderConfirmedTime,
        orderPlacedStatus,
        orderConfirmedTime1,
        orderConfirmed,
        radioGroup,
        radioGroup1,
        radioGroup2,
        trackOrderModelObj,
      ];
  TrackOrderState copyWith({
    bool? orderConfirmedTime,
    bool? orderPlacedStatus,
    bool? orderConfirmedTime1,
    bool? orderConfirmed,
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    TrackOrderModel? trackOrderModelObj,
  }) {
    return TrackOrderState(
      orderConfirmedTime: orderConfirmedTime ?? this.orderConfirmedTime,
      orderPlacedStatus: orderPlacedStatus ?? this.orderPlacedStatus,
      orderConfirmedTime1: orderConfirmedTime1 ?? this.orderConfirmedTime1,
      orderConfirmed: orderConfirmed ?? this.orderConfirmed,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      trackOrderModelObj: trackOrderModelObj ?? this.trackOrderModelObj,
    );
  }
}
