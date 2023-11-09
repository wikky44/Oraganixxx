// ignore_for_file: must_be_immutable

part of 'deliver_to_new_address_one_bloc.dart';

/// Represents the state of DeliverToNewAddressOne in the application.
class DeliverToNewAddressOneState extends Equatable {
  DeliverToNewAddressOneState({
    this.addressController,
    this.addressController1,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.radioGroup = "",
    this.deliverToNewAddressOneModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? addressController1;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  DeliverToNewAddressOneModel? deliverToNewAddressOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        addressController,
        addressController1,
        selectedDropDownValue,
        selectedDropDownValue1,
        radioGroup,
        deliverToNewAddressOneModelObj,
      ];
  DeliverToNewAddressOneState copyWith({
    TextEditingController? addressController,
    TextEditingController? addressController1,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    String? radioGroup,
    DeliverToNewAddressOneModel? deliverToNewAddressOneModelObj,
  }) {
    return DeliverToNewAddressOneState(
      addressController: addressController ?? this.addressController,
      addressController1: addressController1 ?? this.addressController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      radioGroup: radioGroup ?? this.radioGroup,
      deliverToNewAddressOneModelObj:
          deliverToNewAddressOneModelObj ?? this.deliverToNewAddressOneModelObj,
    );
  }
}
