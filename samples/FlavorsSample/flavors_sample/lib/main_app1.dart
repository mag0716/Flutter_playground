import 'package:flavorssample/main_common.dart';
import 'package:flavorssample/resources/display_strings_app1.dart';
import 'package:flutter/cupertino.dart';

import 'app_config.dart';

void main() {
  var configuredApp = AppConfig(
      appDisplayName: "App 1",
      appInternalId: 1,
      stringResource: StringResourceApp1(),
      child: MyApp());

  mainCommon();
  runApp(configuredApp);
}
