import 'package:flavorssample/main_common.dart';
import 'package:flavorssample/resources/display_strings_app2.dart';
import 'package:flutter/cupertino.dart';

import 'app_config.dart';

void main() {
  var configuredApp = AppConfig(
      appDisplayName: "App 2",
      appInternalId: 2,
      stringResource: StringResourceApp2(),
      child: MyApp());

  mainCommon();
  runApp(configuredApp);
}
