import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/my_cart_page/models/my_cart_model.dart';part 'my_cart_event.dart';part 'my_cart_state.dart';/// A bloc that manages the state of a MyCart according to the event that is dispatched to it.
class MyCartBloc extends Bloc<MyCartEvent, MyCartState> {MyCartBloc(MyCartState initialState) : super(initialState) { on<MyCartInitialEvent>(_onInitialize); }

_onInitialize(MyCartInitialEvent event, Emitter<MyCartState> emit, ) async  { emit(state.copyWith(deliveryController: TextEditingController())); } 
 }
