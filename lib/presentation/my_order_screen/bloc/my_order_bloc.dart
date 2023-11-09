import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/orderdetails_item_model.dart';import 'package:organixxx/presentation/my_order_screen/models/my_order_model.dart';part 'my_order_event.dart';part 'my_order_state.dart';/// A bloc that manages the state of a MyOrder according to the event that is dispatched to it.
class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {MyOrderBloc(MyOrderState initialState) : super(initialState) { on<MyOrderInitialEvent>(_onInitialize); }

_onInitialize(MyOrderInitialEvent event, Emitter<MyOrderState> emit, ) async  { emit(state.copyWith(myOrderModelObj: state.myOrderModelObj?.copyWith(orderdetailsItemList: fillOrderdetailsItemList()))); } 
List<OrderdetailsItemModel> fillOrderdetailsItemList() { return [OrderdetailsItemModel(date: "wed, 15 June 2022", orderNumber: "Order 110523", amountText: "30.00", details: "Details"), OrderdetailsItemModel(date: "Sat, 11 June 2022", orderNumber: "Order 110523", amountText: "200.00", details: "Details"), OrderdetailsItemModel(date: "Mon, 06 June 2022", orderNumber: "Order 110523", amountText: "520.50", details: "Details")]; } 
 }
