import 'data.dart';

class Repository {
  Future<Data> loadData() async {
    return await Future.delayed(
        Duration(seconds: 5), () => Data(title: "Data"));
  }
}
