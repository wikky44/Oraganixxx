// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [delivery_to_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliveryToOneModel extends Equatable {DeliveryToOneModel({this.radioList = const []}) {  }

List<String> radioList;

DeliveryToOneModel copyWith({List<String>? radioList}) { return DeliveryToOneModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
