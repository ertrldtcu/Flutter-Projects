import 'package:flutter/material.dart';

class NavigateResponse {
  NavigateResponse({required this.response, required this.id});

  final bool response;
  final int id;
}

mixin NavigateManager {
  Future<NavigateResponse?> navigate<NavigateResponse>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<NavigateResponse>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
