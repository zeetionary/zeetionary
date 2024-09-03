// class EnglishMeaning extends StatefulWidget {
//   const EnglishMeaning({super.key});

//   @override
//   State<EnglishMeaning> createState() => _EnglishMeaningState();
// }

// class _EnglishMeaningState extends State<EnglishMeaning> {
//   FlutterTts flutterTts = FlutterTts();
//   bool isSpeaking = false;

//   Future<void> startSpeaking(
//       String languageCode, EnglishMeaningConst englishMeaningConst) async {
//     String textToSpeak = """
// ${englishMeaningConst.text}
// """;

//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.speak(textToSpeak);

//     setState(() {
//       isSpeaking = true;
//     });
//   }

//   Future<void> stopSpeaking() async {
//     await flutterTts.stop();

//     setState(() {
//       isSpeaking = false;
//     });
//   }

//   final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
//     text: """
// - Noun: feedback (derived forms: feedbacks)
// 1. Critical assessment or suggestions to improve performance
// "After you hand in your essays, I will give both grades and feedback"
 
// 2. The process in which part of the output of a system is returned to its input in order to regulate its further output
 
// 3. Response to an inquiry or experiment
// """,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           EnglishButtonTTS(
//             onBritishPressed: (languageCode) =>
//                 startSpeaking(languageCode, englishMeaningConst),
//             onAmericanPressed: (languageCode) =>
//                 startSpeaking(languageCode, englishMeaningConst),
//             onStopPressed: stopSpeaking,
//           ),
//           SearchableText(englishMeaningConst: englishMeaningConst),
//           // englishMeaningConst,
//         ],
//       ),
//     );
//   }
// }

// class SearchableText extends ConsumerStatefulWidget {
//   final EnglishMeaningConst englishMeaningConst;

//   const SearchableText({super.key, required this.englishMeaningConst});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _SearchableTextState();
// }

// class _SearchableTextState extends ConsumerState<SearchableText>
//     with SingleTickerProviderStateMixin {
//   TextEditingController searchController = TextEditingController();
//   List<int> searchResults = [];
//   int currentSearchIndex = 0;
//   bool isSearchActive = false;

//   void search(String query) {
//     searchResults.clear();
//     if (query.isNotEmpty) {
//       String text = widget.englishMeaningConst.text;
//       query = query;

//       int index = text.indexOf(query);
//       while (index != -1) {
//         searchResults.add(index);
//         index = text.indexOf(query, index + query.length);
//       }

//       if (searchResults.isNotEmpty) {
//         currentSearchIndex = 0;
//       }
//     }

//     setState(() {});
//   }

//   void navigateSearchResult(int direction) {
//     if (searchResults.isNotEmpty) {
//       currentSearchIndex =
//           (currentSearchIndex + direction) % searchResults.length;
//       if (currentSearchIndex < 0) {
//         currentSearchIndex += searchResults.length;
//       }

//       setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final currentTheme = ref.watch(themeNotifierProvider);

//     // Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider);
//     String text = widget.englishMeaningConst.text;
//     List<TextSpan> spans = [];
//     int lastMatchEnd = 0;

//     if (searchResults.isNotEmpty) {
//       for (int i = 0; i < searchResults.length; i++) {
//         int start = searchResults[i];
//         int end = start + searchController.text.length;

//         if (start > lastMatchEnd) {
//           spans.add(TextSpan(
//             text: text.substring(lastMatchEnd, start),
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: textSize + 12,
//             ),
//           ));
//         }

//         spans.add(TextSpan(
//           text: text.substring(start, end),
//           style: TextStyle(
//               fontSize: textSize + 12,
//               color: Colors.black,
//               backgroundColor: i == currentSearchIndex
//                   ? Colors.yellow
//                   : Colors.lightGreenAccent),
//         ));

//         lastMatchEnd = end;
//       }

//       if (lastMatchEnd < text.length) {
//         spans.add(TextSpan(
//           text: text.substring(lastMatchEnd),
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: textSize + 12,
//           ),
//         ));
//       }
//     } else {
//       spans.add(
//           TextSpan(text: text, style: const TextStyle(color: Colors.black)));
//     }

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               if (isSearchActive)
//                 Expanded(
//                   child: TextField(
//                     controller: searchController,
//                     decoration: InputDecoration(
//                       hintText: 'Search...',
//                       prefixIcon: const Icon(Icons.search),
//                       suffixIcon: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           IconButton(
//                             icon: const Icon(Icons.keyboard_arrow_up),
//                             onPressed: () => navigateSearchResult(-1),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.keyboard_arrow_down),
//                             onPressed: () => navigateSearchResult(1),
//                           ),
//                         ],
//                       ),
//                       border: const OutlineInputBorder(),
//                     ),
//                     onChanged: search,
//                   ),
//                 ),
//               IconButton(
//                 icon: Icon(isSearchActive ? Icons.close : Icons.search),
//                 onPressed: () {
//                   setState(() {
//                     isSearchActive = !isSearchActive;
//                     if (!isSearchActive) {
//                       searchResults.clear();
//                       searchController.clear();
//                     }
//                   });
//                 },
//               ),
//               // if (isSearchActive) ...[
//               //   IconButton(
//               //     icon: const Icon(Icons.keyboard_arrow_up),
//               //     onPressed: () => navigateSearchResult(-1),
//               //   ),
//               //   IconButton(
//               //     icon: const Icon(Icons.keyboard_arrow_down),
//               //     onPressed: () => navigateSearchResult(1),
//               //   ),
//               // ],
//             ],
//           ),
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             child: RichText(
//               text: TextSpan(
//                 children: spans,
//                 style: TextStyle(
//                   fontSize: textSize + 12,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }