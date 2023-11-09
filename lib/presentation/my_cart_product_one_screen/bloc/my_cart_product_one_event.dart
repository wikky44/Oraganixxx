// ignore_for_file: must_be_immutable

part of 'my_cart_product_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCartProductOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCartProductOneEvent extends Equatable {}

/// Event that is dispatched when the MyCartProductOne widget is first created.
class MyCartProductOneInitialEvent extends MyCartProductOneEvent {
  @override
  List<Object?> get props => [];
}
