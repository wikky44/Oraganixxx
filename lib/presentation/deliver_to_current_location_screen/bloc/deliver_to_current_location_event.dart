// ignore_for_file: must_be_immutable

part of 'deliver_to_current_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliverToCurrentLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliverToCurrentLocationEvent extends Equatable {}

/// Event that is dispatched when the DeliverToCurrentLocation widget is first created.
class DeliverToCurrentLocationInitialEvent
    extends DeliverToCurrentLocationEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DeliverToCurrentLocationEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
