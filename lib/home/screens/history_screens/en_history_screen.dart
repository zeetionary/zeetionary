import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

// class EnglishHistoryScreen extends StatefulWidget {
//   const EnglishHistoryScreen({super.key});

//   @override
//   // _EnglishHistoryScreenState createState() => _EnglishHistoryScreenState();
//   State<EnglishHistoryScreen> createState() =>
//       _EnglishHistoryScreenState();
// }

class EnglishHistoryScreen extends ConsumerStatefulWidget {
  const EnglishHistoryScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnglishHistoryScreenState();
}

class _EnglishHistoryScreenState extends ConsumerState<EnglishHistoryScreen> {
  _EnglishHistoryScreenState();

  Future<void> clearEnglishHistory(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // ignore: use_build_context_synchronously
    bool confirmClear = await showDialog(
      context: context,
      builder: (BuildContext context) {
        final textSize = ref.watch(textSizeProvider) + 2;
        return AlertDialog(
          title: Text(
            'Confirmation',
            style: TextStyle(
              fontSize: textSize + 4,
            ),
            textDirection: TextDirection.ltr,
          ),
          // content: const Text(''),
          content: Text(
            'Do you really want to clear search history?',
            style: TextStyle(
              fontSize: textSize,
            ),
            textDirection: TextDirection.ltr,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
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
                Navigator.of(context).pop(true);
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

    // If the user confirms, clear the history
    if (confirmClear == true) {
      await prefs.remove('english history');

      // Update the state to trigger a rebuild
      setState(() {});

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Directionality(
          textDirection: TextDirection.ltr,
          child: Text('History cleared'),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 2;
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
                    title: Text(
                      word,
                      style: TextStyle(
                        fontSize: textSize, // Set your desired font size
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
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
