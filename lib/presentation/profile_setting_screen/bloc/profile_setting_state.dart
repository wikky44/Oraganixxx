// ignore_for_file: must_be_immutable

part of 'profile_setting_bloc.dart';

/// Represents the state of ProfileSetting in the application.
class ProfileSettingState extends Equatable {
  ProfileSettingState({
    this.firstNameController,
    this.emailController,
    this.phoneNumberController,
    this.userNameController,
    this.passwordController,
    this.profileSettingModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  ProfileSettingModel? profileSettingModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        emailController,
        phoneNumberController,
        userNameController,
        passwordController,
        profileSettingModelObj,
      ];
  ProfileSettingState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    ProfileSettingModel? profileSettingModelObj,
  }) {
    return ProfileSettingState(
      firstNameController: firstNameController ?? this.firstNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      profileSettingModelObj:
          profileSettingModelObj ?? this.profileSettingModelObj,
    );
  }
}
