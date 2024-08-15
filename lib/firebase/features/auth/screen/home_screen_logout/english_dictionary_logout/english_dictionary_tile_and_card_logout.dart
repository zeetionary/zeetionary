import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class EnglishDictionaryLogout extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;
  final ScrollController scrollController;
  final Function(String) onEnglishFavourite;
  final Set<String> englishfavourites;

  const EnglishDictionaryLogout({
    super.key,
    required this.words,
    required this.onTapWord,
    required this.scrollController,
    required this.onEnglishFavourite,
    required this.englishfavourites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      itemCount: words.length,
      separatorBuilder: (BuildContext context, int index) {
        return const ListViewSeparator();
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglishLogout(
          wordsEnglish: words[index],
          onTap: () {
            onTapWord(words[index]);
          },
          onEnglishFavourite: () => onEnglishFavourite(words[index]),
          isFavouriteed: englishfavourites.contains(words[index]),
        );
      },
    );
  }
}

// class ListTileEnglishLogout extends StatelessWidget {
//   final String wordsEnglish;
//   final VoidCallback onTap;
//   final VoidCallback onEnglishFavourite;
//   final bool isFavouriteed;

//   const ListTileEnglishLogout({
//     super.key,
//     required this.wordsEnglish,
//     required this.onTap,
//     required this.onEnglishFavourite,
//     required this.isFavouriteed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(wordsEnglish),
//       trailing: IconButton(
//         icon: Icon(isFavouriteed ? Icons.favorite : Icons.favorite_border),
//         onPressed: onEnglishFavourite,
//       ),
//       onTap: onTap,
//     );
//   }
// }

class ListTileEnglishLogout extends ConsumerWidget {
  final String wordsEnglish;
  final VoidCallback? onTap;
  final VoidCallback? onEnglishFavourite;
  final bool isFavouriteed;

  const ListTileEnglishLogout({
    super.key,
    required this.wordsEnglish,
    this.onTap,
    this.onEnglishFavourite,
    this.isFavouriteed = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(
          wordsEnglish,
          style: TextStyle(
            // color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: textSize + 1, // Set your desired font size
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward, // Change the icon to a forward-facing arrow
            color: Theme.of(context).primaryColor.withOpacity(0.7),
          ),
          onPressed: null,
        ),
      ),
    );
  }
}

// class CardButton extends ConsumerWidget {
//   final String label;
//   final VoidCallback onPressed;

//   const CardButton({
//     super.key,
//     required this.label,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider) + 2;
//     return ElevatedButton(
//       onPressed: onPressed,
//       child: InkWell(
//           onTap: onPressed,
//           child: Center(
//             child: Text(
//               label,
//               style: TextStyle(fontSize: textSize),
//             ),
//           ),
//         ),
//     );
//   }
// }

class CardButton extends ConsumerWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: textSize + 1),
            ),
          ),
        ),
      ),
    );
  }
}





// class EnglishDictionaryLogout extends StatelessWidget {
//   final List<String> words;
//   final Function(String) onTapWord;
//   final ScrollController scrollController;
//   final Function(String) onEnglishFavourite;
//   final Set<String> englishfavourites;

//   const EnglishDictionaryLogout({
//     super.key,
//     required this.words,
//     required this.onTapWord,
//     required this.scrollController,
//     required this.onEnglishFavourite,
//     required this.englishfavourites,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       controller: scrollController, // Use the passed scroll controller
//       itemCount: words.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTileEnglishLogout(
//           wordsEnglish: words[index],
//           onTap: () {
//             onTapWord(words[index]);
//           },
//           onEnglishFavourite: () => onEnglishFavourite(
//               words[index]), // Use the passed value for favouriting
//           isFavouriteed: englishfavourites.contains(words[index]),
//         );
//       },
//     );
//   }
// }

// class EnglishDictionaryLogout extends StatelessWidget {
//   final List<String> words;
//   final Function(String) onTapWord;
//   final ScrollController scrollController;

//   const EnglishDictionaryLogout({
//     super.key,
//     required this.words,
//     required this.onTapWord,
//     required this.scrollController,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       controller: scrollController, // Use the passed scroll controller
//       itemCount: words.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTileEnglishLogout(
//           wordsEnglish: words[index],
//           onTap: () {
//             onTapWord(words[index]);
//           },
//         );
//       },
//     );
//   }
// }

// class EnglishDictionaryLogout extends StatelessWidget {
//   final List<String> words;
//   final Function(String) onTapWord;

//   const EnglishDictionaryLogout({
//     super.key,
//     required this.words,
//     required this.onTapWord,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: words.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTileEnglishLogout(
//           wordsEnglish: words[index],
//           onTap: () {
//             onTapWord(words[index]);
//           },
//         );
//       },
//     );
//   }
// }

// class ListTileEnglishLogout extends ConsumerWidget {
//   final String wordsEnglish;
//   final VoidCallback? onTap;
//   final VoidCallback? onEnglishFavourite;
//   final bool isFavouriteed;

//   const ListTileEnglishLogout({
//     super.key,
//     required this.wordsEnglish,
//     this.onTap,
//     this.onEnglishFavourite,
//     this.isFavouriteed = false,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider) + 2;
//     return InkWell(
//       onTap: onTap,
//       child: ListTile(
//         key: key,
//         title: Text(
//           wordsEnglish,
//           style: TextStyle(
//             // color: Theme.of(context).scaffoldBackgroundColor,
//             fontSize: textSize, // Set your desired font size
//           ),
//         ),
//         trailing: IconButton(
//           icon: isFavouriteed
//               ? Icon(Icons.favorite,
//                   color: Theme.of(context).primaryColor.withOpacity(0.7))
//               // color: Colors.red.shade300.withOpacity(0.99))
//               : Icon(Icons.favorite_border,
//                   color: Theme.of(context).primaryColor.withOpacity(0.7)),
//           onPressed: () => onEnglishFavourite?.call(),
//         ),
//       ),
//     );
//   }
// }

// class CardButton extends ConsumerWidget {
//   final String label;
//   final VoidCallback? onPressed;

//   const CardButton({
//     super.key,
//     required this.label,
//     this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider) + 2;
//     return SizedBox(
//       height: 50,
//       child: Card(
//         child: InkWell(
//           onTap: onPressed,
//           child: Center(
//             child: Text(
//               label,
//               style: TextStyle(fontSize: textSize),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
