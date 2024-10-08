// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:routemaster/routemaster.dart';
// import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// // import 'package:zeetionary/constants.dart';

// // class GrammarScreen extends StatefulWidget {
// //   const GrammarScreen({super.key});

// //   @override
// //   State<GrammarScreen> createState() => _GrammarScreenState();
// // }

// class GrammarScreen extends ConsumerStatefulWidget {
//   const GrammarScreen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _GrammarScreenState();
// }

// // class _GrammarScreenState extends State<GrammarScreen> {

// class _GrammarScreenState extends ConsumerState<GrammarScreen> {
//   _GrammarScreenState();
//   // (zee: adde tags) https://chat.openai.com/c/488e70a6-e67b-418c-9f94-fc78cdff92e4
//   // (zee: added expansion tile) https://chat.openai.com/c/c71302c6-7f56-4336-9f2f-044931aa1ac4

//   bool isFilterExpanded = false;

//   Widget _buildFilterTag(String filter) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 4),
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() {
//             if (selectedFilter == filter) {
//               // If the selected tag is tapped again, unselect it
//               selectedFilter = null;
//               filteredWords = List.from(allGrammarSubjects);
//             } else {
//               // Otherwise, select the tag and update the list
//               selectedFilter = filter;
//               _updateFilteredWords();
//             }
//           });
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: selectedFilter == filter
//               ? Theme.of(context).scaffoldBackgroundColor
//               : Theme.of(context).scaffoldBackgroundColor,
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           side: BorderSide(
//             color: selectedFilter == filter
//                 ? Theme.of(context).primaryColor.withOpacity(0.4)
//                 : Theme.of(context).primaryColor.withOpacity(0.2),
//             width: selectedFilter == filter ? 2 : 0.001,
//           ),
//         ),
//         child: Text(
//           filter.toUpperCase(),
//           style: TextStyle(
//             color: selectedFilter == filter
//                 ? Theme.of(context).primaryColor.withOpacity(0.8)
//                 : Theme.of(context).primaryColor.withOpacity(0.6),
//           ),
//         ),
//       ),
//     );
//   }

//   void _updateFilteredWords() {
//     setState(() {
//       if (_searchController.text.isNotEmpty) {
//         // If there's a search query, filter based on the query
//         filteredWords = filterItems[selectedFilter!]!
//             .where((word) => word
//                 .toLowerCase()
//                 .contains(_searchController.text.toLowerCase()))
//             .toList();
//       } else {
//         // If no search query, show all items for the selected filter
//         filteredWords = List.from(filterItems[selectedFilter!]!);
//       }
//     });
//   }

//   final Map<String, List<String>> filterItems = {
//     "present": ["teeeee", "present simple", "present perfect"],
//     "past": ["past simple", "past perfect"],
//     // "pasttt": ["past simple", "past perfect"],
//     // "pastttt": ["past simple", "past perfect"],
//     // "pasttttt": ["past simple", "past perfect"],
//     // "pastttttt": ["past simple", "past perfect"],
//     // "pasttttttt": ["past simple", "past perfect"],
//   };

//   String? selectedFilter; // Nullable to represent no selection

//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//   final List<String> allGrammarSubjects = [
//     // "dopsum",
//     "present simple",
//     "present perfect",
//     "past simple",
//     "past perfect",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//     "test",
//   ];

//   List<String> filteredWords = [];
//   final TextEditingController _searchController = TextEditingController();

//   final ScrollController _scrollController = ScrollController();
//   bool showScrollToTop = false;

//   @override
//   void initState() {
//     super.initState();
//     filteredWords = List.from(allGrammarSubjects);
//     // Add a listener to the scroll controller to determine when to show the scroll-to-top button
//     _scrollController.addListener(() {
//       setState(() {
//         showScrollToTop = _scrollController.offset > 100;
//       });
//     });
//   }

//   void _scrollToTop() {
//     _scrollController.animateTo(
//       0.0,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//     );
//   }

//   // void filterResults(String query) {
//   //   setState(() {
//   //     filteredWords = allGrammarSubjects
//   //         .where((word) => word.toLowerCase().contains(query.toLowerCase()))
//   //         .toList();
//   //   });
//   // }

//   void filterResults(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         // If the query is empty, show all words
//         filteredWords = List.from(allGrammarSubjects);
//       } else {
//         // Create a map to store word frequencies
//         Map<String, int> wordFrequencies = {};

//         // Update frequencies for exact matches, considering hyphens and spaces as the same
//         for (String word in allGrammarSubjects) {
//           String normalizedWord = word.replaceAll('-', ' ').toLowerCase();
//           String normalizedQuery = query.replaceAll('-', ' ').toLowerCase();

//           if (normalizedWord == normalizedQuery) {
//             wordFrequencies[word] = (wordFrequencies[word] ?? 0) +
//                 2; // Higher weight for exact matches
//           }
//         }

//         // Update frequencies for relevant matches (contains the query), considering hyphens and spaces as the same
//         for (String word in allGrammarSubjects) {
//           String normalizedWord = word.replaceAll('-', ' ').toLowerCase();
//           String normalizedQuery = query.replaceAll('-', ' ').toLowerCase();

//           if (normalizedWord.contains(normalizedQuery)) {
//             // Prioritize words with more consecutive matching characters
//             int consecutiveMatches =
//                 _countConsecutiveMatches(normalizedWord, normalizedQuery);
//             wordFrequencies[word] =
//                 (wordFrequencies[word] ?? 0) + consecutiveMatches;
//           }
//         }

//         // Fuzzy search for approximate matches, considering hyphens and spaces as the same
//         List<String> fuzzyMatches = allGrammarSubjects
//             .where((word) => _fuzzyMatch(word.replaceAll('-', ' '),
//                 query.replaceAll('-', ' ').toLowerCase()))
//             .toList();

//         // Update frequencies for fuzzy matches
//         for (String word in fuzzyMatches) {
//           wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 1;
//         }

//         // Combine and prioritize by relevancy, with exact matches at the top
//         filteredWords = wordFrequencies.keys.toList()
//           ..sort((a, b) {
//             bool exactMatchA = a.replaceAll('-', ' ').toLowerCase() ==
//                 query.replaceAll('-', ' ').toLowerCase();
//             bool exactMatchB = b.replaceAll('-', ' ').toLowerCase() ==
//                 query.replaceAll('-', ' ').toLowerCase();

//             if (exactMatchA && !exactMatchB) {
//               return -1; // A is an exact match, so it comes first.
//             } else if (!exactMatchA && exactMatchB) {
//               return 1; // B is an exact match, so it comes first.
//             } else {
//               // Sort based on frequencies for non-exact matches
//               int frequencyComparison =
//                   (wordFrequencies[b] ?? 0).compareTo(wordFrequencies[a] ?? 0);

//               if (frequencyComparison == 0) {
//                 // If frequencies are equal, prioritize words containing the exact match
//                 bool containsExactA = a
//                     .replaceAll('-', ' ')
//                     .toLowerCase()
//                     .contains(query.replaceAll('-', ' ').toLowerCase());
//                 bool containsExactB = b
//                     .replaceAll('-', ' ')
//                     .toLowerCase()
//                     .contains(query.replaceAll('-', ' ').toLowerCase());

//                 if (containsExactA && !containsExactB) {
//                   return -1; // A contains the exact match, so it comes next.
//                 } else if (!containsExactA && containsExactB) {
//                   return 1; // B contains the exact match, so it comes next.
//                 }

//                 // If not an exact match, prioritize by the length of consecutive matches
//                 int consecutiveMatchComparison =
//                     _countConsecutiveMatches(b, query)
//                         .compareTo(_countConsecutiveMatches(a, query));

//                 if (consecutiveMatchComparison != 0) {
//                   return consecutiveMatchComparison;
//                 }
//               }

//               return frequencyComparison;
//             }
//           });
//       }
//     });
//   }

//   int _countConsecutiveMatches(String word, String query) {
//     int count = 0;
//     for (int i = 0; i < word.length && i < query.length; i++) {
//       if (word[i] == query[i]) {
//         count++;
//       } else {
//         break;
//       }
//     }
//     return count;
//   }

//   bool _fuzzyMatch(String word, String query) {
//     // Implement an enhanced fuzzy matching algorithm
//     // Consider consecutive character matches and adjust the threshold.

//     // Case-insensitive comparison
//     word = word.toLowerCase();
//     query = query.toLowerCase();

//     // Exact match
//     if (word == query) {
//       return true;
//     }

//     // Check for consecutive character matches
//     int consecutiveMatches = 0;
//     int maxConsecutiveMatches = 2; // Adjust as needed

//     for (int i = 0;
//         i < word.length && consecutiveMatches <= maxConsecutiveMatches;
//         i++) {
//       if (i < query.length && word[i] == query[i]) {
//         consecutiveMatches++;
//       } else {
//         consecutiveMatches = 0;
//       }
//     }

//     return consecutiveMatches > maxConsecutiveMatches;
//   }

//   // void filterResults(String query) {
//   //   setState(() {
//   //     if (query.isEmpty) {
//   //       // If the query is empty, show all words
//   //       filteredWords = List.from(allGrammarSubjects);
//   //     } else {
//   //       // Sort words to prioritize exact matches first
//   //       filteredWords = allGrammarSubjects
//   //           .where((word) => word.toLowerCase().contains(query.toLowerCase()))
//   //           .toList();

//   //       filteredWords.sort((a, b) {
//   //         bool exactMatchA = a.toLowerCase() == query.toLowerCase();
//   //         bool exactMatchB = b.toLowerCase() == query.toLowerCase();

//   //         if (exactMatchA && !exactMatchB) {
//   //           return -1; // A is an exact match, so it comes first.
//   //         } else if (!exactMatchA && exactMatchB) {
//   //           return 1; // B is an exact match, so it comes first.
//   //         } else {
//   //           // If both are exact matches or neither are, sort them based on lexicographic order.
//   //           return a.toLowerCase().compareTo(b.toLowerCase());
//   //         }
//   //       });
//   //     }
//   //   });
//   // }

//   void clearSearch() {
//     _searchController.clear();
//     filterResults("");
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textSize = ref.watch(textSizeProvider) + 1;
//     return Scaffold(
//       key: scaffoldKey,
//       floatingActionButton: showScrollToTop
//           ? FloatingActionButton(
//               onPressed: _scrollToTop,
//               backgroundColor:
//                   Theme.of(context).scaffoldBackgroundColor, // background color
//               elevation: 0, // Remove elevation
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                     BorderRadius.circular(16.0), // Button border radius
//                 side: BorderSide(
//                   color: Theme.of(context)
//                       .primaryColor
//                       .withOpacity(0.003), // Border color
//                   width: 0.2, // Border width
//                 ),
//               ),
//               child: Icon(
//                 Icons.arrow_upward,
//                 size: textSize + 2, // Adjust the icon size as needed
//                 color: Theme.of(context)
//                     .primaryColor
//                     .withOpacity(0.6), // Icon color
//               ),
//             )
//           : null,
//       // (zee: scroll top) https://chat.openai.com/c/8f33ee5e-f847-4559-93f1-8869b74f52f9
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SizedBox(
//               height: 60,
//               child: TextField(
//                 // enableInteractiveSelection: false,
//                 controller: _searchController,
//                 onChanged: filterResults,
//                 decoration: InputDecoration(
//                   // labelText: "Search here",
//                   prefixIcon: Icon(Icons.search, size: textSize + 5),
//                   hintText: "Search here",
//                   hintStyle: TextStyle(fontSize: textSize),
//                   // suffixIcon: IconButton(
//                   //   icon: Icon(
//                   //     isFilterExpanded
//                   //         ? Icons.arrow_drop_up
//                   //         : Icons.arrow_drop_down,
//                   //   ),
//                   //   onPressed: () {
//                   //     setState(() {
//                   //       isFilterExpanded = !isFilterExpanded;
//                   //     });
//                   //   },
//                   // ),
//                   suffixIcon: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       if (_searchController.text.isNotEmpty)
//                         IconButton(
//                           icon: Icon(Icons.clear, size: textSize + 5),
//                           onPressed: clearSearch,
//                         ),
//                       IconButton(
//                         icon: Icon(
//                           isFilterExpanded
//                               ? Icons.arrow_drop_up
//                               : Icons.arrow_drop_down,
//                           size: textSize + 5, // Adjust the size as needed
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             isFilterExpanded = !isFilterExpanded;
//                           });
//                         },
//                       )
//                     ],
//                   ),
//                   border: const OutlineInputBorder(),
//                 ),
//               ),
//             ),
//           ),
//           // Tags for filtering
//           // AnimatedContainer(
//           //   duration: const Duration(milliseconds: 150),
//           //   height: isFilterExpanded ? 40 : 0,
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.center,
//           //     children: [
//           //       for (var filter in filterItems.keys) _buildFilterTag(filter),
//           //     ],
//           //   ),
//           // ),
//           AnimatedContainer(
//             duration: const Duration(milliseconds: 250),
//             height: isFilterExpanded ? 40 : 0,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: filterItems.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       var filter = filterItems.keys.toList()[index];
//                       return _buildFilterTag(filter);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // (zee: scrollable: https://chat.openai.com/c/0a2f9950-39d5-4fff-86eb-87635448df3e)
//           Expanded(
//             child: Directionality(
//               textDirection:
//                   TextDirection.ltr, // Set the text direction to right-to-left
//               child: EnglishGrammar(
//                 words: filteredWords,
//                 scrollController: _scrollController,
//                 onTapWord: (allGrammarSubjects) {
//                   if (allGrammarSubjects == "100") {
//                     Routemaster.of(context).push("/english/grammar/aback");
//                   }
//                   if (allGrammarSubjects == "present simple") {
//                     Routemaster.of(context).push("/english/grammar/aback");
//                   }
//                   if (allGrammarSubjects == "teeeee") {
//                     Routemaster.of(context).push("/english/grammar/aback");
//                   }
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class EnglishGrammar extends StatelessWidget {
//   final List<String> words;
//   final Function(String) onTapWord;
//   final ScrollController scrollController;

//   const EnglishGrammar({
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
//         return ListTileGrammar(
//           allGrammarSubjects: words[index],
//           onTap: () {
//             onTapWord(words[index]);
//           },
//         );
//       },
//     );
//   }
// }

// // class EnglishGrammar extends StatelessWidget {
// //   final List<String> words;
// //   final Function(String) onTapWord;
// //   final ScrollController scrollController;

// //   const EnglishGrammar({
// //     super.key,
// //     required this.words,
// //     required this.onTapWord,
// //     required this.scrollController,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       controller: scrollController, // Use the passed scroll controller
// //       itemCount: words.length,
// //       itemBuilder: (BuildContext context, int index) {
// //         return ListTileGrammar(
// //           allGrammarSubjects: words[index],
// //           onTap: () {
// //             onTapWord(words[index]);
// //           },
// //         );
// //       },
// //     );
// //   }
// // }

// // class EnglishGrammar extends StatelessWidget {
// //   final List<String> words;
// //   final Function(String) onTapWord;

// //   const EnglishGrammar({
// //     super.key,
// //     required this.words,
// //     required this.onTapWord,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       itemCount: words.length,
// //       itemBuilder: (BuildContext context, int index) {
// //         return ListTileGrammar(
// //           allGrammarSubjects: words[index],
// //           onTap: () {
// //             onTapWord(words[index]);
// //           },
// //         );
// //       },
// //     );
// //   }
// // }

// class ListTileGrammar extends ConsumerWidget {
//   final String allGrammarSubjects;
//   final VoidCallback? onTap;

//   const ListTileGrammar({
//     super.key,
//     required this.allGrammarSubjects,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider) + 2;
//     return InkWell(
//       onTap: onTap,
//       child: ListTile(
//         key: key,
//         title: Text(
//           allGrammarSubjects,
//           style: TextStyle(
//             fontSize: textSize, // Set your desired font size
//           ),
//         ),
//         trailing: const Icon(Icons.arrow_forward),
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
