import 'package:flutter/material.dart';
import 'package:flutter_application_1/005_book_ecommerce/views/shop_page.dart';
import 'package:get/get.dart';

import 'config/themes/custom_theme.dart';
import 'core/contants/contants.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      home: const ShopPage(),
      theme: CustomTheme().darkThemeData,
    );
  }
}
