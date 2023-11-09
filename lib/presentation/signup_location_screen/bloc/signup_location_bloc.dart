import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/signup_location_screen/models/signup_location_model.dart';part 'signup_location_event.dart';part 'signup_location_state.dart';/// A bloc that manages the state of a SignupLocation according to the event that is dispatched to it.
class SignupLocationBloc extends Bloc<SignupLocationEvent, SignupLocationState> {SignupLocationBloc(SignupLocationState initialState) : super(initialState) { on<SignupLocationInitialEvent>(_onInitialize); }

_onInitialize(SignupLocationInitialEvent event, Emitter<SignupLocationState> emit, ) async  {  } 
 }
