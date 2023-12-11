import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '001_practice/main_prac.dart';
// import '002_contacts/main.dart';
// import '003_prac_stateful/main.dart';
// import '004_track_of_books/main.dart';
import '005_book_ecommerce/main.dart';
import '005_book_ecommerce/data/service/data_service.dart';
import '005_book_ecommerce/data/repository/data/data_repository_impl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() async => await DataService().init());

  await Get.putAsync(() async {
    final dataService = Get.find<DataService>();
    return DataRepositoryImpl(dataService);
  });

  runApp(const MainApp());
}
