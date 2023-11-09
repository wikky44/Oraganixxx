// ignore_for_file: must_be_immutable

part of 'deliver_to_current_location_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliverToCurrentLocationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliverToCurrentLocationOneEvent extends Equatable {}

/// Event that is dispatched when the DeliverToCurrentLocationOne widget is first created.
class DeliverToCurrentLocationOneInitialEvent
    extends DeliverToCurrentLocationOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DeliverToCurrentLocationOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
