import '../../../core/app_export.dart';/// This class is used in the [productitem_item_widget] screen.
class ProductitemItemModel {ProductitemItemModel({this.productImage, this.productName, this.productQuantity, this.productMinus, this.productNumber, this.productPlus, this.id, }) { productImage = productImage  ?? ImageConstant.imgTomatoes1;productName = productName  ?? "Fresh Organic Tomato \r\n500g";productQuantity = productQuantity  ?? "30";productMinus = productMinus  ?? "-";productNumber = productNumber  ?? "1";productPlus = productPlus  ?? "+";id = id  ?? ""; }

String? productImage;

String? productName;

String? productQuantity;

String? productMinus;

String? productNumber;

String? productPlus;

String? id;

 }
