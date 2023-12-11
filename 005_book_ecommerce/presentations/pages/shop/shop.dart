import 'package:flutter/material.dart';
import 'package:flutter_application_1/005_book_ecommerce/app/routes/routes.dart';
import 'package:get/get.dart';
import '../../../app/controllers/shop/shop_controller.dart';
import 'package:flutter_application_1/005_book_ecommerce/core/constants/contants.dart';
import 'package:flutter_application_1/005_book_ecommerce/presentations/widgets/change_theme_button.dart';

class ShopPage extends GetView<ShopController> {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        centerTitle: true,
        leading: ChangeThemeButton(),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(child: Obx(() => Text("#$index ${controller.test.value}")));
      }),
      floatingActionButton: FloatingActionButton(onPressed: () => Get.toNamed(Routes.second)),
    );
  }
}
