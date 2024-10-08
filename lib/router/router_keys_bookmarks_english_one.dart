import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
//
//
//
//

// import 'package:zeetionary/router/exports_english_first.dart';

//
//
//
//
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_a.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';

MaterialPage _blP(Widget child) => MaterialPage(child: child);

Map<String, PageBuilder> getRoutesEnglishBookmarksOne() {
  return {
    "/bookmarks-screen/a": (_) => _blP(const EnglishEntrya()),
    "/bookmarks-screen/aback": (_) => _blP(const EnglishEntryaback()),
  };
}
