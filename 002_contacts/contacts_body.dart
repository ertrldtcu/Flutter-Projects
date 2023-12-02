import 'package:flutter/material.dart';

import 'general.dart';

class ContactsBody extends StatelessWidget {
  const ContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: List<Widget>.generate(20, (index) => const RandomContactCard()),
      ),
    );
  }
}

class RandomContactCard extends StatelessWidget {
  const RandomContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CustomListTile(
        name: NameGenerator.generateRandomName(),
        number: NumberGenerator.generateRandomNumber(),
        avatarURL: ContactsAppTexts.randomURL,
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.name, required this.number, required this.avatarURL});

  final String name;
  final String number;
  final String avatarURL;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}

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
