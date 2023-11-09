// ignore_for_file: must_be_immutable

part of 'deliver_to_new_address_bloc.dart';

/// Represents the state of DeliverToNewAddress in the application.
class DeliverToNewAddressState extends Equatable {
  DeliverToNewAddressState({
    this.addressController,
    this.addressController1,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.radioGroup = "",
    this.deliverToNewAddressModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? addressController1;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  DeliverToNewAddressModel? deliverToNewAddressModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        addressController,
        addressController1,
        selectedDropDownValue,
        selectedDropDownValue1,
        radioGroup,
        deliverToNewAddressModelObj,
      ];
  DeliverToNewAddressState copyWith({
    TextEditingController? addressController,
    TextEditingController? addressController1,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    String? radioGroup,
    DeliverToNewAddressModel? deliverToNewAddressModelObj,
  }) {
    return DeliverToNewAddressState(
      addressController: addressController ?? this.addressController,
      addressController1: addressController1 ?? this.addressController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      radioGroup: radioGroup ?? this.radioGroup,
      deliverToNewAddressModelObj:
          deliverToNewAddressModelObj ?? this.deliverToNewAddressModelObj,
    );
  }
}
