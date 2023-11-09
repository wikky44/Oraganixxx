// ignore_for_file: must_be_immutable

part of 'my_cart_empty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCartEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCartEmptyEvent extends Equatable {}

/// Event that is dispatched when the MyCartEmpty widget is first created.
class MyCartEmptyInitialEvent extends MyCartEmptyEvent {
  @override
  List<Object?> get props => [];
}
