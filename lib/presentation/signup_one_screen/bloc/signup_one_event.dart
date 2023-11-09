// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupOneEvent extends Equatable {}

/// Event that is dispatched when the SignupOne widget is first created.
class SignupOneInitialEvent extends SignupOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignupOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends SignupOneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
