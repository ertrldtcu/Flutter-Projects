import 'package:flutter/material.dart';

import 'general.dart';
import 'custom_floating_action_button.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectTexts.appName,
      home: const Practice(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade800),
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
    );
  }
}

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(ProjectTexts.appName), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(ProjectTexts.counterText, style: TextStyle(fontSize: ProjectSizes.counterTextSize)),
            Text('$counter', style: const TextStyle(fontSize: ProjectSizes.counterSize)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(flex: 20),
          CustomFloatingActionButton(icon: Icons.refresh, onPressed: reset),
          const Spacer(),
          CustomFloatingActionButton(icon: Icons.superscript, onPressed: square),
          const Spacer(),
          CustomFloatingActionButton(icon: Icons.remove, onPressed: decrement),
          const Spacer(),
          CustomFloatingActionButton(icon: Icons.add, onPressed: increment),
        ],
      ),
    );
  }

  void increment() => setState(() => counter++);

  void decrement() => setState(() => counter--);

  void reset() => setState(() => counter = 0);

  void square() => setState(() => counter *= counter);
}
