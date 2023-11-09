import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/delivery_to_screen/models/delivery_to_model.dart';part 'delivery_to_event.dart';part 'delivery_to_state.dart';/// A bloc that manages the state of a DeliveryTo according to the event that is dispatched to it.
class DeliveryToBloc extends Bloc<DeliveryToEvent, DeliveryToState> {DeliveryToBloc(DeliveryToState initialState) : super(initialState) { on<DeliveryToInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<DeliveryToState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
List<String> fillRadioList() { return ["msg_current_location", "lbl_new_adderss"]; } 
_onInitialize(DeliveryToInitialEvent event, Emitter<DeliveryToState> emit, ) async  { emit(state.copyWith(radioGroup: "")); emit(state.copyWith(deliveryToModelObj: state.deliveryToModelObj?.copyWith(radioList: fillRadioList()))); } 
 }
