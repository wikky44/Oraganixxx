// ignore_for_file: must_be_immutable

part of 'signup_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupOtpEvent extends Equatable {}

/// Event that is dispatched when the SignupOtp widget is first created.
class SignupOtpInitialEvent extends SignupOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SignupOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
