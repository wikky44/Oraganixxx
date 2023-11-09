import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/app_setting_screen/models/app_setting_model.dart';part 'app_setting_event.dart';part 'app_setting_state.dart';/// A bloc that manages the state of a AppSetting according to the event that is dispatched to it.
class AppSettingBloc extends Bloc<AppSettingEvent, AppSettingState> {AppSettingBloc(AppSettingState initialState) : super(initialState) { on<AppSettingInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); }

_changeSwitch(ChangeSwitchEvent event, Emitter<AppSettingState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<AppSettingState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_onInitialize(AppSettingInitialEvent event, Emitter<AppSettingState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false)); } 
 }
