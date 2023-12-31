// // https://chat.openai.com/c/c8f797f0-a485-4466-b33f-8edf2a2e33f4

// class EnglishMeaning extends StatefulWidget {
//   const EnglishMeaning({
//     super.key,
//   });

//   @override
//   // ignore: library_private_types_in_public_api
//   _EnglishMeaningState createState() => _EnglishMeaningState();
// }

// class _EnglishMeaningState extends State<EnglishMeaning> {
//   String searchText = '';
//   final String originalText = """
// Adverb: aback
// 1. Having the wind against the forward side of the sails
// "the ship came up into the wind with all yards aback"
 
// 2. By surprise
// "taken aback by the caustic remarks"
// """;

//   bool isSearchVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const DividerDefinition(),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isSearchVisible = !isSearchVisible;
//                     });
//                   },
//                   child: const Icon(Icons.search),
//                 ),
//                 if (isSearchVisible) buildSearchField(),
//               ],
//             ),
//           ),
//           buildHighlightedText(),
//         ],
//       ),
//     );
//   }

//   Widget buildSearchField() {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.only(left: 8.0),
//         child: SizedBox(
//           // constraints: const BoxConstraints(maxWidth: 4),
//           width: 2, // Adjust the width as needed
//           height: 40,
//           child: TextField(
//             onChanged: (value) {
//               setState(() {
//                 searchText = value;
//               });
//             },
//             decoration: InputDecoration(
//               hintText: 'Search',
//               contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
//               suffixIcon: IconButton(
//                 icon: const Icon(Icons.close),
//                 onPressed: () {
//                   setState(() {
//                     isSearchVisible = false;
//                     searchText = '';
//                   });
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildHighlightedText() {
//     List<TextSpan> textSpans = [];

//     if (searchText.isNotEmpty) {
//       RegExp regex = RegExp(searchText, caseSensitive: false);
//       Iterable<Match> matches = regex.allMatches(originalText);

//       List<TextSpan> nonMatchSpans = [];

//       int currentIndex = 0;

//       for (Match match in matches) {
//         nonMatchSpans.add(TextSpan(
//           text: originalText.substring(currentIndex, match.start),
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//           ),
//         ));

//         nonMatchSpans.add(TextSpan(
//           text: originalText.substring(match.start, match.end),
//           style: const TextStyle(
//             color: Colors.blue,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ));

//         currentIndex = match.end;
//       }

//       if (currentIndex < originalText.length) {
//         nonMatchSpans.add(TextSpan(
//           text: originalText.substring(currentIndex),
//           style: const TextStyle(
//             fontSize: 20,
//             color: Colors.black,
//           ),
//         ));
//       }

//       textSpans.addAll(nonMatchSpans);
//     } else {
//       textSpans.add(TextSpan(
//         text: originalText,
//         style: const TextStyle(
//           fontSize: 20,
//           color: Colors.black,
//         ),
//       ));
//     }

//     return RichText(
//       text: TextSpan(children: textSpans),
//     );
//   }
// }