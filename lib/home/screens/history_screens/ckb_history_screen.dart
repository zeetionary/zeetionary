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
          // body: FutureBuilder<List<String>>(
          //   future: loadKurdishHistory(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const CircularProgressIndicator();
          //     } else if (snapshot.hasData) {
          //       final kurdishhistory = snapshot.data;
          //       return ListView.builder(
          //         itemCount: kurdishhistory?.length,
          //         itemBuilder: (context, index) {
          //           final word = kurdishhistory![index];
          //           return ListTile(
          //             trailing: const Icon(Icons.arrow_forward),
          //             title: Text(
          //               word,
          //               textDirection: TextDirection.rtl,
          //             ),
          //             onTap: () {
          //               // Navigate to the corresponding screen based on the tapped word
          //               navigateToScreen(context, word);
          //             },
          //           );
          //         },
          //       );
          //     } else {
          //       return const Text('No kurdish history found.');
          //     }
          //   },
          // ),
          // body: FutureBuilder<Set<String>>(
          //   // https://bard.google.com/chat/ad9cccab2b6f39b4
          //   future: loadKurdishHistory(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const CircularProgressIndicator();
          //     } else if (snapshot.hasData) {
          //       final kurdishhistory =
          //           snapshot.data!; // Access the history as a Set.
          //       return ListView.builder(
          //         itemCount: kurdishhistory.length,
          //         itemBuilder: (context, index) {
          //           final word = kurdishhistory
          //               .elementAt(index); // Access items using Set methods.
          //           return ListTile(
          //             title: Text(word),
          //             onTap: () => navigateToScreen(context, word),
          //           );
          //         },
          //       );
          //     } else {
          //       return const Text('No history found.');
          //     }
          //   },
          // ),
          body: FutureBuilder<Set<String>>(
            future: loadKurdishHistory(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                // History is empty, show message
                // return const Center(
                //   child: Text(
                //       'هیچ لێرە نییە.، تکایە بۆ وشەی کوردی بگەڕێ بۆ ئەوەی لێرە دەربکەوێت'),
                // );
                return Container(
                  alignment: Alignment.center,
                  child: const Column(
                    mainAxisSize:
                        MainAxisSize.min, // Centers the icon vertically
                    children: [
                      Icon(
                        Icons.history, // Choose an appropriate icon
                        size: 48.0, // Adjust icon size as needed
                        color: Colors
                            .grey, // Adjust icon color to match your theme
                      ),
                      Text("چۆڵ‌وهۆڵ"), // Optional: add text below if desired
                    ],
                  ),
                );
              } else if (snapshot.hasData) {
                // Build the list view with history data
                final kurdishhistory = snapshot.data!;
                return ListView.builder(
                  itemCount: kurdishhistory.length,
                  itemBuilder: (context, index) {
                    final word = kurdishhistory.elementAt(index);
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

  // Future<List<String>> loadKurdishHistory() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   List<String> kurdishhistory = prefs.getStringList('kurdish history') ?? [];

  //   // Reverse the order of the Kurdish history list
  //   return kurdishhistory.reversed.toList();
  // }

  Future<Set<String>> loadKurdishHistory() async {
    // https://bard.google.com/chat/ad9cccab2b6f39b4
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('kurdish history')?.toSet() ?? {};
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
