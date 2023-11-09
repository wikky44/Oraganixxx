import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:organixxx/presentation/profile_address_screen/models/profile_address_model.dart';part 'profile_address_event.dart';part 'profile_address_state.dart';/// A bloc that manages the state of a ProfileAddress according to the event that is dispatched to it.
class ProfileAddressBloc extends Bloc<ProfileAddressEvent, ProfileAddressState> {ProfileAddressBloc(ProfileAddressState initialState) : super(initialState) { on<ProfileAddressInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); }

_changeDropDown(ChangeDropDownEvent event, Emitter<ProfileAddressState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<ProfileAddressState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(ProfileAddressInitialEvent event, Emitter<ProfileAddressState> emit, ) async  { emit(state.copyWith(addressController: TextEditingController(), addressController1: TextEditingController())); emit(state.copyWith(profileAddressModelObj: state.profileAddressModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1()))); } 
 }
