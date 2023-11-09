// ignore_for_file: must_be_immutable

part of 'my_cart_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCartProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCartProductEvent extends Equatable {}

/// Event that is dispatched when the MyCartProduct widget is first created.
class MyCartProductInitialEvent extends MyCartProductEvent {
  @override
  List<Object?> get props => [];
}
