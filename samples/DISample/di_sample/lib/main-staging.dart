import 'package:flutter/material.dart';

import 'di_container.dart';
import 'flavors.dart';
import 'main.dart';
import 'repository.dart';

void main() {
  F.appFlavor = Flavor.STAGING;
  DiContainer.repository = Repository();
  runApp(MyApp());
}
