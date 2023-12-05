import 'package:flutter/material.dart';
import 'package:flutter_application_1/004_track_of_books/general.dart';

// import 'general.dart';
import 'book.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key, required this.book});
  final Book book;
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.book.name), centerTitle: true),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://picsum.photos/120/180"),
            Text(
              textAlign: TextAlign.center,
              widget.book.subjects,
              style: const TextStyle(fontSize: ProjectSizes.bookSubjectSize),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(widget.book);
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
