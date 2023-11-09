// ignore_for_file: must_be_immutable

part of 'profile_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileAddressEvent extends Equatable {}

/// Event that is dispatched when the ProfileAddress widget is first created.
class ProfileAddressInitialEvent extends ProfileAddressEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ProfileAddressEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ProfileAddressEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
