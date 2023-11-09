// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [payment_cod_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentCodModel extends Equatable {PaymentCodModel({this.radioList = const []}) {  }

List<String> radioList;

PaymentCodModel copyWith({List<String>? radioList}) { return PaymentCodModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
