// ignore_for_file: must_be_immutable

part of 'best_product_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BestProductOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BestProductOneEvent extends Equatable {}

/// Event that is dispatched when the BestProductOne widget is first created.
class BestProductOneInitialEvent extends BestProductOneEvent {
  @override
  List<Object?> get props => [];
}
