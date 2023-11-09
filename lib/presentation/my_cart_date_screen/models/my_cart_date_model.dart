// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [my_cart_date_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartDateModel extends Equatable {MyCartDateModel({this.radioList = const []}) {  }

List<String> radioList;

MyCartDateModel copyWith({List<String>? radioList}) { return MyCartDateModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
