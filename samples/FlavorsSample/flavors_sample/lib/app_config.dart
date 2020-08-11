import 'package:flutter/cupertino.dart';

class AppConfig extends InheritedWidget {
  final String appDisplayName;
  final int appInternalId;
  final StringResource stringResource;

  AppConfig(
      {this.appDisplayName,
      this.appInternalId,
      this.stringResource,
      Widget child})
      : super(child: child);

  static AppConfig of(BuildContext context) {
    //return context.inheritFromWidgetOfExactType(AppConfig);
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget context) => false;
}

abstract class StringResource {
  String APP_DESCRIPTION;
}
