import 'package:flutter/material.dart';

import 'texts_prac.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.payment_outlined,
                  size: 32,
                ),
                label: const Text(Texts.pay)),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_giftcard_outlined,
              size: 24,
            ),
          ),
          // FloatingActionButton(onPressed: () {}),
        ],
      ),
    );
  }
}
