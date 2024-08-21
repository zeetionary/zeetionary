import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/grammar/grammar_navigation_routes.dart';
import 'package:zeetionary/grammar/grammar_tile_and_card.dart';

class EnglishDictionaryNavigation extends StatelessWidget {
  final List<String> words;
  final ScrollController scrollController;
  final Function(String) onEnglishFavourite;
  final Set<String> englishfavourites;

  const EnglishDictionaryNavigation({
    super.key,
    required this.words,
    required this.scrollController,
    required this.onEnglishFavourite,
    required this.englishfavourites,
  });

  @override
  Widget build(BuildContext context) {
    return EnglishDictionary(
      words: words,
      scrollController: scrollController,
      onEnglishFavourite: onEnglishFavourite,
      englishfavourites: englishfavourites,
      onTapWord: (wordsEnglish) {
        saveToHistory(wordsEnglish);
        String? route = wordRoutes[wordsEnglish];
        if (route != null) {
          Routemaster.of(context).push(route);
        }
      },
    );
  }

  void saveToHistory(String word) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> englishhistory = prefs.getStringList('grammar history') ?? [];

    if (englishhistory.contains(word)) {
      englishhistory.remove(word);
    }

    englishhistory.insert(0, word);
    await prefs.setStringList('grammar history', englishhistory);
  }
}
