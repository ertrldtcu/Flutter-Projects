import 'package:flutter_application_1/005_book_ecommerce/app/controllers/shop/shop_bindings.dart';
import 'package:flutter_application_1/005_book_ecommerce/app/routes/routes.dart';
import 'package:flutter_application_1/005_book_ecommerce/presentations/pages/shop/shop.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.shop,
      page: () => const ShopPage(),
      binding: ShopBindings(),
    ),
  ];
}
