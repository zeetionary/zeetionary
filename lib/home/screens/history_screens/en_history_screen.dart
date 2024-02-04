import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';

class EnglishHistoryScreen extends StatelessWidget {
  const EnglishHistoryScreen({super.key});

  Future<void> clearEnglishHistory(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool confirmClear = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Confirmation',
            textDirection: TextDirection.ltr,
          ),
          // content: const Text(''),
          content: const Text(
            'Do you really want to clear search history?',
            textDirection: TextDirection.ltr,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );

    // If the user confirms, clear the history
    if (confirmClear == true) {
      await prefs.remove('english history');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Directionality(
          textDirection: TextDirection.ltr,
          child: Text('Cleared'),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: FutureBuilder<Set<String>>(
          future: loadEnglishHistory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData && snapshot.data!.isEmpty) {
              // History is empty, show message
              return const EmptyPageIcon(
                text: 'History is empty',
              );
            } else if (snapshot.hasData) {
              // Build the list view with history data
              final englishhistory = snapshot.data!;
              return ListView.builder(
                itemCount: englishhistory.length,
                itemBuilder: (context, index) {
                  final word = englishhistory.elementAt(index);
                  return ListTile(
                    title: Text(word),
                    onTap: () => navigateToScreen(context, word),
                  );
                },
              );
            } else {
              return const Text('Error loading history.');
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clearEnglishHistory(context);
          },
          child: const Icon(Icons.delete),
        ),
      ),
    );
  }

  Future<Set<String>> loadEnglishHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('english history')?.toSet() ?? {};
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
