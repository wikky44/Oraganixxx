import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/best_product_two_screen/models/best_product_two_model.dart';part 'best_product_two_event.dart';part 'best_product_two_state.dart';/// A bloc that manages the state of a BestProductTwo according to the event that is dispatched to it.
class BestProductTwoBloc extends Bloc<BestProductTwoEvent, BestProductTwoState> {BestProductTwoBloc(BestProductTwoState initialState) : super(initialState) { on<BestProductTwoInitialEvent>(_onInitialize); }

_onInitialize(BestProductTwoInitialEvent event, Emitter<BestProductTwoState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
