import '../../../core/app_export.dart';/// This class is used in the [productdetails_item_widget] screen.
class ProductdetailsItemModel {ProductdetailsItemModel({this.twentyFive, this.productName, this.productPrice, this.productImage, this.quantityMinus, this.quantityNumber, this.quantityPlus, this.id, }) { twentyFive = twentyFive  ?? "-25%";productName = productName  ?? "Fresh Cashew \r\n500g";productPrice = productPrice  ?? "400";productImage = productImage  ?? ImageConstant.imgCashews1;quantityMinus = quantityMinus  ?? "-";quantityNumber = quantityNumber  ?? "1";quantityPlus = quantityPlus  ?? "+";id = id  ?? ""; }

String? twentyFive;

String? productName;

String? productPrice;

String? productImage;

String? quantityMinus;

String? quantityNumber;

String? quantityPlus;

String? id;

 }
