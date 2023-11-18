import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KurdishHistoryScreen extends StatelessWidget {
  const KurdishHistoryScreen({super.key});

  Future<void> clearKurdishHistory(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Show a dialog to confirm clearing kurdish history
    // ignore: use_build_context_synchronously
    bool confirmClear = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'دڵنیایی‌ کردنەوە',
            textDirection: TextDirection.rtl,
          ),
          // content: const Text(''),
          content: const Text(
            'دەتەوێت ھەموو گەڕانەکانی پێشوو بسڕیتەوە؟',
            textDirection: TextDirection.rtl,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('نەخێر'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('بەڵێ'),
            ),
          ],
        );
      },
    );

    // If the user confirms, clear the kurdish history
    if (confirmClear == true) {
      await prefs.remove('kurdish history');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Directionality(
          textDirection: TextDirection.rtl,
          child: Text('پاککرایەوە'),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: FutureBuilder<List<String>>(
            future: loadKurdishHistory(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                final kurdishhistory = snapshot.data;
                return ListView.builder(
                  itemCount: kurdishhistory?.length,
                  itemBuilder: (context, index) {
                    final word = kurdishhistory![index];
                    return ListTile(
                      trailing: const Icon(Icons.arrow_forward),
                      title: Text(
                        word,
                        textDirection: TextDirection.rtl,
                      ),
                      onTap: () {
                        // Navigate to the corresponding screen based on the tapped word
                        navigateToScreen(context, word);
                      },
                    );
                  },
                );
              } else {
                return const Text('No kurdish history found.');
              }
            },
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     clearKurdishHistory(context);
          //   },
          //   child: const Icon(Icons.delete),
          // ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              clearKurdishHistory(context);
            },
            child: const Icon(Icons.delete),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        ),
      ),
    );
  }

  Future<List<String>> loadKurdishHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> kurdishhistory = prefs.getStringList('kurdish history') ?? [];

    // Reverse the order of the Kurdish history list
    return kurdishhistory.reversed.toList();
  }

  void navigateToScreen(BuildContext context, String word) {
    final screenRoutes = {
      "کوردی": "/english-a",
      "کوردستان": "/english-aback",
      "abacus": "/english-abacus",
      "abandon": "/english-abandon",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}
