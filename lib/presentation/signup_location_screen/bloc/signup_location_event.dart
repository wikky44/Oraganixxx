// ignore_for_file: must_be_immutable

part of 'signup_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupLocationEvent extends Equatable {}

/// Event that is dispatched when the SignupLocation widget is first created.
class SignupLocationInitialEvent extends SignupLocationEvent {
  @override
  List<Object?> get props => [];
}
