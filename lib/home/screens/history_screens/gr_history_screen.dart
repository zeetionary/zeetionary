import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

// class GrammarHistoryScreen extends StatefulWidget {
//   const GrammarHistoryScreen({super.key});

//   @override
//   // _GrammarHistoryScreenState createState() => _GrammarHistoryScreenState();
//   State<GrammarHistoryScreen> createState() =>
//       _GrammarHistoryScreenState();
// }

class GrammarHistoryScreen extends ConsumerStatefulWidget {
  const GrammarHistoryScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GrammarHistoryScreenState();
}

class _GrammarHistoryScreenState extends ConsumerState<GrammarHistoryScreen> {
  _GrammarHistoryScreenState();

  Future<void> clearEnglishHistory(BuildContext context) async {
    final textSize = ref.watch(textSizeProvider);
    SharedPreferences prefs = await SharedPreferences.getInstance();
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
                  fontSize: textSize - 2,
                  color: Theme.of(context).primaryColor,
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
                  fontSize: textSize - 2,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );

    // if (confirmClear == true) {
    //   await prefs.remove('grammar history');

    // Update the state to trigger a rebuild
    //   setState(() {});

    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //     content: Directionality(
    //       textDirection: TextDirection.ltr,
    //       child: Text('History cleared'),
    //     ),
    //   ));
    // }

    if (confirmClear == true) {
      await prefs.remove('grammar history');
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          showCloseIcon: true,
          closeIconColor: Theme.of(context).primaryColor,
          content: Directionality(
            textDirection: TextDirection.ltr,
            child: Text(
              'History cleared',
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
              return const CircularProgressIndicator.adaptive();
            } else if (snapshot.hasData && snapshot.data!.isEmpty) {
              // History is empty, show message
              return const EmptyPageIcon(
                text: 'History is empty',
              );
            } else if (snapshot.hasData) {
              // Build the list view with history data
              final englishhistory = snapshot.data!;
              return ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const ListViewSeparator();
                },
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
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     clearEnglishHistory(context);
        //   },
        //   backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
        //   child: Icon(
        //     Icons.delete,
        //     size: textSize + 2,
        //     color: Theme.of(context).primaryColor.withOpacity(0.9),
        //   ),
        // ),
        floatingActionButton: CustomFloatingActionButton(
          onPressed: () {
            clearEnglishHistory(context); // This is all you need to specify
          },
        ),
      ),
    );
  }

  Future<Set<String>> loadEnglishHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('grammar history')?.toSet() ?? {};
  }

  void navigateToScreen(BuildContext context, String word) {
    final screenRoutes = {
      "a": "/history-screen/a",
      "aback": "/history-screen/aback",
      "abacus": "/history-screen/abacus",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}
