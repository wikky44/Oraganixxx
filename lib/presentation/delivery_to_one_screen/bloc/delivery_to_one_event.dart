// ignore_for_file: must_be_immutable

part of 'delivery_to_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliveryToOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliveryToOneEvent extends Equatable {}

/// Event that is dispatched when the DeliveryToOne widget is first created.
class DeliveryToOneInitialEvent extends DeliveryToOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DeliveryToOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
