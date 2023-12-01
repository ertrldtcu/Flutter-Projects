import 'package:flutter/material.dart';

import 'texts_prac.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(Texts.title),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.settings_outlined,
            size: 28,
          ),
        )
      ],
      leading: IconButton(
        icon: const Icon(Icons.person_outline),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
