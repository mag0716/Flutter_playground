import 'package:disample/di_container.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';
import 'main.dart';
import 'mock_repository.dart';

void main() {
  F.appFlavor = Flavor.DEV;
  DiContainer.repository = MockRepository();
  runApp(MyApp());
}
