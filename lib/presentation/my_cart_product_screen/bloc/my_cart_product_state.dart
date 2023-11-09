// ignore_for_file: must_be_immutable

part of 'my_cart_product_bloc.dart';

/// Represents the state of MyCartProduct in the application.
class MyCartProductState extends Equatable {
  MyCartProductState({this.myCartProductModelObj});

  MyCartProductModel? myCartProductModelObj;

  @override
  List<Object?> get props => [
        myCartProductModelObj,
      ];
  MyCartProductState copyWith({MyCartProductModel? myCartProductModelObj}) {
    return MyCartProductState(
      myCartProductModelObj:
          myCartProductModelObj ?? this.myCartProductModelObj,
    );
  }
}
