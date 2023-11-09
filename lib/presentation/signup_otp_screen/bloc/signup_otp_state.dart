// ignore_for_file: must_be_immutable

part of 'signup_otp_bloc.dart';

/// Represents the state of SignupOtp in the application.
class SignupOtpState extends Equatable {
  SignupOtpState({
    this.otpController,
    this.signupOtpModelObj,
  });

  TextEditingController? otpController;

  SignupOtpModel? signupOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        signupOtpModelObj,
      ];
  SignupOtpState copyWith({
    TextEditingController? otpController,
    SignupOtpModel? signupOtpModelObj,
  }) {
    return SignupOtpState(
      otpController: otpController ?? this.otpController,
      signupOtpModelObj: signupOtpModelObj ?? this.signupOtpModelObj,
    );
  }
}
