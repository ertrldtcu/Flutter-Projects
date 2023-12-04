import 'package:flutter/material.dart';
import 'package:flutter_application_1/004_track_of_books/general.dart';

import 'navigate_manager.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("kitap adı"), centerTitle: true),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://picsum.photos/120/180"),
            const Text(
              textAlign: TextAlign.center,
              "kitap açıklaması türler türler2 türler 3",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(NavigateResponse(response: true, id: 0));
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(ProjectTexts.markAsRead, style: TextStyle(fontSize: 18)),
                    Icon(Icons.check),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
