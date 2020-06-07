import 'package:shared_preferences/shared_preferences.dart';

class TodoRepository {
  static TodoRepository _instance;

  static String keyLastAddDatetime = "LastAddDatetime";

  static TodoRepository getInstance() {
    if (_instance == null) {
      _instance = TodoRepository._privateConstructor();
    }
    return _instance;
  }

  TodoRepository._privateConstructor();

  void saveLastAddDatetime() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var now = DateTime.now().microsecondsSinceEpoch;
    await preferences.setInt(keyLastAddDatetime, now);
  }

  Future<int> loadLastAddDatetime() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt(keyLastAddDatetime) ?? 0;
  }
}
