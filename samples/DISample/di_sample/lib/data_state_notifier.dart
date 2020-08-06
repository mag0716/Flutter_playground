import 'package:disample/data_state.dart';
import 'package:disample/repository.dart';
import 'package:state_notifier/state_notifier.dart';

class DataStateNotifier extends StateNotifier<DataState> with LocatorMixin {
  DataStateNotifier() : super(DataState());

  Repository get repository => read();

  // FIXME: 非同期処理に変更
  void fetchData() {
    var data = repository.loadData();
    state = DataState(isInitialized: false, data: data);
  }
}
