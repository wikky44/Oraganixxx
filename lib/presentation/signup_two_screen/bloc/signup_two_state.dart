// ignore_for_file: must_be_immutable

part of 'signup_two_bloc.dart';

/// Represents the state of SignupTwo in the application.
class SignupTwoState extends Equatable {
  SignupTwoState({
    this.emailController,
    this.phoneNumberController,
    this.signupTwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SignupTwoModel? signupTwoModelObj;

  @override
  List<Object?> get props => [
        emailController,
        phoneNumberController,
        signupTwoModelObj,
      ];
  SignupTwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SignupTwoModel? signupTwoModelObj,
  }) {
    return SignupTwoState(
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      signupTwoModelObj: signupTwoModelObj ?? this.signupTwoModelObj,
    );
  }
}
