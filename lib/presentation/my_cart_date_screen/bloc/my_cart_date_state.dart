// ignore_for_file: must_be_immutable

part of 'my_cart_date_bloc.dart';

/// Represents the state of MyCartDate in the application.
class MyCartDateState extends Equatable {
  MyCartDateState({
    this.radioGroup = "",
    this.myCartDateModelObj,
  });

  MyCartDateModel? myCartDateModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        myCartDateModelObj,
      ];
  MyCartDateState copyWith({
    String? radioGroup,
    MyCartDateModel? myCartDateModelObj,
  }) {
    return MyCartDateState(
      radioGroup: radioGroup ?? this.radioGroup,
      myCartDateModelObj: myCartDateModelObj ?? this.myCartDateModelObj,
    );
  }
}
