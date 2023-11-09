// ignore_for_file: must_be_immutable

part of 'app_setting_bloc.dart';

/// Represents the state of AppSetting in the application.
class AppSettingState extends Equatable {
  AppSettingState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.appSettingModelObj,
  });

  AppSettingModel? appSettingModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        appSettingModelObj,
      ];
  AppSettingState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    AppSettingModel? appSettingModelObj,
  }) {
    return AppSettingState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      appSettingModelObj: appSettingModelObj ?? this.appSettingModelObj,
    );
  }
}
