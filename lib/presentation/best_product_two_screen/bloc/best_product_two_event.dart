// ignore_for_file: must_be_immutable

part of 'best_product_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BestProductTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BestProductTwoEvent extends Equatable {}

/// Event that is dispatched when the BestProductTwo widget is first created.
class BestProductTwoInitialEvent extends BestProductTwoEvent {
  @override
  List<Object?> get props => [];
}
