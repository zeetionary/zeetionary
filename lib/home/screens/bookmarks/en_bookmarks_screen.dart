// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/constants.dart';

class EnglishfavouritesScreen extends ConsumerStatefulWidget {
  // Callback function to notify the parent when favourites are cleared
  final void Function()? onClearEnglishfavourites;

  // Constructor to receive the callback function
  const EnglishfavouritesScreen({super.key, this.onClearEnglishfavourites});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnglishfavouritesScreenState();
}

class _EnglishfavouritesScreenState
    extends ConsumerState<EnglishfavouritesScreen> {
  _EnglishfavouritesScreenState();
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
        prefs.getStringList('english favourites')?.toList() ?? [];

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

  @override
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
          : ListView(
              children: englishfavourites.reversed.map(
                (englishfavourite) {
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
              ).toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _clearenglishfavourites();
        },
        child: const Icon(Icons.delete),
      ),
    );
  }

  Future<void> _clearenglishfavourites() async {
    // Show a confirmation dialog
    bool confirmed = await showDialog(
      context: context,
      builder: (BuildContext context) {
        final textSize = ref.watch(textSizeProvider) + 2;

        return AlertDialog(
          title: Text(
            'Confirmation',
            style: TextStyle(
              fontSize: textSize + 4,
            ),
          ),
          content: Text(
            'Do you really want to clear all favourites?',
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
                'No',
                style: TextStyle(
                  fontSize: textSize,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(true); // Dismiss the dialog and return true
              },
              child: Text(
                'Yes',
                style: TextStyle(
                  fontSize: textSize,
                ),
              ),
            ),
          ],
        );
      },
    );

    // If confirmed is true, clear favourites
    if (confirmed) {
      final prefs = await SharedPreferences.getInstance();
      prefs.remove('english favourites');

      // Update favourites list before clearing
      if (!mounted) return; // Check if the widget is still mounted
      setState(() {
        englishfavourites.clear();
      });

      // Show SnackBar only if the widget is still mounted
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Favourites cleared'),
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
      "aback": "/bookmarks-screen/aback",
      "deer": "/bookmarks-screen/deer",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}
