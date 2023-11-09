import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/my_cart_product_screen/models/my_cart_product_model.dart';part 'my_cart_product_event.dart';part 'my_cart_product_state.dart';/// A bloc that manages the state of a MyCartProduct according to the event that is dispatched to it.
class MyCartProductBloc extends Bloc<MyCartProductEvent, MyCartProductState> {MyCartProductBloc(MyCartProductState initialState) : super(initialState) { on<MyCartProductInitialEvent>(_onInitialize); }

_onInitialize(MyCartProductInitialEvent event, Emitter<MyCartProductState> emit, ) async  {  } 
 }
