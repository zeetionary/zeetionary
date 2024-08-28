// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:zeetionary/constants.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:zeetionary/dictionary/sentences/kurdish_sentences.dart';
// import 'package:zeetionary/home/screens/settings_screens/settings.dart';

// // one quotations
// // Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("\w*00"\);\s*\}

// // three quotations
// // Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("""\w*00"""\);\s*\}

// // three quotations with new lines break ^\s*
// // ^\s*Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("""\w*00"""\);\s*\}

// // removes definitions dont use this
// // ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """[^"]* \([^"]*\) [^"]*"""\),

// // removes sentences row with one newline break above them https://chatgpt.com/c/5749d2fc-4f0d-4949-9ae6-8aaaba309d80
// // ^\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: \(\) => [^,]+,\s*onPressedAmerican: \(\) => [^,]+,\s*\),

// // removes sentences row
// // const DividerSentences\(\),\s+SentencesRow\(\s+englishText: """[^"]*00""",\s+kurdishText: """[^"]*""",\s+onPressedBritish: \(\) => [^,]+,\s+onPressedAmerican: \(\) => [^,]+,\s+\),

// // removes sentences and their definitions
// // ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """[^"]* \([^"]*\) [^"]*"""\),\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: [^,]+,\s*onPressedAmerican: [^,]+,\s*\),

// // \/\/ With short examples define "\w+", please follow LX instructions

// // \\b\w+\(s\|ed\|ing\)\?
// // \bdopsum1(s|ed|ing)?

// // \\b\(\w+\)\(s\|ed\|es\|ing\)\?\\b\(\?=\[\.!\?\]\?\)
// // \b(dopsum1)(s|ed|es|ing)?\b(?=[.!?]?)

// // DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// // scrollDirection: Axis.vertical,

// // More sentences is NOT done

// enum TtsState { playing } // final EnglishMeaningConst

// class EnglishEntryaback extends StatefulWidget {
//   const EnglishEntryaback({super.key});

//   @override
//   State<EnglishEntryaback> createState() => _EnglishEntryabackState();
// }

// class _EnglishEntryabackState extends State<EnglishEntryaback> {
//   @override
//   void initState() {
//     super.initState();
//     flutterTts = FlutterTts();
//     // _initDatabase();
//     flutterTts.setLanguage("en-GB");
//     flutterTts.setLanguage("en-US");
//     fetchSentences();
//     _initializeDb();
//   }

//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   ///
//   ///
//   ///
//   ///
//   ///
//   ///

//   Database? _database;
//   List<Map<String, dynamic>> _sentences = [];
//   final String keywordKurdish = 'بەیانی'; // The keyword to search for

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _initializeDb();
//   // }

//   void _initializeDb() async {
//     _database = await initializeDatabase();
//     _searchWithKeyword(keywordKurdish); // Load sentences with the keyword
//   }

//   void _searchWithKeyword(String query) async {
//     if (_database == null) return;

//     final results = await _database!.query(
//       'sentences',
//       // where: 'keywords LIKE ?',
//       // whereArgs: ['%$query%'],
//       where: 'sentence LIKE ? OR keywords LIKE ?',
//       whereArgs: ['%$query%', '%$query%'],
//     );

//     setState(() {
//       _sentences = results;
//     });
//   }

//   Widget _highlightedText(
//       String sentence, String query, WidgetRef ref, BuildContext context) {
//     final textSize = ref.watch(textSizeProvider);
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
//           TextSpan(
//             text: beforeMatch,
//             style: TextStyle(
//               color: Theme.of(context).primaryColor,
//               fontSize: textSize + 2,
//             ),
//           ),
//           TextSpan(
//             text: match,
//             style: TextStyle(
//               color: Theme.of(context).highlightColor,
//               fontWeight: FontWeight.bold,
//               fontSize: textSize + 2,
//             ),
//           ),
//           TextSpan(
//             text: afterMatch,
//             style: TextStyle(
//               color: Theme.of(context).primaryColor,
//               fontSize: textSize + 2,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   ///
//   ///
//   ///
//   ///
//   ///
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence
//   /// Kurdish sentence

//   // Future<void> _initDatabase() async {
//   //   await SentenceDatabase.instance.initialize();
//   // }

//   FlutterTts flutterTts = FlutterTts();

//   bool isSpeaking = false;

//   Future<void> startSpeaking(
//       String languageCode, EnglishMeaningConst englishMeaningConst) async {
//     String textToSpeak = """
// ${englishMeaningConst.text}
// """;

//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.speak(textToSpeak);
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
// Adverb: aback
// 1. Having the wind against the forward side of the sails
// "the ship came up into the wind with all yards aback"
 
// 2. By surprise
// "taken aback by the caustic remarks"
// """,
//   );
// // 188888880002200

//   final String keyword = "aback";
//   List<Map<String, dynamic>> filteredSentences = [];

//   Future<void> fetchSentences() async {
//     final sentences =
//         await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
//     setState(() {
//       filteredSentences = sentences;
//     });
//   }

