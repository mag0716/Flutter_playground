import 'package:disample/repository.dart';

import 'data.dart';

class MockRepository implements Repository {
  @override
  Future<Data> loadData() async {
    return Data(title: "Mock Data");
  }
}
