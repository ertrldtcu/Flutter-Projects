import 'package:flutter/material.dart';
import 'general.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key, required this.avatarURL});
  final String avatarURL;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ClipOval(child: Image.network(avatarURL.replaceAll("%seed", NameGenerator.generateRandomName()))),
      ),
    );
  }
}
