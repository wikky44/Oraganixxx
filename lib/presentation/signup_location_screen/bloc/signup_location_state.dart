// ignore_for_file: must_be_immutable

part of 'signup_location_bloc.dart';

/// Represents the state of SignupLocation in the application.
class SignupLocationState extends Equatable {
  SignupLocationState({this.signupLocationModelObj});

  SignupLocationModel? signupLocationModelObj;

  @override
  List<Object?> get props => [
        signupLocationModelObj,
      ];
  SignupLocationState copyWith({SignupLocationModel? signupLocationModelObj}) {
    return SignupLocationState(
      signupLocationModelObj:
          signupLocationModelObj ?? this.signupLocationModelObj,
    );
  }
}
