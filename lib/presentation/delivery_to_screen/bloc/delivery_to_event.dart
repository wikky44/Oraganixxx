// ignore_for_file: must_be_immutable

part of 'delivery_to_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliveryTo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliveryToEvent extends Equatable {}

/// Event that is dispatched when the DeliveryTo widget is first created.
class DeliveryToInitialEvent extends DeliveryToEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DeliveryToEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
