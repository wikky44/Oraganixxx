// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetails_item_model.dart';/// This class defines the variables used in the [my_order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrderModel extends Equatable {MyOrderModel({this.orderdetailsItemList = const []}) {  }

List<OrderdetailsItemModel> orderdetailsItemList;

MyOrderModel copyWith({List<OrderdetailsItemModel>? orderdetailsItemList}) { return MyOrderModel(
orderdetailsItemList : orderdetailsItemList ?? this.orderdetailsItemList,
); } 
@override List<Object?> get props => [orderdetailsItemList];
 }
