import 'package:disample/repository.dart';

class MockRepository implements Repository {
  @override
  String loadData() {
    return "Mock Data";
  }
}
