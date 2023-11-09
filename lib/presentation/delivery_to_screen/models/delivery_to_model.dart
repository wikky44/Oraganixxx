// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [delivery_to_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliveryToModel extends Equatable {DeliveryToModel({this.radioList = const []}) {  }

List<String> radioList;

DeliveryToModel copyWith({List<String>? radioList}) { return DeliveryToModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
