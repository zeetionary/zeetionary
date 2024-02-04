// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KurdishFavouritesScreen extends StatefulWidget {
  // Callback function to notify the parent when favourites are cleared
  final void Function()? onClearKurdishFavourites;

  // Constructor to receive the callback function
  const KurdishFavouritesScreen({super.key, this.onClearKurdishFavourites});

  @override
  // _KurdishFavouritesScreenState createState() => _KurdishFavouritesScreenState();
  State<KurdishFavouritesScreen> createState() =>
      _KurdishFavouritesScreenState();
}

class _KurdishFavouritesScreenState extends State<KurdishFavouritesScreen> {
  List<String> kurdishfavourites = [];

  void Function()? onClearKurdishFavourites;

  @override
  void initState() {
    super.initState();
    _loadKurdishFavourites();
  }

  Future<void> _loadKurdishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final kurdishFavouritesList =
        prefs.getStringList('kurdish favourites')?.toList() ?? [];

    // Use a set to store unique titles without timestamps
    final uniqueKurdishTitles = <String>{};

    for (final kurdishfavourite in kurdishFavouritesList) {
      final title = kurdishfavourite.split('-').first;
      uniqueKurdishTitles.add(title);
    }

    setState(() {
      kurdishfavourites = uniqueKurdishTitles.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: kurdishfavourites.reversed.map(
          (kurdishfavourite) {
            final displayTitle = kurdishfavourite.split('-').first;
            return Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                title: Text(displayTitle),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () => navigateToScreen(context, kurdishfavourite),
              ),
            );
          },
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _clearKurdishFavourites();
        },
        child: const Icon(Icons.delete),
      ),
    );
  }

  Future<void> _clearKurdishFavourites() async {
    // Show a confirmation dialog
    bool confirmed = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Directionality(
              textDirection: TextDirection.rtl, child: Text('دڵنیایی کردنەوە')),
          content: const Directionality(
              textDirection: TextDirection.rtl,
              child: Text('دەتەوێت هەموو وشە دڵخوازەکان بسڕیتەوە؟')),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Dismiss the dialog and return false
              },
              child: const Text('نەخێر'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(true); // Dismiss the dialog and return true
              },
              child: const Text('بەڵێ'),
            ),
          ],
        );
      },
    );

    // If confirmed is true, clear favourites
    if (confirmed) {
      final prefs = await SharedPreferences.getInstance();
      prefs.remove('kurdish favourites');

      // Update favourites list before clearing
      if (!mounted) return; // Check if the widget is still mounted
      setState(() {
        kurdishfavourites.clear();
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
      if (widget.onClearKurdishFavourites != null) {
        widget.onClearKurdishFavourites!();
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
