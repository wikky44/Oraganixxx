import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/my_cart_product_one_screen/models/my_cart_product_one_model.dart';part 'my_cart_product_one_event.dart';part 'my_cart_product_one_state.dart';/// A bloc that manages the state of a MyCartProductOne according to the event that is dispatched to it.
class MyCartProductOneBloc extends Bloc<MyCartProductOneEvent, MyCartProductOneState> {MyCartProductOneBloc(MyCartProductOneState initialState) : super(initialState) { on<MyCartProductOneInitialEvent>(_onInitialize); }

_onInitialize(MyCartProductOneInitialEvent event, Emitter<MyCartProductOneState> emit, ) async  {  } 
 }
