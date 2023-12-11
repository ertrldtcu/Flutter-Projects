import 'package:flutter_application_1/005_book_ecommerce/domain/entities/book.dart';

import 'package:json_annotation/json_annotation.dart';
part 'book_model.g.dart';

@JsonSerializable()
class BookModel extends Book {
  BookModel({required super.id, required super.title, required super.author, required super.releaseDate});
  // : super(id: id, title: title, author: author, releaseDate: releaseDate);

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
