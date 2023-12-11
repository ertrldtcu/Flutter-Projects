import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService extends GetxService {
  late SharedPreferences _preferences;

  Future<PreferencesService> init() async {
    _preferences = await SharedPreferences.getInstance();
    return this;
  }

  String getString(String key, {String defaultValue = ''}) {
    return _preferences.getString(key) ?? defaultValue;
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  // Diğer gerekirse metotları ekleyebilirsiniz.
}