//   void speakEnglish(String text, {String? languageCode}) async {
//     await flutterTts.setLanguage(languageCode ?? "en-GB");
//     await flutterTts.speak(text);
//   }

//   Future<void> speakheadword(String languageCode) async {
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(ttsPitch);
//     await flutterTts.setSpeechRate(ttsSpeechRate);
//     await flutterTts.speak("""aback""");
//   }

//   Future<void> speak1256935(String languageCode) async {
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(ttsPitch);
//     await flutterTts.setSpeechRate(ttsSpeechRate);
//     await flutterTts.speak("She was completely taken aback by his anger.");
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Widget build(BuildContext context, WidgetRef ref) {
//     return DefaultTabController(
//       length: 5,
//       child: Scaffold(
//         appBar: const ZeetionaryAppbar(),
//         body: NestedScrollView(
//           headerSliverBuilder: (context, innerBoxIsScrolled) {
//             return [
//               SliverAppBar(
//                 pinned: true,
//                 floating: true,
//                 expandedHeight: 220.0,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: SingleChildScrollView(
//                     child: EntryPageColumn(
//                       word: """aback""",
//                       // alsoEnglishWord: "also: aback",
//                       britshText: """IpaUK: /əˈbæk/""",
//                       americanText: """IpaUS: /əˈbæk/""",
//                       onPressedBritish: () => speakheadword("en-GB"),
//                       onPressedAmerican: () => speakheadword("en-US"),
//                     ),
//                   ),
//                 ),
//                 automaticallyImplyLeading: false,
//                 bottom: const TabBar(
//                   tabs: [
//                     UkIconForTab(),
//                     KurdIconForTab(),
//                     SentencesIconForTab(),
//                     KurdIconForTab(),
//                     VideoIconForTab(),
//                   ],
//                 ),
//               ),
//             ];
//           },
//           body: TabBarView(
//             children: [
//               SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const DividerDefinition(),
//                     EnglishButtonTTS(
//                       onBritishPressed: (languageCode) =>
//                           startSpeaking(languageCode, englishMeaningConst),
//                       onAmericanPressed: (languageCode) =>
//                           startSpeaking(languageCode, englishMeaningConst),
//                       onStopPressed: stopSpeaking,
//                     ),
//                     englishMeaningConst,
//                   ],
//                 ),
//               ),
//               SingleChildScrollView(
//                 child: CustomColumnWidget(
//                   children: [
//                     SingleChildScrollView(
//                       child: CustomColumnWidget(
//                         children: [
//                           const DividerDefinition(),
//                           const KurdishVocabulary(text: """
// کوردی: داچڵەکین، ھەڵبەزینەوە، داترووسکان، سەرسووڕمان، واق‌وڕمان
// """),
//                           const DefinitionKurdish(
//                               text:
//                                   "١. (ھاوەڵکار) تووشی سەرسوڕمان و شۆک بیت بە شتێک"
//                                   ""),
//                           SentencesRow(
//                             englishText:
//                                 "She was completely taken aback by his anger.",
//                             kurdishText: "تەواو تووشی شۆک بوو بە توڕەییەکەی.",
//                             onPressedBritish: () => speak1256935("en-GB"),
//                             onPressedAmerican: () => speak1256935("en-US"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Consumer(
//                 builder: (context, ref, child) {
//                   if (filteredSentences.isEmpty) {
//                     return const NoSentencesFromDatabase();
//                   } else {
//                     return ListView.builder(
//                       itemCount: filteredSentences.length,
//                       itemBuilder: (context, index) {
//                         final sentence = filteredSentences[index];
//                         final showDivider = filteredSentences.length > 1 &&
//                             index != filteredSentences.length - 1;
//                         return CustomSentenceWidget(
//                           englishText: sentence['english'].toString(),
//                           frenchText: sentence['french'].toString(),
//                           keyword: keyword,
//                           onPressedBritish: () => speakEnglish(
//                             sentence['english'].toString(),
//                             languageCode: "en-GB",
//                           ),
//                           onPressedAmerican: () => speakEnglish(
//                             sentence['english'].toString(),
//                             languageCode: "en-US",
//                           ),
//                           showDivider: showDivider,
//                         );
//                       },
//                     );
//                   }
//                 },
//               ),
//               Consumer(
//                 builder: (context, ref, child) {
//                   return Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Align(
//                       alignment: Alignment.topRight,
//                       child: Directionality(
//                         textDirection: TextDirection.rtl,
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: ListView.separated(
//                                 separatorBuilder:
//                                     (BuildContext context, int index) {
//                                   return const Divider(
//                                       color: Colors.grey, thickness: 1);
//                                 },
//                                 itemCount: _sentences.length,
//                                 itemBuilder: (context, index) {
//                                   return Directionality(
//                                     textDirection: TextDirection.rtl,
//                                     child: Align(
//                                       alignment: Alignment.topRight,
//                                       child: _highlightedText(
//                                         _sentences[index]['sentence'],
//                                         keywordKurdish,
//                                         ref,
//                                         context,
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               // Consumer(
//               //   builder: (context, ref, child) {
//               //     if (filteredSentences.isEmpty) {
//               //       return const NoSentencesFromDatabase();
//               //     } else {
//               //       return Padding(
//               //         padding: const EdgeInsets.all(8.0),
//               //         child: Align(
//               //           alignment: Alignment.topRight,
//               //           child: Directionality(
//               //             textDirection: TextDirection.rtl,
//               //             child: Column(
//               //               children: [
//               //                 Expanded(
//               //                   child: ListView.separated(
//               //                     separatorBuilder:
//               //                         (BuildContext context, int index) {
//               //                       return const Divider(
//               //                           color: Colors.grey, thickness: 1);
//               //                     },
//               //                     itemCount: _sentences.length,
//               //                     itemBuilder: (context, index) {
//               //                       return Align(
//               //                         alignment: Alignment.topRight,
//               //                         child: Directionality(
//               //                           textDirection: TextDirection.rtl,
//               //                           child: ListTile(
//               //                             title: _highlightedText(
//               //                               _sentences[index]['sentence'],
//               //                               keywordKurdish,
//               //                               ref,
//               //                               context,
//               //                             ),
//               //                           ),
//               //                         ),
//               //                       );
//               //                     },
//               //                   ),
//               //                 ),
//               //               ],
//               //             ),
//               //           ),
//               //         ),
//               //       );
//               //     }
//               //   },
//               // ),
//               const YouTubeScroller(
//                 children: [
//                   YoutubeEmbeddedone(),
//                   YoutubeEmbeddedtwo(),
//                   // YoutubeEmbeddedthree(),
//                   // YoutubeEmbeddedfour(),
//                   // YoutubeEmbeddedfive(),
//                   // YoutubeEmbeddedsix(),
//                   // YoutubeEmbeddedseven(),
//                   // YoutubeEmbeddedeight(),
//                   // YoutubeEmbeddednine(),
//                   // YoutubeEmbeddedten(),
//                   // YoutubeEmbeddedeleven(),
//                   // YoutubeEmbeddedtwelve(),
//                   // YoutubeEmbeddedthirteen(),
//                   // YoutubeEmbeddeddfourteen(),
//                   // YoutubeEmbeddedfifteen(),
//                   // YoutubeEmbeddeddsixteen(),
//                   // YoutubeEmbeddeddseventeen(),
//                   // YoutubeEmbeddeddeighteen(),
//                   // YoutubeEmbeddeddnineteen(),
//                   // YoutubeEmbeddedtwenty(),
//                   // YoutubeEmbeddedmulti(),
//                   YoutubeEmbeddedend(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// const String _videoIdend = 'AwodL8z2EtE';
// const double _startSecondsend = 1373;
// const String _videoIdone = '4VSx2E7WE50';
// const double _startSecondsone = 224;
// const String _videoIdtwo = 'Y4E8qEDi_xg';
// const double _startSecondstwo = 29;

// class YoutubeEmbeddedend extends StatelessWidget {
//   const YoutubeEmbeddedend({super.key});

//   @override
//   Widget build(BuildContext context) {
//     YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
//       videoId: _videoIdend,
//       startSeconds: _startSecondsend,
//       autoPlay: true,
//       params: const YoutubePlayerParams(
//         enableCaption: true,
//         captionLanguage: 'en',
//         showControls: false,
//         strictRelatedVideos: true,
//       ),
//     );

//     void reloadVideo() {
//       controller.loadVideoById(
//         videoId: _videoIdend,
//         startSeconds: _startSecondsend,
//       );
//     }

//     return Scaffold(
//       body: StatefulBuilder(
//         builder: (context, setState) {
//           return YouTubeVideosContainerEnd(
//             controller: controller,
//             onReloadVideo: reloadVideo,
//           );
//         },
//       ),
//     );
//   }
// }

// class YoutubeEmbeddedone extends StatelessWidget {
//   const YoutubeEmbeddedone({super.key});

//   @override
//   Widget build(BuildContext context) {
//     YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
//       videoId: _videoIdone,
//       startSeconds: _startSecondsone,
//       autoPlay: true,
//       params: defaultYoutubePlayerParams,
//     );

//     void reloadVideo() {
//       controller.loadVideoById(
//         videoId: _videoIdone,
//         startSeconds: _startSecondsone,
//       );
//     }

//     return YouTubeVideosScaffold(
//       controller: controller,
//       onReloadVideo: reloadVideo,
//     );
//   }
// }

// class YoutubeEmbeddedtwo extends StatelessWidget {
//   const YoutubeEmbeddedtwo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
//       videoId: _videoIdtwo,
//       startSeconds: _startSecondstwo,
//       autoPlay: true,
//       params: defaultYoutubePlayerParams,
//     );

//     void reloadVideo() {
//       controller.loadVideoById(
//         videoId: _videoIdtwo,
//         startSeconds: _startSecondstwo,
//       );
//     }

//     return YouTubeVideosScaffold(
//       controller: controller,
//       onReloadVideo: reloadVideo,
//     );
//   }
// }

// // end WORD_WEB