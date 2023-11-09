// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [deliver_to_current_location_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliverToCurrentLocationModel extends Equatable {DeliverToCurrentLocationModel({this.radioList = const []}) {  }

List<String> radioList;

DeliverToCurrentLocationModel copyWith({List<String>? radioList}) { return DeliverToCurrentLocationModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
