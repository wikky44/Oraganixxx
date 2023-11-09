// ignore_for_file: must_be_immutable

part of 'deliver_to_new_address_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeliverToNewAddressOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeliverToNewAddressOneEvent extends Equatable {}

/// Event that is dispatched when the DeliverToNewAddressOne widget is first created.
class DeliverToNewAddressOneInitialEvent extends DeliverToNewAddressOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DeliverToNewAddressOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends DeliverToNewAddressOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DeliverToNewAddressOneEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
