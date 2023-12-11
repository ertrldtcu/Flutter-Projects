import 'package:flutter/material.dart';
import 'package:flutter_application_1/005_book_ecommerce/app/routes/pages.dart';
import 'package:flutter_application_1/005_book_ecommerce/app/routes/routes.dart';
import 'package:get/get.dart';

import 'core/decorations/custom_theme.dart';
import 'core/constants/contants.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.shop,
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().lightThemeData,
      darkTheme: CustomTheme().darkThemeData,
      getPages: AppPages.pages,
    );
  }
}
