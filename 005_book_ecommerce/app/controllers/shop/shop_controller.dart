import 'package:get/get.dart';
import 'dart:async';

class ShopController extends GetxController {
  final test = 1.obs;

  late Timer _timer;

  ShopController() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      test.value++;
    });
  }
}
