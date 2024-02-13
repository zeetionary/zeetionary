import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class DictionaryScreenEnglish extends ConsumerStatefulWidget {
  const DictionaryScreenEnglish({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DictionaryScreenEnglishState();
}

class _DictionaryScreenEnglishState
    extends ConsumerState<DictionaryScreenEnglish> {
  _DictionaryScreenEnglishState();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsEnglish = [
    // "dopsum",
    "a",
    "aback",
    "abacus",
    "abandon",
  ];

  Set<String> englishfavourites = {};

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allWordsEnglish);
    // Add a listener to the scroll controller to determine when to show the scroll-to-top button
    _scrollController.addListener(() {
      setState(() {
        showScrollToTop = _scrollController.offset > 100;
      });
    });
    _loadEnglishFavourites();
  }

  void _loadEnglishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      englishfavourites =
          prefs.getStringList('english favourites')?.toSet() ?? {};
    });
  }

  Future<void> _clearEnglishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('english favourites');

    // Update the state to reflect the changes immediately
    setState(() {
      englishFavourites.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Favourites cleared'),
      ),
    );
  }

  void _updateEnglishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final englishFavouritesList =
        prefs.getStringList('english favourites')?.toSet() ?? {};

    setState(() {
      englishfavourites = englishFavouritesList;
    });
  }

  void onEnglishFavourite(String word) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      final englishFavouritesList =
          prefs.getStringList('english favourites')?.toSet() ?? {};

      final wordWithoutTimestamp = word.split('-').first;

      if (englishFavouritesList.contains(wordWithoutTimestamp)) {
        englishFavouritesList.remove(wordWithoutTimestamp);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Favourite removed: $wordWithoutTimestamp'),
          ),
        );
      } else {
        englishFavouritesList.add(wordWithoutTimestamp);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Favourite added: $wordWithoutTimestamp'),
          ),
        );
      }

      prefs.setStringList('english favourites', englishFavouritesList.toList());
      _updateEnglishFavourites();
    });
  }

  void filterResults(String query) {
    setState(() {
      filteredWords = wordsEnglish
          .where((word) => word.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 1;
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 60,
              child: TextField(
                enableInteractiveSelection: false,
                onChanged: filterResults,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filterItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    var filter = filterItems.keys.toList()[index];
                    return _buildFilterTag(filter);
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: EnglishDictionary(
                words: filteredWords,
                onEnglishFavourite: onEnglishFavourite,
                englishfavourites: englishfavourites,
                onTapWord: (wordsEnglish) {
                  if (wordsEnglish == "a") {
                    Routemaster.of(context).push("/english-a");
                  }
                  if (wordsEnglish == "aback") {
                    Routemaster.of(context).push("/english-aback");
                  }
                  if (wordsEnglish == "abacus") {
                    Routemaster.of(context).push("/english-abacus");
                  }
                  if (wordsEnglish == "abandon") {
                    Routemaster.of(context).push("/english-abandon");
                  }
                  if (wordsEnglish == "abandoned") {
                    Routemaster.of(context).push("/english-abandoned");
                  }
                  if (wordsEnglish == "abandonment") {
                    Routemaster.of(context).push("/english-abandonment");
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EnglishDictionary extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;
  final ScrollController scrollController;
  final Function(String) onEnglishFavourite;
  final Set<String> englishfavourites;

  const EnglishDictionary({
    super.key,
    required this.words,
    required this.onTapWord,
    required this.scrollController,
    required this.onEnglishFavourite,
    required this.englishfavourites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController, // Use the passed scroll controller
      itemCount: words.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglish(
          wordsEnglish: words[index],
          onTap: () {
            onTapWord(words[index]);
          },
          onEnglishFavourite: () => onEnglishFavourite(
              words[index]), // Use the passed value for favouriting
          isFavouriteed: englishfavourites.contains(words[index]),
        );
      },
    );
  }
}

class ListTileEnglish extends ConsumerWidget {
  final String wordsEnglish;
  final VoidCallback? onTap;
  final VoidCallback? onEnglishFavourite;
  final bool isFavouriteed;

  const ListTileEnglish({
    super.key,
    required this.wordsEnglish,
    this.onTap,
    this.onEnglishFavourite,
    this.isFavouriteed = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2;
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(
          wordsEnglish,
          style: TextStyle(
            // color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: textSize, // Set your desired font size
          ),
        ),
        trailing: IconButton(
          icon: isFavouriteed
              ? Icon(Icons.favorite,
                  color: Theme.of(context).primaryColor.withOpacity(0.7))
              // color: Colors.red.shade300.withOpacity(0.99))
              : Icon(Icons.favorite_border,
                  color: Theme.of(context).primaryColor.withOpacity(0.7)),
          onPressed: () => onEnglishFavourite?.call(),
        ),
      ),
    );
  }
}

class CardButton extends ConsumerWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2;
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}
