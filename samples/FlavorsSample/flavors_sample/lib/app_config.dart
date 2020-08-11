import 'package:flutter/cupertino.dart';

class AppConfig extends InheritedWidget {
  final String appDisplayName;
  final int appInternalId;

  AppConfig({this.appDisplayName, this.appInternalId, Widget child})
      : super(child: child);

  static AppConfig of(BuildContext context) {
    //return context.inheritFromWidgetOfExactType(AppConfig);
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget context) => false;
}
