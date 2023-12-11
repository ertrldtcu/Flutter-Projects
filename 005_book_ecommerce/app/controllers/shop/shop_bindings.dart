import 'package:flutter_application_1/005_book_ecommerce/app/controllers/shop/shop_controller.dart';
import 'package:flutter_application_1/005_book_ecommerce/app/controllers/theme/theme_controller.dart';
import 'package:get/get.dart';

class ShopBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ShopController());
    Get.put(ThemeController());
  }
}
