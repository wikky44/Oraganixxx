// ignore_for_file: must_be_immutable

part of 'my_cart_empty_bloc.dart';

/// Represents the state of MyCartEmpty in the application.
class MyCartEmptyState extends Equatable {
  MyCartEmptyState({this.myCartEmptyModelObj});

  MyCartEmptyModel? myCartEmptyModelObj;

  @override
  List<Object?> get props => [
        myCartEmptyModelObj,
      ];
  MyCartEmptyState copyWith({MyCartEmptyModel? myCartEmptyModelObj}) {
    return MyCartEmptyState(
      myCartEmptyModelObj: myCartEmptyModelObj ?? this.myCartEmptyModelObj,
    );
  }
}
