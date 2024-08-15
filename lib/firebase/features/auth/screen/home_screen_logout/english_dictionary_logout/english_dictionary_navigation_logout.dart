import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/firebase/features/auth/screen/home_screen_logout/english_dictionary_logout/english_dictionary_navigation_routes_logout.dart';
import 'package:zeetionary/firebase/features/auth/screen/home_screen_logout/english_dictionary_logout/english_dictionary_tile_and_card_logout.dart';

class EnglishDictionaryNavigationLogout extends StatelessWidget {
  final List<String> words;
  final ScrollController scrollController;
  final Function(String) onEnglishFavourite;
  final Set<String> englishfavourites;

  const EnglishDictionaryNavigationLogout({
    super.key,
    required this.words,
    required this.scrollController,
    required this.onEnglishFavourite,
    required this.englishfavourites,
  });

  @override
  Widget build(BuildContext context) {
    return EnglishDictionaryLogout(
      words: words,
      scrollController: scrollController,
      onEnglishFavourite: onEnglishFavourite,
      englishfavourites: englishfavourites,
      onTapWord: (wordsEnglish) {
        saveToHistory(wordsEnglish);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Directionality(
              textDirection: TextDirection.ltr,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                    'Please log in with an account to unlock the full content of the app'),
              ),
            ),
          ),
        );

        String? route = wordRoutesLogout[wordsEnglish];
        if (route != null) {
          Routemaster.of(context).push(route);
        }
      },
    );
  }

  void saveToHistory(String word) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> englishhistory = prefs.getStringList('english history') ?? [];

    if (englishhistory.contains(word)) {
      englishhistory.remove(word);
    }

    englishhistory.insert(0, word);
    await prefs.setStringList('english history', englishhistory);
  }
}
