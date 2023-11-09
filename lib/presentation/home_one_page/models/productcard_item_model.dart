import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.twentyFive, this.productName, this.productPrice, this.productImage, this.discountText, this.discountNumber, this.discountText1, this.id, }) { twentyFive = twentyFive  ?? "-25%";productName = productName  ?? "Fresh Cashew \r\n500g";productPrice = productPrice  ?? "400";productImage = productImage  ?? ImageConstant.imgCashews1;discountText = discountText  ?? "-";discountNumber = discountNumber  ?? "1";discountText1 = discountText1  ?? "+";id = id  ?? ""; }

String? twentyFive;

String? productName;

String? productPrice;

String? productImage;

String? discountText;

String? discountNumber;

String? discountText1;

String? id;

 }
