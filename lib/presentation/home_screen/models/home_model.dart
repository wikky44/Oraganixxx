// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'stbannertwentyone1_item_model.dart';import '../../../core/app_export.dart';import 'vegetables1_item_model.dart';import 'artboardeleven1_item_model.dart';import 'bannerbiggone1_item_model.dart';import 'productdetails_item_model.dart';/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.stbannertwentyone1ItemList = const [], this.vegetables1ItemList = const [], this.artboardeleven1ItemList = const [], this.bannerbiggone1ItemList = const [], this.productdetailsItemList = const [], }) {  }

List<Stbannertwentyone1ItemModel> stbannertwentyone1ItemList;

List<Vegetables1ItemModel> vegetables1ItemList;

List<Artboardeleven1ItemModel> artboardeleven1ItemList;

List<Bannerbiggone1ItemModel> bannerbiggone1ItemList;

List<ProductdetailsItemModel> productdetailsItemList;

HomeModel copyWith({List<Stbannertwentyone1ItemModel>? stbannertwentyone1ItemList, List<Vegetables1ItemModel>? vegetables1ItemList, List<Artboardeleven1ItemModel>? artboardeleven1ItemList, List<Bannerbiggone1ItemModel>? bannerbiggone1ItemList, List<ProductdetailsItemModel>? productdetailsItemList, }) { return HomeModel(
stbannertwentyone1ItemList : stbannertwentyone1ItemList ?? this.stbannertwentyone1ItemList,
vegetables1ItemList : vegetables1ItemList ?? this.vegetables1ItemList,
artboardeleven1ItemList : artboardeleven1ItemList ?? this.artboardeleven1ItemList,
bannerbiggone1ItemList : bannerbiggone1ItemList ?? this.bannerbiggone1ItemList,
productdetailsItemList : productdetailsItemList ?? this.productdetailsItemList,
); } 
@override List<Object?> get props => [stbannertwentyone1ItemList,vegetables1ItemList,artboardeleven1ItemList,bannerbiggone1ItemList,productdetailsItemList];
 }
