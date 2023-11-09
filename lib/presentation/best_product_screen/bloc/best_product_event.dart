// ignore_for_file: must_be_immutable

part of 'best_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BestProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BestProductEvent extends Equatable {}

/// Event that is dispatched when the BestProduct widget is first created.
class BestProductInitialEvent extends BestProductEvent {
  @override
  List<Object?> get props => [];
}
