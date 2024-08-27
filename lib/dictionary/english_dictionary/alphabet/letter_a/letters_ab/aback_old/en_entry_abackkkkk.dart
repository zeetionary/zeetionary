// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:zeetionary/dictionary/sentences/kurdish_sentences.dart';

// class SentencesFromKurdishDb extends StatefulWidget {
//   @override

//   // https://chatgpt.com/c/aacd0da2-3eec-4170-abc0-e473ce5433ff

//   _SentencesFromKurdishDbState createState() => _SentencesFromKurdishDbState();
// }

// class _SentencesFromKurdishDbState extends State<SentencesFromKurdishDb> {
//   Database? _database;
//   List<Map<String, dynamic>> _sentences = [];
//   final String keywordKurdish = 'خۆش'; // The keyword to search for

//   @override
//   void initState() {
//     super.initState();
//     _initializeDb();
//   }

//   void _initializeDb() async {
//     _database = await initializeDatabase();
//     _searchWithKeyword(keywordKurdish); // Load sentences with the keyword
//   }

//   void _searchWithKeyword(String query) async {
//     if (_database == null) return;

//     final results = await _database!.query(
//       'sentences',
//       where: 'sentence LIKE ?',
//       whereArgs: ['%$query%'],
//     );

//     setState(() {
//       _sentences = results;
//     });

//     if (results.isEmpty) {
//       print("No results found for '$query'");
//     } else {
//       print("Found ${results.length} sentences for '$query'");
//     }
//   }

//   Widget _highlightedText(String sentence, String query) {
//     int startIndex = sentence.indexOf(query);
//     if (startIndex == -1) {
//       return Text(sentence);
//     }

//     String beforeMatch = sentence.substring(0, startIndex);
//     String match = sentence.substring(startIndex, startIndex + query.length);
//     String afterMatch = sentence.substring(startIndex + query.length);

//     return RichText(
//       text: TextSpan(
//         children: [
//           TextSpan(text: beforeMatch, style: TextStyle(color: Colors.black)),
//           TextSpan(
//               text: match,
//               style:
//                   TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
//           TextSpan(text: afterMatch, style: TextStyle(color: Colors.black)),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Sentences with خۆش')),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Align(
//               alignment: Alignment.topRight,
//               child: Directionality(
//                 textDirection: TextDirection.rtl,
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: ListView.separated(
//                         separatorBuilder: (BuildContext context, int index) {
//                           return const Divider(
//                               color: Colors.grey, thickness: 1);
//                         },
//                         itemCount: _sentences.length,
//                         itemBuilder: (context, index) {
//                           return Align(
//                             alignment: Alignment.topRight,
//                             child: Directionality(
//                               textDirection: TextDirection.rtl,
//                               child: ListTile(
//                                 title: _highlightedText(
//                                     _sentences[index]['sentence'],
//                                     keywordKurdish),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // Consumer(
//           //       builder: (context, ref, child) {
//           //         if (filteredSentences.isEmpty) {
//           //           return const NoSentencesFromDatabase();
//           //         } else {
//           //           return Padding(
//           //             padding: const EdgeInsets.all(8.0),
//           //             child: Align(
//           //               alignment: Alignment.topRight,
//           //               child: Directionality(
//           //                 textDirection: TextDirection.rtl,
//           //                 child: Column(
//           //                   children: [
//           //                     Expanded(
//           //                       child: ListView.separated(
//           //                         separatorBuilder:
//           //                             (BuildContext context, int index) {
//           //                           return const Divider(
//           //                               color: Colors.grey, thickness: 1);
//           //                         },
//           //                         itemCount: _sentences.length,
//           //                         itemBuilder: (context, index) {
//           //                           return Align(
//           //                             alignment: Alignment.topRight,
//           //                             child: Directionality(
//           //                               textDirection: TextDirection.rtl,
//           //                               child: ListTile(
//           //                                 title: _highlightedText(
//           //                                   _sentences[index]['sentence'],
//           //                                   keywordKurdish,
//           //                                   ref,
//           //                                   context,
//           //                                 ),
//           //                               ),
//           //                             ),
//           //                           );
//           //                         },
//           //                       ),
//           //                     ),
//           //                   ],
//           //                 ),
//           //               ),
//           //             ),
//           //           );
//           //         }
//           //       },
//           //     ),
//         ],
//       ),
//     );
//   }
// }
