import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class KurdishHistoryScreen extends ConsumerStatefulWidget {
  const KurdishHistoryScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _KurdishHistoryScreenState();
}

class _KurdishHistoryScreenState extends ConsumerState<KurdishHistoryScreen> {
  _KurdishHistoryScreenState();

  Future<void> clearKurdishHistory(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    // Show a dialog to confirm clearing kurdish history
    bool confirmClear = await showDialog(
      context: context,
      builder: (BuildContext context) {
        final textSize = ref.watch(textSizeProvider) + 2;
        return Align(
          alignment: alignment,
          child: Directionality(
            textDirection: textDirection,
            child: AlertDialog(
              title: Text(
                isKurdish ? 'دڵنیایی کردنەوە' : 'Confirmation',
                style: TextStyle(
                  fontSize: textSize + 4,
                ),
                textDirection: textDirection,
              ),
              // content: const Text(''),
              content: Text(
                isKurdish
                    ? 'دەتەوێت ھەموو گەڕانەکانی پێشووی وشەی کوردی بسڕیتەوە؟'
                    : 'Do you really want to clear Kurdish search history?',
                style: TextStyle(
                  fontSize: textSize,
                ),
                textDirection: textDirection,
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text(
                    isKurdish ? 'نەخێر' : 'No',
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
                    isKurdish ? 'بەڵێ' : 'Yes',
                    style: TextStyle(
                      fontSize: textSize - 2,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    // If the user confirms, clear the kurdish history
    if (confirmClear == true) {
      await prefs.remove('kurdish history');

      // Update the state to trigger a rebuild
      // setState(() {});

      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).canvasColor,
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          showCloseIcon: true,
          closeIconColor: Theme.of(context).primaryColor,
          content: Directionality(
            textDirection: textDirection,
            child: Text(
              isKurdish ? 'مێژووی کوردی پاککرایەوە' : 'Kurdish history cleared',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: textSize + 1,
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
                //       'ھیچ لێرە نییە.، تکایە بۆ وشەی کوردی بگەڕێ بۆ ئەوەی لێرە دەربکەوێت'),
                // );
                return const EmptyPageIcon(
                  text: 'مێژوو چۆڵ‌وھۆڵە',
                );
              } else if (snapshot.hasData) {
                // Build the list view with history data
                final kurdishhistory = snapshot.data!;
                return ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const ListViewSeparator();
                  },
                  itemCount: kurdishhistory.length,
                  itemBuilder: (context, index) {
                    final word = kurdishhistory.elementAt(index);
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
          //     clearKurdishHistory(context);
          //   },
          //   child: const Icon(Icons.delete),
          // ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     clearKurdishHistory(context);
          //   },
          //   // backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          //   child: Icon(
          //     Icons.delete,
          //     size: textSize + 2,
          //     color: Theme.of(context).primaryColor.withOpacity(0.9),
          //   ),
          // ),
          floatingActionButton: CustomFloatingActionButton(
            onPressed: () {
              clearKurdishHistory(context);
            },
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
      "کوردستان": "/history-screen/aback",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}
