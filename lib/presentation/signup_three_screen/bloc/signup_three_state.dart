// ignore_for_file: must_be_immutable

part of 'signup_three_bloc.dart';

/// Represents the state of SignupThree in the application.
class SignupThreeState extends Equatable {
  SignupThreeState({
    this.addressController,
    this.addressController1,
    this.pincodeController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.signupThreeModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? addressController1;

  TextEditingController? pincodeController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SignupThreeModel? signupThreeModelObj;

  @override
  List<Object?> get props => [
        addressController,
        addressController1,
        pincodeController,
        selectedDropDownValue,
        selectedDropDownValue1,
        signupThreeModelObj,
      ];
  SignupThreeState copyWith({
    TextEditingController? addressController,
    TextEditingController? addressController1,
    TextEditingController? pincodeController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SignupThreeModel? signupThreeModelObj,
  }) {
    return SignupThreeState(
      addressController: addressController ?? this.addressController,
      addressController1: addressController1 ?? this.addressController1,
      pincodeController: pincodeController ?? this.pincodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      signupThreeModelObj: signupThreeModelObj ?? this.signupThreeModelObj,
    );
  }
}
