import 'dart:math';

import 'package:pokemon/src/de.dart';
import 'package:pokemon/src/en.dart';
import 'package:pokemon/src/es.dart';
import 'package:pokemon/src/fr.dart';
import 'package:pokemon/src/ja.dart';
import 'package:pokemon/src/ko.dart';
import 'package:pokemon/src/ru.dart';
import 'package:pokemon/src/th.dart';
import 'package:pokemon/src/zh_hans.dart';
import 'package:pokemon/src/zh_hant.dart';

class Pokemon {
  static const List<String> languages = [
    'de',
    'en',
    'fr',
    'es',
    'ja',
    'ko',
    'ru',
    'th',
    'zh-Hans',
    'zh-Hant',
  ];

  static List<String> all([String language = 'en']) {
    switch (language) {
      case 'de':
        return de;
      case 'en':
        return en;
      case 'fr':
        return fr;
      case 'es':
        return es;
      case 'ja':
        return ja;
      case 'ko':
        return ko;
      case 'ru':
        return ru;
      case 'th':
        return th;
      case 'zh-Hans':
        return zhHans;
      case 'zh-Hant':
        return zhHant;
      default:
        throw ArgumentError(
            "Localized list for language code '$language' does not exist.");
    }
  }

  static String random([String language = 'en']) {
    final list = all(language);
    return list[Random().nextInt(list.length)];
  }

  static String getName(int id, [String language = 'en']) {
    final list = all(language);
    if (id < 1 || id > list.length) {
      throw ArgumentError("Pokémon with ID '$id' does not exist.");
    }
    return list[id - 1];
  }

  static int getId(String name, [String language = 'en']) {
    final list = all(language);
    if (!list.contains(name)) {
      throw ArgumentError(
          "Pokémon with name '$name' does not exist for language code '$language'.");
    }
    return list.indexOf(name) + 1;
  }
}
