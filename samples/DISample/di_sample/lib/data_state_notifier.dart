import 'package:disample/data_state.dart';
import 'package:disample/repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'repository.dart';

class DataStateNotifier extends StateNotifier<DataState> with LocatorMixin {
  DataStateNotifier({this.repository}) : super(DataState());

  final Repository repository;

  void fetchData() async {
    print('fetchData start...');
    var data = await repository.loadData();
    state = DataState(isInitialized: false, data: data);
    print('fetchData end...');
  }
}
