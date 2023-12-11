// import 'package:getx_example/data/model/data_model.dart';
// import 'package:getx_example/data/repository/repository.dart';
// import 'package:getx_example/data/service/data_service.dart';

import '../../service/data_service.dart';
import 'data_repository.dart';

class DataRepositoryImpl extends DataRepository {
  final DataService _dataService;

  DataRepositoryImpl(this._dataService);

  @override
  Future<String> getStoredData() async {
    return _dataService.getStoredData();
  }

  @override
  Future<void> storeData(String data) async {
    return _dataService.storeData(data);
  }
}
