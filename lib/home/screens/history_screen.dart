import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  Future<void> clearHistory(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Show a dialog to confirm clearing history
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
            tex
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

    // If the user confirms, clear the history
    if (confirmClear == true) {
      await prefs.remove('history');
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
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: FutureBuilder<List<String>>(
          future: loadHistory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final history = snapshot.data;
              return ListView.builder(
                itemCount: history?.length,
                itemBuilder: (context, index) {
                  final word = history![index];
                  return ListTile(
                    trailing: const Icon(Icons.arrow_forward),
                    title: Text(word),
                    onTap: () {
                      // Navigate to the corresponding screen based on the tapped word
                      navigateToScreen(context, word);
                    },
                  );
                },
              );
            } else {
              return const Text('No history found.');
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clearHistory(context);
          },
          child: const Icon(Icons.delete),
        ),
      ),
    );
  }

  Future<List<String>> loadHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> history = prefs.getStringList('history') ?? [];

    // Reverse the order of the history list
    return history.reversed.toList();
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
