import '../../../core/app_export.dart';/// This class is used in the [vegetables1_item_widget] screen.
class Vegetables1ItemModel {Vegetables1ItemModel({this.vegetables, this.vegetablesImage, this.id, }) { vegetables = vegetables  ?? "Vegetables";vegetablesImage = vegetablesImage  ?? ImageConstant.imgBasketFullVegetables;id = id  ?? ""; }

String? vegetables;

String? vegetablesImage;

String? id;

 }
