import 'package:flutter/material.dart';

import 'custom_list_tile.dart';
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
