// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'stbannertwentyone_item_model.dart';import '../../../core/app_export.dart';import 'vegetables_item_model.dart';import 'artboardeleven_item_model.dart';import 'productitem_item_model.dart';import 'bannerbiggone_item_model.dart';import 'productcard_item_model.dart';/// This class defines the variables used in the [home_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel extends Equatable {HomeOneModel({this.stbannertwentyoneItemList = const [], this.vegetablesItemList = const [], this.artboardelevenItemList = const [], this.productitemItemList = const [], this.bannerbiggoneItemList = const [], this.productcardItemList = const [], }) {  }

List<StbannertwentyoneItemModel> stbannertwentyoneItemList;

List<VegetablesItemModel> vegetablesItemList;

List<ArtboardelevenItemModel> artboardelevenItemList;

List<ProductitemItemModel> productitemItemList;

List<BannerbiggoneItemModel> bannerbiggoneItemList;

List<ProductcardItemModel> productcardItemList;

HomeOneModel copyWith({List<StbannertwentyoneItemModel>? stbannertwentyoneItemList, List<VegetablesItemModel>? vegetablesItemList, List<ArtboardelevenItemModel>? artboardelevenItemList, List<ProductitemItemModel>? productitemItemList, List<BannerbiggoneItemModel>? bannerbiggoneItemList, List<ProductcardItemModel>? productcardItemList, }) { return HomeOneModel(
stbannertwentyoneItemList : stbannertwentyoneItemList ?? this.stbannertwentyoneItemList,
vegetablesItemList : vegetablesItemList ?? this.vegetablesItemList,
artboardelevenItemList : artboardelevenItemList ?? this.artboardelevenItemList,
productitemItemList : productitemItemList ?? this.productitemItemList,
bannerbiggoneItemList : bannerbiggoneItemList ?? this.bannerbiggoneItemList,
productcardItemList : productcardItemList ?? this.productcardItemList,
); } 
@override List<Object?> get props => [stbannertwentyoneItemList,vegetablesItemList,artboardelevenItemList,productitemItemList,bannerbiggoneItemList,productcardItemList];
 }
