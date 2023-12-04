import 'package:flutter/material.dart';

import 'general.dart';
import 'book_list.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectTexts.appName,
      home: const TrackOfBook(),
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade200,
        // floatingActionButtonTheme: ThemeData.dark().floatingActionButtonTheme.copyWith(),
      ),
    );
  }
}

class TrackOfBook extends StatefulWidget {
  const TrackOfBook({super.key});

  @override
  State<TrackOfBook> createState() => _TrackOfBookState();
}

class _TrackOfBookState extends State<TrackOfBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ProjectTexts.appName),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: BookList(),
      ),
    );
  }
}
