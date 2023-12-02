import 'dart:math';

class ContactsAppTexts {
  static const String title = "Contacts App";
  static const String randomURL = "https://picsum.photos/seed/%seed/200/200";
}

class ContactsAppSize {
  static const double iconSize = 18;
}

class NameGenerator {
  static final List<String> names = ["Ali", "Veli", "Ahmet", "Mehmet"];
  static final List<String> surnames = ["Keskin", "Yılmaz", "Kaya", "Demir"];

  static String generateRandomName() {
    return "${(names..shuffle()).first} ${(surnames..shuffle()).first}";
  }
}

class NumberGenerator {
  static const String countryCode = "+90 5";

  static String generateRandomNumber() {
    String number = countryCode;
    Random random = Random();
    for (var i = 0; i < 11; i++) {
      number += (i == 2 || i == 6) ? " " : random.nextInt(10).toString();
    }

    return number;
  }
}
