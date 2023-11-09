// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

/// Represents the state of SignupOne in the application.
class SignupOneState extends Equatable {
  SignupOneState({
    this.userNameController,
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signupOneModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignupOneModel? signupOneModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        signupOneModelObj,
      ];
  SignupOneState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignupOneModel? signupOneModelObj,
  }) {
    return SignupOneState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signupOneModelObj: signupOneModelObj ?? this.signupOneModelObj,
    );
  }
}
