import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/payment_final_screen/models/payment_final_model.dart';part 'payment_final_event.dart';part 'payment_final_state.dart';/// A bloc that manages the state of a PaymentFinal according to the event that is dispatched to it.
class PaymentFinalBloc extends Bloc<PaymentFinalEvent, PaymentFinalState> {PaymentFinalBloc(PaymentFinalState initialState) : super(initialState) { on<PaymentFinalInitialEvent>(_onInitialize); }

_onInitialize(PaymentFinalInitialEvent event, Emitter<PaymentFinalState> emit, ) async  { emit(state.copyWith(deliveryController: TextEditingController())); } 
 }
