// ignore_for_file: must_be_immutable

part of 'profile_address_bloc.dart';

/// Represents the state of ProfileAddress in the application.
class ProfileAddressState extends Equatable {
  ProfileAddressState({
    this.addressController,
    this.addressController1,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.profileAddressModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? addressController1;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  ProfileAddressModel? profileAddressModelObj;

  @override
  List<Object?> get props => [
        addressController,
        addressController1,
        selectedDropDownValue,
        selectedDropDownValue1,
        profileAddressModelObj,
      ];
  ProfileAddressState copyWith({
    TextEditingController? addressController,
    TextEditingController? addressController1,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    ProfileAddressModel? profileAddressModelObj,
  }) {
    return ProfileAddressState(
      addressController: addressController ?? this.addressController,
      addressController1: addressController1 ?? this.addressController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      profileAddressModelObj:
          profileAddressModelObj ?? this.profileAddressModelObj,
    );
  }
}
