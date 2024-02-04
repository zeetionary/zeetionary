// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnglishfavouritesScreen extends StatefulWidget {
  // Callback function to notify the parent when favourites are cleared
  final void Function()? onClearEnglishfavourites;

  // Constructor to receive the callback function
  const EnglishfavouritesScreen({super.key, this.onClearEnglishfavourites});

  @override
  // _EnglishfavouritesScreenState createState() => _EnglishfavouritesScreenState();
  State<EnglishfavouritesScreen> createState() =>
      _EnglishfavouritesScreenState();
}

class _EnglishfavouritesScreenState extends State<EnglishfavouritesScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: englishfavourites.reversed.map(
          (englishfavourite) {
            final displayTitle = englishfavourite.split('-').first;
            return ListTile(
              title: Text(displayTitle),
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
        return AlertDialog(
          title: const Text('Confirmation'),
          content: const Text('Do you really want to clear all favourites?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Dismiss the dialog and return false
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(true); // Dismiss the dialog and return true
              },
              child: const Text('Yes'),
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
      "a": "/english-a",
      "aback": "/english-aback",
      "abacus": "/english-abacus",
      "abandon": "/english-abandon",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}
