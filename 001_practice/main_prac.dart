import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_body.dart';
import 'custom_bottom_navbar.dart';
import 'texts_prac.dart';
import 'custom_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Texts.title,
      home: const Practice(),
      theme: PracTheme.customTheme,
    );
  }
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(),
      body: CustomBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
