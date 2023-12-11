import 'package:flutter_application_1/005_book_ecommerce/app/controllers/theme/theme_controller.dart';
import 'package:get/get.dart';

class ThemeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
  }
}
