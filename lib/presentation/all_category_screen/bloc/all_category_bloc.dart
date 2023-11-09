import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/all_category_screen/models/all_category_model.dart';part 'all_category_event.dart';part 'all_category_state.dart';/// A bloc that manages the state of a AllCategory according to the event that is dispatched to it.
class AllCategoryBloc extends Bloc<AllCategoryEvent, AllCategoryState> {AllCategoryBloc(AllCategoryState initialState) : super(initialState) { on<AllCategoryInitialEvent>(_onInitialize); }

_onInitialize(AllCategoryInitialEvent event, Emitter<AllCategoryState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
