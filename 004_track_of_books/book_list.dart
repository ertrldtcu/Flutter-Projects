import 'package:flutter/material.dart';

import 'book.dart';
import 'book_details.dart';
import 'general.dart';
import 'navigate_manager.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _BookItem(index: index);
      },
    );
  }
}

class _BookItem extends StatefulWidget {
  const _BookItem({required this.index});
  final int index;
  static final List<Book> books = [];
  @override
  State<_BookItem> createState() => _BookItemState();
}

class _BookItemState extends State<_BookItem> {
  late final Book book;
  @override
  void initState() {
    super.initState();
    int id = widget.index;
    book = Book(id, "Kitap ismi $id", "Konu ${id + 1},konu ${id + 2},konu ${id + 3}", "$id/02/2023", false);
    // book.numberWidget = ;
    _BookItem.books.add(book);
  }

  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ProjectSizes.listSpace),
      child: Container(
        decoration: ProjectDesigns().bookBackground,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(ProjectSizes.bookItemRadius)),
          child: Stack(children: [
            Container(
              color: ProjectColors.bookItemBackgroundColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(ProjectSizes.bookItemRadius),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(ProjectSizes.bookItemRadius)),
                      child: Image.network(
                        "https://picsum.photos/120/180",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _BookName(name: book.name),
                      _BookSubjects(subjects: book.subjects),
                      _BookDate(date: book.date),
                    ],
                  )
                ],
              ),
            ),
            _BookNumber(book: book),
            // book.numberWidget.widget,
            _ReadDetailsButton(book: book, callback: refresh)
          ]),
        ),
      ),
    );
  }
}

class _ReadDetailsButton extends StatefulWidget with NavigateManager {
  final Book book;
  final Function callback;
  const _ReadDetailsButton({required this.book, required this.callback});

  @override
  State<_ReadDetailsButton> createState() => _ReadDetailsButtonState();
}

class _ReadDetailsButtonState extends State<_ReadDetailsButton> with NavigateManager {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: IconButton(
        onPressed: () async {
          final response = await navigate<Book>(context, BookDetails(book: widget.book));
          if (response != null) {
            // print(widget.book.state);
            response.state = true;
            widget.callback();

            // widget.book.numberWidget.updateBookNumber();
          }
        },
        icon: const Icon(ProjectIcons.openDetailsIcon),
      ),
    );
  }
}

class _BookNumber extends StatefulWidget {
  const _BookNumber({required this.book});
  final Book book;

  @override
  State<_BookNumber> createState() => _BookNumberState();
}

class _BookNumberState extends State<_BookNumber> {
  void updateBookNumber() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: widget.book.state ? Colors.orange : ProjectColors().bookItemNumberColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(ProjectSizes.bookItemRadius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "#${widget.book.id + 1}",
            style:
                const TextStyle(fontSize: ProjectSizes.bookNumberSize, fontWeight: ProjectSizes.bookNumberFontWeight),
          ),
        ),
      ),
    );
  }
}

class _BookName extends StatelessWidget {
  const _BookName({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name, style: const TextStyle(fontSize: ProjectSizes.bookNameSize));
  }
}

class _BookSubjects extends StatelessWidget {
  const _BookSubjects({required this.subjects});
  final String subjects;

  @override
  Widget build(BuildContext context) {
    return Text(subjects, style: const TextStyle(fontSize: ProjectSizes.bookSubjectSize));
  }
}

class _BookDate extends StatelessWidget {
  const _BookDate({required this.date});
  final String date;
  @override
  Widget build(BuildContext context) {
    return Text(date, style: const TextStyle(fontSize: ProjectSizes.bookDateSize, fontStyle: FontStyle.italic));
  }
}
