import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/signup_three_screen/models/signup_three_model.dart';part 'signup_three_event.dart';part 'signup_three_state.dart';/// A bloc that manages the state of a SignupThree according to the event that is dispatched to it.
class SignupThreeBloc extends Bloc<SignupThreeEvent, SignupThreeState> {SignupThreeBloc(SignupThreeState initialState) : super(initialState) { on<SignupThreeInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); }

_changeDropDown(ChangeDropDownEvent event, Emitter<SignupThreeState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<SignupThreeState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(SignupThreeInitialEvent event, Emitter<SignupThreeState> emit, ) async  { emit(state.copyWith(addressController: TextEditingController(), addressController1: TextEditingController(), pincodeController: TextEditingController())); emit(state.copyWith(signupThreeModelObj: state.signupThreeModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1()))); } 
 }
