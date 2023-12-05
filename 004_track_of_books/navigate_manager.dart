import 'package:flutter/material.dart';

mixin NavigateManager {
  Future<Book?> navigate<Book>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<Book>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
