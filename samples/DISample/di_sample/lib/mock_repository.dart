import 'package:disample/repository.dart';

import 'data.dart';

class MockRepository implements Repository {
  @override
  Data loadData() {
    return Data(title: "Mock Data");
  }
}
