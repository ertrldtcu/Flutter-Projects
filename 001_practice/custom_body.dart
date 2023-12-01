import 'package:flutter/material.dart';

import 'texts_prac.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(children: [
            WidgetSpan(
                child: Icon(
              Icons.music_note_outlined,
              size: 38,
            )),
            TextSpan(
                text: Texts.content,
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2))
          ]),
        ),
      ),
    );
  }
}
