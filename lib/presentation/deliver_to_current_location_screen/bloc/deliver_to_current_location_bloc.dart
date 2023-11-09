import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/deliver_to_current_location_screen/models/deliver_to_current_location_model.dart';part 'deliver_to_current_location_event.dart';part 'deliver_to_current_location_state.dart';/// A bloc that manages the state of a DeliverToCurrentLocation according to the event that is dispatched to it.
class DeliverToCurrentLocationBloc extends Bloc<DeliverToCurrentLocationEvent, DeliverToCurrentLocationState> {DeliverToCurrentLocationBloc(DeliverToCurrentLocationState initialState) : super(initialState) { on<DeliverToCurrentLocationInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<DeliverToCurrentLocationState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
List<String> fillRadioList() { return ["msg_current_location", "lbl_new_adderss"]; } 
_onInitialize(DeliverToCurrentLocationInitialEvent event, Emitter<DeliverToCurrentLocationState> emit, ) async  { emit(state.copyWith(radioGroup: "")); emit(state.copyWith(deliverToCurrentLocationModelObj: state.deliverToCurrentLocationModelObj?.copyWith(radioList: fillRadioList()))); } 
 }
