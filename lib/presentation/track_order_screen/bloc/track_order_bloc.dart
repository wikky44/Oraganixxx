import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/track_order_screen/models/track_order_model.dart';part 'track_order_event.dart';part 'track_order_state.dart';/// A bloc that manages the state of a TrackOrder according to the event that is dispatched to it.
class TrackOrderBloc extends Bloc<TrackOrderEvent, TrackOrderState> {TrackOrderBloc(TrackOrderState initialState) : super(initialState) { on<TrackOrderInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeCheckBox1Event>(_changeCheckBox1); on<ChangeCheckBox2Event>(_changeCheckBox2); on<ChangeCheckBox3Event>(_changeCheckBox3); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); on<ChangeRadioButton2Event>(_changeRadioButton2); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(orderConfirmedTime: event.value)); } 
_changeCheckBox1(ChangeCheckBox1Event event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(orderPlacedStatus: event.value)); } 
_changeCheckBox2(ChangeCheckBox2Event event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(orderConfirmedTime1: event.value)); } 
_changeCheckBox3(ChangeCheckBox3Event event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(orderConfirmed: event.value)); } 
_changeRadioButton(ChangeRadioButtonEvent event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_changeRadioButton2(ChangeRadioButton2Event event, Emitter<TrackOrderState> emit, ) { emit(state.copyWith(radioGroup2: event.value)); } 
_onInitialize(TrackOrderInitialEvent event, Emitter<TrackOrderState> emit, ) async  { emit(state.copyWith(orderConfirmedTime: false, orderPlacedStatus: false, orderConfirmedTime1: false, orderConfirmed: false, radioGroup: "", radioGroup1: "", radioGroup2: "")); } 
 }
