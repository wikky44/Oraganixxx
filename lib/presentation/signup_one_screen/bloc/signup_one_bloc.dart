import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/signup_one_screen/models/signup_one_model.dart';part 'signup_one_event.dart';part 'signup_one_state.dart';/// A bloc that manages the state of a SignupOne according to the event that is dispatched to it.
class SignupOneBloc extends Bloc<SignupOneEvent, SignupOneState> {SignupOneBloc(SignupOneState initialState) : super(initialState) { on<SignupOneInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignupOneState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<SignupOneState> emit, ) { emit(state.copyWith(isShowPassword1: event.value)); } 
_onInitialize(SignupOneInitialEvent event, Emitter<SignupOneState> emit, ) async  { emit(state.copyWith(userNameController: TextEditingController(), passwordController: TextEditingController(), confirmpasswordController: TextEditingController(), isShowPassword: true, isShowPassword1: true)); } 
 }
