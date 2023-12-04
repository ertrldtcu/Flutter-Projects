import 'package:flutter/material.dart';

class ProjectTexts {
  static const appName = "Track of Books";
  static const markAsRead = "Okundu";
}

class ProjectSizes {
  static const bookNameSize = 28.0;
  static const bookSubjectSize = 18.0;
  static const bookDateSize = 14.0;

  static const bookNumberSize = 22.0;
  static const bookNumberFontWeight = FontWeight.w600;

  static const listSpace = 10.0;
  static const bookItemRadius = 8.0;
}

class ProjectIcons {
  static const openDetailsIcon = Icons.chevron_right;
}

class ProjectColors {
  static const bookItemBackgroundColor = Colors.white;
  static const bookItemBorderColor = Colors.grey;
  final bookItemNumberColor = Colors.grey.shade300;
}

class ProjectDesigns {
  final bookBacground = BoxDecoration(
    border: Border.all(width: 1, color: ProjectColors.bookItemBorderColor),
    borderRadius: const BorderRadius.all(Radius.circular(ProjectSizes.bookItemRadius)),
    color: ProjectColors.bookItemBackgroundColor,
    boxShadow: const [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(
          0.0,
          0.0,
        ),
        blurRadius: 6.0,
        spreadRadius: 1.0,
      ),
    ],
  );
}
