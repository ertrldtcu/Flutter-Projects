import 'package:flutter/material.dart';

import 'contacts_body.dart';
import 'general.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ContactsAppTexts.title,
        home: const Practice(),
        theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade800),
            scaffoldBackgroundColor: Colors.grey.shade900,
            cardTheme: Theme.of(context).cardTheme.copyWith(elevation: 2)));
  }
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(ContactsAppTexts.title),
      ),
      body: const ContactsBody(),
    );
  }
}
