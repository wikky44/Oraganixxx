// ignore_for_file: must_be_immutable

part of 'my_cart_product_one_bloc.dart';

/// Represents the state of MyCartProductOne in the application.
class MyCartProductOneState extends Equatable {
  MyCartProductOneState({this.myCartProductOneModelObj});

  MyCartProductOneModel? myCartProductOneModelObj;

  @override
  List<Object?> get props => [
        myCartProductOneModelObj,
      ];
  MyCartProductOneState copyWith(
      {MyCartProductOneModel? myCartProductOneModelObj}) {
    return MyCartProductOneState(
      myCartProductOneModelObj:
          myCartProductOneModelObj ?? this.myCartProductOneModelObj,
    );
  }
}
