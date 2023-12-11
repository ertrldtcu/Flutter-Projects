import 'dart:math';

import 'package:flutter_application_1/005_book_ecommerce/data/model/book_model.dart';

import '../../../domain/repository/book_repository.dart';

var id = 0;
var titles = [
  "Silent Phoenix",
  "Kingdom of Shadows",
  "Bard's Duel",
  "Strike The Truth",
  "Nebula Falling",
  "2619: Armageddon",
  "The Man in the Mist"
];
var names = ["Ali", "Veli", "Mehmet", "Ahmet", "Burak"];
var surnames = ["Keskin", "Yılmaz", "Kaya", "Demir"];

class BookRepositoryIml extends BookRepository {
  @override
  BookModel generateRandomBook() {
    return BookModel(
      id: id++,
      title: (titles..shuffle()).first,
      author: (names..shuffle()).first + (surnames..shuffle()).first,
      releaseDate: "${Random().nextInt(28)}/${Random().nextInt(12)}/${Random().nextInt(100) + 1923}",
    );
  }
}
