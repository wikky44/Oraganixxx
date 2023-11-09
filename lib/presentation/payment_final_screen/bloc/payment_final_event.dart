// ignore_for_file: must_be_immutable

part of 'payment_final_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentFinal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentFinalEvent extends Equatable {}

/// Event that is dispatched when the PaymentFinal widget is first created.
class PaymentFinalInitialEvent extends PaymentFinalEvent {
  @override
  List<Object?> get props => [];
}
