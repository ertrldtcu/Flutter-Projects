import 'package:get/get.dart';

import 'preferences_service.dart';

class DataService extends GetxService {
  late PreferencesService _preferencesService;

  Future<DataService> init() async {
    _preferencesService = PreferencesService();
    await _preferencesService.init();
    return this;
  }

  String getStoredData() {
    return _preferencesService.getString('storedData');
  }

  Future<void> storeData(String data) async {
    await _preferencesService.setString('storedData', data);
  }
}
