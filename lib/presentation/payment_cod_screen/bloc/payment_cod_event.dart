// ignore_for_file: must_be_immutable

part of 'payment_cod_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentCod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentCodEvent extends Equatable {}

/// Event that is dispatched when the PaymentCod widget is first created.
class PaymentCodInitialEvent extends PaymentCodEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends PaymentCodEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends PaymentCodEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
