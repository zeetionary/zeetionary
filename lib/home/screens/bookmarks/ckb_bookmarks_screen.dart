// Import the necessary packages
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/constants.dart';

class KurdishFavouritesScreen extends ConsumerStatefulWidget {
  // Callback function to notify the parent when favourites are cleared
  final void Function()? onClearKurdishFavourites;

  // Constructor to receive the callback function
  const KurdishFavouritesScreen({super.key, this.onClearKurdishFavourites});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _KurdishFavouritesScreenState();
}

class _KurdishFavouritesScreenState
    extends ConsumerState<KurdishFavouritesScreen> {
  _KurdishFavouritesScreenState();
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

  // @override
  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 2;

    return Scaffold(
      body: kurdishfavourites.isEmpty
          ? const Center(
              child: EmptyPageIcon(
                text: 'ھیچ دڵخوازت نییە',
              ),
            )
          : ListView.separated(
              itemCount: kurdishfavourites.length,
              itemBuilder: (context, index) {
                final kurdishfavourite =
                    kurdishfavourites.reversed.toList()[index];
                final displayTitle = kurdishfavourite.split('-').first;
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    title: Text(
                      displayTitle,
                      style: TextStyle(
                        fontSize: textSize, // Set your desired font size
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () => navigateToScreen(context, kurdishfavourite),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const ListViewSeparator();
              },
            ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _clearKurdishFavourites();
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
          _clearKurdishFavourites(); // This is all you need to specify
        },
      ),
    );
  }

  Future<void> _clearKurdishFavourites() async {
    // Show a confirmation dialog
    bool confirmed = await showDialog(
      context: context,
      builder: (BuildContext context) {
        final textSize = ref.watch(textSizeProvider) + 2;
        return AlertDialog(
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'دڵنیایی کردنەوە',
              style: TextStyle(
                fontSize: textSize + 4,
              ),
            ),
          ),
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'دەتەوێت ھەموو وشە دڵخوازەکان بسڕیتەوە؟',
              style: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(true); // Dismiss the dialog and return true
              },
              child: Text(
                'بەڵێ',
                style: TextStyle(
                  fontSize: textSize - 2,
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Dismiss the dialog and return false
              },
              child: Text(
                'نەخێر',
                style: TextStyle(
                  fontSize: textSize - 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );

    // If confirmed is true, clear favourites
    if (confirmed) {
      final prefs = await SharedPreferences.getInstance();
      final textSize = ref.watch(textSizeProvider);

      prefs.remove('kurdish favourites');

      // Update favourites list before clearing
      if (!mounted) return; // Check if the widget is still mounted
      setState(() {
        kurdishfavourites.clear();
      });

      // Show SnackBar only if the widget is still mounted
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            showCloseIcon: true,
            closeIconColor: Theme.of(context).primaryColor,
            content: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'ھەموو وشە دڵخوازەکان سڕدرانەوە',
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

      // Notify parent when favourites are cleared
      if (widget.onClearKurdishFavourites != null) {
        widget.onClearKurdishFavourites!();
      }
    }
  }

  void navigateToScreen(BuildContext context, String word) {
    final screenRoutes = {
      "کوردستان": "/bookmarks-screen/aback",
    };

    final routeName = screenRoutes[word];

    if (routeName != null) {
      Routemaster.of(context).push(routeName);
    }
  }
}



// Widget build(BuildContext context) {
//     final textSize = ref.watch(textSizeProvider) + 2;

//     return Scaffold(
//       body: kurdishfavourites.isEmpty
//           ? const Center(
//               child: EmptyPageIcon(
//                 text: 'ھیچ دڵخوازت نییە',
//               ),
//             )
//           : ListView(
//               children: kurdishfavourites.reversed.map(
//                 (kurdishfavourite) {
//                   final displayTitle = kurdishfavourite.split('-').first;
//                   return Directionality(
//                     textDirection: TextDirection.rtl,
//                     child: ListTile(
//                       title: Text(
//                         displayTitle,
//                         style: TextStyle(
//                           fontSize: textSize, // Set your desired font size
//                         ),
//                       ),
//                       trailing: const Icon(Icons.arrow_forward),
//                       onTap: () => navigateToScreen(context, kurdishfavourite),
//                     ),
//                   );
//                 },
//               ).toList(),
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _clearKurdishFavourites();
//         },
//         child: const Icon(Icons.delete),
//       ),
//     );
//   }