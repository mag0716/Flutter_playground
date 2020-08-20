import 'package:flutter/foundation.dart';

import 'data.dart';

@immutable
class DataState {
  DataState({this.isInitialized = true, this.data});

  final bool isInitialized;
  final Data data;
}
