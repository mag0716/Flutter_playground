import 'package:flutter/foundation.dart';

@immutable
class Data {
  Data({this.title});

  final String title;

  @override
  String toString() {
    return "Data($title)";
  }
}
