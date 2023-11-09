import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/login_screen/models/login_model.dart';part 'login_event.dart';part 'login_state.dart';/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class LoginBloc extends Bloc<LoginEvent, LoginState> {LoginBloc(LoginState initialState) : super(initialState) { on<LoginInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LoginState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(LoginInitialEvent event, Emitter<LoginState> emit, ) async  { emit(state.copyWith(userNameController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
