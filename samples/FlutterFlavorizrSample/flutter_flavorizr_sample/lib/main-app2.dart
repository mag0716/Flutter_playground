import 'package:flutter/material.dart';

import 'app_config.dart';
import 'flavors.dart';
import 'main_common.dart';
import 'resources/display_strings_app2.dart';

void main() {
  F.appFlavor = Flavor.APP2;
  var configuredApp = AppConfig(
      appInternalId: 2, stringResource: StringResourceApp2(), child: MyApp());

  mainCommon();
  runApp(configuredApp);
}
