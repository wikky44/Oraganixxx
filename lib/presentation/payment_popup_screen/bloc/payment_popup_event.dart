// ignore_for_file: must_be_immutable

part of 'payment_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentPopupEvent extends Equatable {}

/// Event that is dispatched when the PaymentPopup widget is first created.
class PaymentPopupInitialEvent extends PaymentPopupEvent {
  @override
  List<Object?> get props => [];
}
