// ignore_for_file: must_be_immutable

part of 'deliver_to_new_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliverToNewAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliverToNewAddressEvent extends Equatable {}

/// Event that is dispatched when the DeliverToNewAddress widget is first created.
class DeliverToNewAddressInitialEvent extends DeliverToNewAddressEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DeliverToNewAddressEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends DeliverToNewAddressEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DeliverToNewAddressEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
