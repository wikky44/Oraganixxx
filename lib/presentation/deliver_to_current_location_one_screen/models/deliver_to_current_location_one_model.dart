// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [deliver_to_current_location_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliverToCurrentLocationOneModel extends Equatable {DeliverToCurrentLocationOneModel({this.radioList = const []}) {  }

List<String> radioList;

DeliverToCurrentLocationOneModel copyWith({List<String>? radioList}) { return DeliverToCurrentLocationOneModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
