import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/signup_otp_screen/models/signup_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'signup_otp_event.dart';part 'signup_otp_state.dart';/// A bloc that manages the state of a SignupOtp according to the event that is dispatched to it.
class SignupOtpBloc extends Bloc<SignupOtpEvent, SignupOtpState> with  CodeAutoFill {SignupOtpBloc(SignupOtpState initialState) : super(initialState) { on<SignupOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<SignupOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(SignupOtpInitialEvent event, Emitter<SignupOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
