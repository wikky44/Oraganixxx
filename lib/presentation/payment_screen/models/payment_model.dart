// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentModel extends Equatable {PaymentModel({this.radioList = const []}) {  }

List<String> radioList;

PaymentModel copyWith({List<String>? radioList}) { return PaymentModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
