// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.userNameController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
