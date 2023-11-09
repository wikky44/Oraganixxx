import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/payment_cod_screen/models/payment_cod_model.dart';part 'payment_cod_event.dart';part 'payment_cod_state.dart';/// A bloc that manages the state of a PaymentCod according to the event that is dispatched to it.
class PaymentCodBloc extends Bloc<PaymentCodEvent, PaymentCodState> {PaymentCodBloc(PaymentCodState initialState) : super(initialState) { on<PaymentCodInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<PaymentCodState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<PaymentCodState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
List<String> fillRadioList() { return ["msg_debit_credit_card", "lbl_net_banking"]; } 
_onInitialize(PaymentCodInitialEvent event, Emitter<PaymentCodState> emit, ) async  { emit(state.copyWith(radioGroup: "", radioGroup1: "")); emit(state.copyWith(paymentCodModelObj: state.paymentCodModelObj?.copyWith(radioList: fillRadioList()))); } 
 }
