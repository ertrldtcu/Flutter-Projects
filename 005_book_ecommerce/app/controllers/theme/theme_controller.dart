import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  toggleTheme() {
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.light : ThemeMode.dark);
    isDarkMode.value = !isDarkMode.value;
  }
}
