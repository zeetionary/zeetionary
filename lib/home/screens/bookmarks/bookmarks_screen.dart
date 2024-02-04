// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  List<String> bookmarks = [];

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      bookmarks = prefs.getStringList('bookmarks')?.toList() ?? [];
      bookmarks.sort((a, b) => b.compareTo(a)); // Sort in descending order
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: ListView(
        children: bookmarks
            .map(
              (bookmark) => ListTile(
                title: Text(bookmark),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () => navigateToScreen(context, bookmark),
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Clear bookmarks logic here
          _clearBookmarks();
        },
        child: const Icon(Icons.clear),
      ),
    );
  }

  Future<void> _clearBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('bookmarks');

    // Update the state to reflect the changes immediately
    setState(() {
      bookmarks.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Bookmarks cleared'),
      ),
    );
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
