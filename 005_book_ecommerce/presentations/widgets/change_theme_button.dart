import 'package:flutter/material.dart';
import 'package:flutter_application_1/005_book_ecommerce/app/controllers/theme/theme_controller.dart';
import 'package:flutter_application_1/005_book_ecommerce/core/decorations/icons.dart';
import 'package:get/get.dart';

class ChangeThemeButton extends StatelessWidget {
  final ThemeController _themeController = Get.find();

  ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _themeController.toggleTheme();
      },
      icon: Obx(() =>
          Icon(_themeController.isDarkMode.value ? AppIcons.changeToLightThemeIcon : AppIcons.changeToDarkThemeIcon)),
    );
  }
}
