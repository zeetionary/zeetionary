// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:zeetionary/constants.dart';
// import 'package:zeetionary/dictionary/database_sentences.dart';
// // import 'package:sqflite/sqflite.dart';
// // import 'package:path/path.dart';

// class SentencesPage extends StatefulWidget {
//   const SentencesPage({super.key});

//   @override
//   _SentencesPageState createState() => _SentencesPageState();
// }

// class _SentencesPageState extends State<SentencesPage> {
//   final TextEditingController _searchController = TextEditingController();
//   late FlutterTts flutterTts;
//   List<Map<String, dynamic>> filteredSentences = [];
//   late List<Map<String, dynamic>> allSentences;

//   @override
//   void initState() {
//     super.initState();
//     flutterTts = FlutterTts();
//     flutterTts.setLanguage("en-US");
//     fetchAllSentences();
//   }

//   Future<void> fetchAllSentences() async {
//     final database = SentenceDatabase.instance;
//     await database.initialize();
//     allSentences = database.sentences;
//     filterSentences("");
//   }

//   void filterSentences(String query) {
//     final Set<String> uniqueEnglishSentences = {};

//     setState(() {
//       filteredSentences = allSentences.where((sentence) {
//         final english = sentence['english'].toString().toLowerCase();
//         final french = sentence['french'].toString().toLowerCase();

//         if (!uniqueEnglishSentences.contains(english)) {
//           uniqueEnglishSentences.add(english);
//           return english.contains(query.toLowerCase()) ||
//               french.contains(query.toLowerCase());
//         } else {
//           return false;
//         }
//       }).toList();
//     });
//   }

//   void speakEnglish(String text, String languageCode) async {
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.speak(text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(),
//                 labelText: "Search",
//                 hintText: "Search for sentences...",
//                 prefixIcon: const Icon(Icons.search),
//                 suffixIcon: _searchController.text.isNotEmpty
//                     ? IconButton(
//                         icon: const Icon(Icons.clear),
//                         onPressed: () {
//                           _searchController.clear();
//                           filterSentences("");
//                         },
//                       )
//                     : null,
//               ),
//               onChanged: (value) => filterSentences(value),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredSentences.length,
//               itemBuilder: (context, index) {
//                 final sentence = filteredSentences[index];
//                 return Column(
//                   children: [
//                     ListTile(
//                       title: Text(sentence['english'].toString()),
//                       subtitle: Align(
//                         alignment: Alignment.centerRight,
//                         child: Text(
//                           sentence['french'].toString(),
//                           textDirection: TextDirection.rtl,
//                         ),
//                       ),
//                       trailing: IconButton(
//                         icon: const Icon(Icons.volume_up),
//                         onPressed: () => speakEnglish(sentence['english'], "en-GB"),
//                       ),
//                     ),
//                     const Divider(),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     flutterTts.stop();
//     _searchController.dispose();
//     super.dispose();
//   }
// }
