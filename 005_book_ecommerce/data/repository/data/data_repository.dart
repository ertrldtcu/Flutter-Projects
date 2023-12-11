// import 'package:getx_example/data/model/data_model.dart';

abstract class DataRepository {
  Future<String> getStoredData();
  Future<void> storeData(String data);
}
