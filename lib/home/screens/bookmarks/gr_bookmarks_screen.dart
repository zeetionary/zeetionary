// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/constants.dart';

class GrammmarfavouritesScreen extends ConsumerStatefulWidget {
  // Callback function to notify the parent when favourites are cleared
  final void Function()? onClearEnglishfavourites;

  // Constructor to receive the callback function
  const GrammmarfavouritesScreen({super.key, this.onClearEnglishfavourites});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GrammmarfavouritesScreenState();
}

class _GrammmarfavouritesScreenState
    extends ConsumerState<GrammmarfavouritesScreen> {
  _GrammmarfavouritesScreenState();
  List<String> englishfavourites = [];

  void Function()? onClearEnglishfavourites;

  @override
  void initState() {
    super.initState();
    _loadenglishfavourites();
  }

  Future<void> _loadenglishfavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final englishfavouritesList =
        prefs.getStringList('grammar favourites')?.toList() ?? [];

    // Use a set to store unique titles without timestamps
    final uniqueEnglishTitles = <String>{};

    for (final englishfavourite in englishfavouritesList) {
      final title = englishfavourite.split('-').first;
      uniqueEnglishTitles.add(title);
    }

    setState(() {
      englishfavourites = uniqueEnglishTitles.toList();
    });
  }

  // @override
  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 2;

    return Scaffold(
      body: englishfavourites.isEmpty
          ? const Center(
              child: EmptyPageIcon(
                text: 'No favourites here',
              ),
            )
          : ListView.separated(
              itemCount: englishfavourites.length,
              itemBuilder: (context, index) {
                final englishfavourite =
                    englishfavourites.reversed.toList()[index];
                final displayTitle = englishfavourite.split('-').first;
                return ListTile(
                  title: Text(
                    displayTitle,
                    style: TextStyle(
                      fontSize: textSize, // Set your desired font size
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () => navigateToScreen(context, englishfavourite),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const ListViewSeparator();
              },
            ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _clearenglishfavourites();
      //   },
      //   // backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
      //       child: Icon(
      //         Icons.delete,
      //         size: textSize + 2,
      //         color: Theme.of(context).primaryColor.withOpacity(0.9),
      //       ),
      // ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          _clearenglishfavourites(); // This is all you need to specify
        },
      ),
    );
  }

  Future<void> _clearenglishfavourites() async {
    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    // Show a confirmation dialog
    bool confirmed = await showDialog(
      context: context,
      builder: (BuildContext context) {
        final textSize = ref.watch(textSizeProvider) + 2;

        return Align(
          alignment: alignment,
          child: Directionality(
            textDirection: textDirection,
            child: AlertDialog(
              title: Text(
                isKurdish ? 'دڵنیایی کردنەوە' : 'Confirmation',
                style: TextStyle(
                  fontSize: textSize + 4,
                ),
              ),
              content: Text(
                isKurdish
                    ? 'دەتەوێت ھەموو بابەتە ڕێزمانییە دڵخوازەکان بسڕیتەوە؟'
                    : 'Do you really want to clear all Grammar favourites?',
                style: TextStyle(
                  fontSize: textSize,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop(false); // Dismiss the dialog and return false
                  },
                  child: Text(
                    isKurdish ? 'نەخێر' : 'No',
                    style: TextStyle(
                      fontSize: textSize - 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop(true); // Dismiss the dialog and return true
                  },
                  child: Text(
                    isKurdish ? 'بەڵێ' : 'Yes',
                    style: TextStyle(
                      fontSize: textSize - 2,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    // If confirmed is true, clear favourites
    if (confirmed) {
      final prefs = await SharedPreferences.getInstance();
      final textSize = ref.watch(textSizeProvider);

      prefs.remove('grammar favourites');

      // Update favourites list before clearing
      if (!mounted) return; // Check if the widget is still mounted
      setState(() {
        englishfavourites.clear();
      });

      // Show SnackBar only if the widget is still mounted
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).canvasColor,
            // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            showCloseIcon: true,
            closeIconColor: Theme.of(context).primaryColor,
            content: Directionality(
              textDirection: textDirection,
              child: Text(
                isKurdish ? 'دڵخوازەکان سڕانەوە' : 'Favourites cleared',
                style: TextStyle(
                  fontSize: textSize + 1,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }

      // Notify parent when favourites are cleared
      if (widget.onClearEnglishfavourites != null) {
        widget.onClearEnglishfavourites!();
      }
    }
  }

  void navigateToScreen(BuildContext context, String word) {
    final screenRoutes = {
      "a": "/bookmarks-screen/a",
      "aback": "/bookmarks-screen/aback",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}
