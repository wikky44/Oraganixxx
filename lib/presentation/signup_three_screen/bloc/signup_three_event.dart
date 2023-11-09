// ignore_for_file: must_be_immutable

part of 'signup_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupThreeEvent extends Equatable {}

/// Event that is dispatched when the SignupThree widget is first created.
class SignupThreeInitialEvent extends SignupThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SignupThreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends SignupThreeEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
