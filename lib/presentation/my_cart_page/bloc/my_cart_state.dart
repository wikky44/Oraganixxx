// ignore_for_file: must_be_immutable

part of 'my_cart_bloc.dart';

/// Represents the state of MyCart in the application.
class MyCartState extends Equatable {
  MyCartState({
    this.deliveryController,
    this.myCartModelObj,
  });

  TextEditingController? deliveryController;

  MyCartModel? myCartModelObj;

  @override
  List<Object?> get props => [
        deliveryController,
        myCartModelObj,
      ];
  MyCartState copyWith({
    TextEditingController? deliveryController,
    MyCartModel? myCartModelObj,
  }) {
    return MyCartState(
      deliveryController: deliveryController ?? this.deliveryController,
      myCartModelObj: myCartModelObj ?? this.myCartModelObj,
    );
  }
}
