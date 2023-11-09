// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:organixxx/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [deliver_to_new_address_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliverToNewAddressOneModel extends Equatable {DeliverToNewAddressOneModel({this.radioList = const [], this.dropdownItemList = const [], this.dropdownItemList1 = const [], }) {  }

List<String> radioList;

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

DeliverToNewAddressOneModel copyWith({List<String>? radioList, List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, }) { return DeliverToNewAddressOneModel(
radioList : radioList ?? this.radioList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
); } 
@override List<Object?> get props => [radioList,dropdownItemList,dropdownItemList1];
 }
