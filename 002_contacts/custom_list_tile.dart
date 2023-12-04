import 'package:flutter/material.dart';
import 'custom_avatar.dart';
import 'general.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.name, required this.number, required this.avatarURL});

  final String name;
  final String number;
  final String avatarURL;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      child: ListTile(
        leading: CustomAvatar(avatarURL: avatarURL),
        title: Text(name),
        subtitle: Text(number),
        trailing: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.call_outlined, size: ContactsAppSize.iconSize),
            SizedBox(width: 5),
            Icon(Icons.message_outlined, size: ContactsAppSize.iconSize),
          ],
        ),
      ),
    );
  }
}
