import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/best_product_screen/models/best_product_model.dart';part 'best_product_event.dart';part 'best_product_state.dart';/// A bloc that manages the state of a BestProduct according to the event that is dispatched to it.
class BestProductBloc extends Bloc<BestProductEvent, BestProductState> {BestProductBloc(BestProductState initialState) : super(initialState) { on<BestProductInitialEvent>(_onInitialize); }

_onInitialize(BestProductInitialEvent event, Emitter<BestProductState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
