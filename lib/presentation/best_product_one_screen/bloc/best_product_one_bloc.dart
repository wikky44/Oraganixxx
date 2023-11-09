import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/best_product_one_screen/models/best_product_one_model.dart';part 'best_product_one_event.dart';part 'best_product_one_state.dart';/// A bloc that manages the state of a BestProductOne according to the event that is dispatched to it.
class BestProductOneBloc extends Bloc<BestProductOneEvent, BestProductOneState> {BestProductOneBloc(BestProductOneState initialState) : super(initialState) { on<BestProductOneInitialEvent>(_onInitialize); }

_onInitialize(BestProductOneInitialEvent event, Emitter<BestProductOneState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
