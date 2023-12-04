import 'package:flutter/material.dart';

import 'book.dart';
import 'book_details.dart';
import 'general.dart';
import 'navigate_manager.dart';

class BookList extends StatelessWidget {
  const BookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _BookItem(index);
      },
    );
  }
}

class _BookItem extends StatefulWidget {
  const _BookItem(this.index);
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
    _BookItem.books.add(book);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ProjectSizes.listSpace),
      child: Container(
        decoration: ProjectDesigns().bookBacground,
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
            _BookNumber(number: widget.index + 1, book: book),
            const _ReadDetailsButton()
          ]),
        ),
      ),
    );
  }
}

class _ReadDetailsButton extends StatefulWidget with NavigateManager {
  // ignore: unused_element
  const _ReadDetailsButton({super.key});

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
          final response = await navigate<NavigateResponse>(context, const BookDetails());
          if (response != null) {
            if (response.response == true) {
              for (var book in _BookItem.books) {
                if (book.id == response.id) {
                  setState(() {
                    book.state = true;
                  });
                }
              }
            }
          }
        },
        icon: const Icon(ProjectIcons.openDetailsIcon),
      ),
    );
  }
}

class _BookNumber extends StatefulWidget {
  const _BookNumber({required this.number, required this.book});
  final int number;
  final Book book;

  @override
  State<_BookNumber> createState() => _BookNumberState();
}

class _BookNumberState extends State<_BookNumber> {
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
            "#${widget.number}",
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
