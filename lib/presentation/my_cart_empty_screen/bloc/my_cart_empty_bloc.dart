import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/my_cart_empty_screen/models/my_cart_empty_model.dart';part 'my_cart_empty_event.dart';part 'my_cart_empty_state.dart';/// A bloc that manages the state of a MyCartEmpty according to the event that is dispatched to it.
class MyCartEmptyBloc extends Bloc<MyCartEmptyEvent, MyCartEmptyState> {MyCartEmptyBloc(MyCartEmptyState initialState) : super(initialState) { on<MyCartEmptyInitialEvent>(_onInitialize); }

_onInitialize(MyCartEmptyInitialEvent event, Emitter<MyCartEmptyState> emit, ) async  {  } 
 }
