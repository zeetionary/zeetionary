import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/grammar/grammar_navigation_routes.dart';
import 'package:zeetionary/grammar/grammar_tile_and_card.dart';

class GrammarNavigation extends StatelessWidget {
  final List<String> words;
  final ScrollController scrollController;
  final Function(String) onGrammarFavourite;
  final Set<String> grammarfavourites;

  const GrammarNavigation({
    super.key,
    required this.words,
    required this.scrollController,
    required this.onGrammarFavourite,
    required this.grammarfavourites,
  });

  @override
  Widget build(BuildContext context) {
    return EnglishDictionary(
      words: words,
      scrollController: scrollController,
      onGrammarFavourite: onGrammarFavourite,
      grammarfavourites: grammarfavourites,
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
    List<String> grammarhistory = prefs.getStringList('grammar history') ?? [];

    if (grammarhistory.contains(word)) {
      grammarhistory.remove(word);
    }

    grammarhistory.insert(0, word);
    await prefs.setStringList('grammar history', grammarhistory);
  }
}
