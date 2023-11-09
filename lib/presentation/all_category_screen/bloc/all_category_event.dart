// ignore_for_file: must_be_immutable

part of 'all_category_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllCategory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllCategoryEvent extends Equatable {}

/// Event that is dispatched when the AllCategory widget is first created.
class AllCategoryInitialEvent extends AllCategoryEvent {
  @override
  List<Object?> get props => [];
}
