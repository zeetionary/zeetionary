// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';

class BookmarksScreen extends StatefulWidget {
  // Callback function to notify the parent when bookmarks are cleared
  final void Function()? onClearBookmarks;

  // Constructor to receive the callback function
  const BookmarksScreen({Key? key, this.onClearBookmarks}) : super(key: key);

  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  List<String> bookmarks = [];

  void Function()? onClearBookmarks;

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarksList = prefs.getStringList('bookmarks')?.toList() ?? [];

    // Use a set to store unique titles without timestamps
    final uniqueTitles = <String>{};

    for (final bookmark in bookmarksList) {
      final title = bookmark.split('-').first;
      uniqueTitles.add(title);
    }

    setState(() {
      bookmarks = uniqueTitles.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: ListView(
        children: bookmarks.reversed.map(
          (bookmark) {
            final displayTitle = bookmark.split('-').first;
            return ListTile(
              title: Text(displayTitle),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () => navigateToScreen(context, bookmark),
            );
          },
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _clearBookmarks();
        },
        child: const Icon(Icons.clear),
      ),
    );
  }

  Future<void> _clearBookmarks() async {
    // Show a confirmation dialog
    bool confirmed = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Clear Bookmarks'),
          content: Text('Are you sure you want to clear all bookmarks?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Dismiss the dialog and return false
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(true); // Dismiss the dialog and return true
              },
              child: Text('Clear'),
            ),
          ],
        );
      },
    );

    // If confirmed is true, clear bookmarks
    if (confirmed) {
      final prefs = await SharedPreferences.getInstance();
      prefs.remove('bookmarks');

      // Update bookmarks list before clearing
      setState(() {
        bookmarks.clear();
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bookmarks cleared'),
        ),
      );

      // Notify parent when bookmarks are cleared
      if (widget.onClearBookmarks != null) {
        widget.onClearBookmarks!();
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

// class BookmarksScreen extends StatefulWidget {
//   @override
//   _BookmarksScreenState createState() => _BookmarksScreenState();
// }

// class _BookmarksScreenState extends State<BookmarksScreen> {
//   List<String> bookmarks = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadBookmarks();
//   }

//   Future<void> _loadBookmarks() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       bookmarks = prefs.getStringList('bookmarks')?.toList() ?? [];
//       bookmarks.sort((a, b) => b.compareTo(a)); // Sort in descending order
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const ZeetionaryAppbar(),
//       body: ListView(
//         children: bookmarks
//             .map(
//               (bookmark) => ListTile(
//                 title: Text(bookmark),
//                 trailing: const Icon(Icons.arrow_forward),
//                 onTap: () => navigateToScreen(context, bookmark),
//               ),
//             )
//             .toList(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Clear bookmarks logic here
//           _clearBookmarks();
//         },
//         child: const Icon(Icons.clear),
//       ),
//     );
//   }

//   Future<void> _clearBookmarks() async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.remove('bookmarks');

//     // Update the state to reflect the changes immediately
//     setState(() {
//       bookmarks.clear();
//     });

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: const Text('Bookmarks cleared'),
//       ),
//     );
//   }

//   void navigateToScreen(BuildContext context, String word) {
//     final screenRoutes = {
//       "a": "/english-a",
//       "aback": "/english-aback",
//       "abacus": "/english-abacus",
//       "abandon": "/english-abandon",
//     };

//     final routeName = screenRoutes[word];

//     if (routeName != null) {
//       Routemaster.of(context).push(routeName);
//     }
//   }
// }
