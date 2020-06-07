import 'package:path/path.dart';
import 'package:persistsample/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class TodoRepository {
  static TodoRepository _instance;

  static String dbName = "ToDo";
  static String tableName = "todo";
  static String keyLastAddDatetime = "LastAddDatetime";

  static SharedPreferences _preferences;
  static Database _db;

  static Future<TodoRepository> getInstance() async {
    if (_instance == null) {
      _instance = TodoRepository._privateConstructor();
      _preferences = await SharedPreferences.getInstance();
      _db = await openDatabase(join(await getDatabasesPath(), dbName),
          onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE $tableName(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT);");
      }, version: 1);
    }
    return _instance;
  }

  TodoRepository._privateConstructor();

  Future<void> saveLastAddDatetime() async {
    var now = DateTime.now().microsecondsSinceEpoch;
    await _preferences.setInt(keyLastAddDatetime, now);
  }

  int loadLastAddDatetime() {
    return _preferences.getInt(keyLastAddDatetime) ?? 0;
  }

  Future<void> saveToDo(ToDo toDo) async {
    await _db.insert(
      tableName,
      toDo.toMap(),
    );
  }

  Future<List<ToDo>> loadToDo() async {
    final List<Map<String, dynamic>> maps = await _db.query(tableName);
    return List.generate(maps.length, (i) {
      return ToDo(
        maps[i]['id'],
        maps[i]['title'],
      );
    });
  }
}
