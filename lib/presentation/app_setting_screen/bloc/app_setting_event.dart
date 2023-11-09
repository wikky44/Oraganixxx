// ignore_for_file: must_be_immutable

part of 'app_setting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppSetting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppSettingEvent extends Equatable {}

/// Event that is dispatched when the AppSetting widget is first created.
class AppSettingInitialEvent extends AppSettingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AppSettingEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends AppSettingEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
