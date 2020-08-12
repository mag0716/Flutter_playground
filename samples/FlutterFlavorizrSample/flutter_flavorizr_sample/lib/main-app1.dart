import 'package:flutter/material.dart';
import 'app_config.dart';
import 'flavors.dart';
import 'main_common.dart';
import 'resources/display_strings_app1.dart';

void main() {
  F.appFlavor = Flavor.APP1;
  var configuredApp = AppConfig(
      appInternalId: 1,
      stringResource: StringResourceApp1(),
      child: MyApp());

  mainCommon();
  runApp(configuredApp);
}
