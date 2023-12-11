import 'dart:math';

import 'package:flutter_application_1/005_book_ecommerce/data/model/book_model.dart';

import '../entities/book.dart';

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

abstract class BookRepository {
  BookModel generateRandomBook();
}
