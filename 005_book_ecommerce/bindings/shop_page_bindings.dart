import 'package:get/get.dart';

import 'package:flutter_application_1/005_book_ecommerce/controllers/shop_page_controller.dart';

class ShopPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ShopPageController());
  }
}
