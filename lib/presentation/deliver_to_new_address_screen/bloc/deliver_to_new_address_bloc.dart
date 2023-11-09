import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:organixxx/presentation/deliver_to_new_address_screen/models/deliver_to_new_address_model.dart';
part 'deliver_to_new_address_event.dart';
part 'deliver_to_new_address_state.dart';

/// A bloc that manages the state of a DeliverToNewAddress according to the event that is dispatched to it.
class DeliverToNewAddressBloc
    extends Bloc<DeliverToNewAddressEvent, DeliverToNewAddressState> {
  DeliverToNewAddressBloc(DeliverToNewAddressState initialState)
      : super(initialState) {
    on<DeliverToNewAddressInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DeliverToNewAddressState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<DeliverToNewAddressState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<DeliverToNewAddressState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["msg_current_location", "lbl_new_adderss"];
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    DeliverToNewAddressInitialEvent event,
    Emitter<DeliverToNewAddressState> emit,
  ) async {
    emit(state.copyWith(
      addressController: TextEditingController(),
      addressController1: TextEditingController(),
      radioGroup: "",
    ));
    emit(state.copyWith(
        deliverToNewAddressModelObj:
            state.deliverToNewAddressModelObj?.copyWith(
      radioList: fillRadioList(),
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
    )));
  }
}
