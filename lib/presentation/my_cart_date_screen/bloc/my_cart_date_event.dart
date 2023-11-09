// ignore_for_file: must_be_immutable

part of 'my_cart_date_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCartDate widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCartDateEvent extends Equatable {}

/// Event that is dispatched when the MyCartDate widget is first created.
class MyCartDateInitialEvent extends MyCartDateEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends MyCartDateEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
