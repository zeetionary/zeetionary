// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:zeetionary/constants.dart';

// enum TtsState { playing }

// class EnglishEntrydopsum1 extends StatefulWidget {
//   const EnglishEntrydopsum1({super.key});

//   @override
//   State<EnglishEntrydopsum1> createState() => _EnglishEntrydopsum1State();
// }

// class _EnglishEntrydopsum1State extends State<EnglishEntrydopsum1> {
//   @override
//   void initState() {
//     super.initState();
//     flutterTts = FlutterTts();
//     flutterTts.setLanguage("en-GB");
//     flutterTts.setLanguage("en-US");
//     fetchSentences();
//   }

//   FlutterTts flutterTts = FlutterTts();

//   bool isSpeaking = false;

//   Future<void> startSpeaking(
//       String languageCode, EnglishMeaningConst englishMeaningConst) async {
//     String textToSpeak = """
// ${englishMeaningConst.text}
// """;

//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(ttsPitch);
//     await flutterTts.setSpeechRate(ttsSpeechRate);
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
// EnglishEntrydopsum1 dopsum1
// IpaUK
// """,
//   );
// // 188888880002200

//   final String keyword = "dopsum1";
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
//     await flutterTts.speak("""dopsum1""");
//   }


//   @override
//   Widget build(BuildContext context) {

// EnglishMeaning(),

//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         body: NestedScrollView(
//           headerSliverBuilder: (context, innerBoxIsScrolled) {
//             return [
//               CustomSliverAppBar(
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: SingleChildScrollView(
//                     child: EntryPageColumn(
//                       word: """dopsum1""",
//                       // alsoEnglishWord: "also: dopsum1",
//                       britshText: """IpaUK: haʊʊʊʊʊʊʊ4""",
//                       americanText: """IpaUS: haʊʊʊʊʊʊʊ4""",
//                       onPressedBritish: () => speakheadword("en-GB"),
//                       onPressedAmerican: () => speakheadword("en-US"),
//                     ),
//                   ),
//                 ),
//                 bottom: const CustomTabBarNew(
//                   tabs: [
//                     UkIconForTab(),
//                     KurdIconForTab(),
//                     SentencesIconForTab(),
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
//               const YouTubeScroller(
//                 children: [
//                   YoutubeEmbeddingWidget(
//                     key: ValueKey(videoIdend),
//                     videoId: videoIdend,
//                     startSeconds: startSecondsend,
//                   ),
//                   YoutubeEmbeddingWidget(
//                     key: ValueKey(videoIdone),
//                     videoId: videoIdone,
//                     startSeconds: startSecondsone,
//                   ),
//                   YoutubeEmbeddingWidget(
//                     key: ValueKey(videoIdtwo),
//                     videoId: videoIdtwo,
//                     startSeconds: startSecondstwo,
//                   ),
//                   YoutubeEmbeddingWidget(
//                     key: ValueKey(videoIdthree),
//                     videoId: videoIdthree,
//                     startSeconds: startSecondsthree,
//                   ),
//                   YoutubeEmbeddingWidget(
//                     key: ValueKey(videoIdfour),
//                     videoId: videoIdfour,
//                     startSeconds: startSecondsfour,
//                   ),
//                   YoutubeEmbeddingWidget(
//                     key: ValueKey(videoIdfive),
//                     videoId: videoIdfive,
//                     startSeconds: startSecondsfive,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // end WORD_WEB









// final EnglishMeaningConst englishMe


// ZeetionaryAppbar(),
//         body: Padding(

// ({super.key});
//   final FlutterTts flutterTts = FlutterTts();

// // import 'package:flutter/material.dart';
// // import 'package:flutter_tts/flutter_tts.dart';
// // import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// // import 'package:zeetionary/constants.dart';



// final String 0_videoId
// const String videoIdend

// final String _v1ideoId
// const String videoIdone

// final String _vid2eoId
// const String videoIdtwo

// final String _video3Id
// const String videoIdthree

// final String _videoId4
// const String videoIdfour

// final String _videoId =5
// const String videoIdfive =


// final double _0startSeconds
// const double startSecondsend

// final double _st1artSeconds
// const double startSecondsone

// final double _star2tSeconds
// const double startSecondstwo

// final double _startS3econds
// const double startSecondsthree

// final double _startSec4onds
// const double startSecondsfour

// final double _startSecon5ds
// const double startSecondsfive


