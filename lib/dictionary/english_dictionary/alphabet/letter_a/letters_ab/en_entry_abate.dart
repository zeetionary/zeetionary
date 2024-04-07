import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryabate extends StatelessWidget {
  const EnglishEntryabate({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              const EntryAndIPA(),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    KurdishMeaning(),
                    const YoutubeVideos(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // const TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "abate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: abate");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabate(String languageCode) async {
    // DOPSUM: CHANGE speakabate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abate"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /əˈbeɪt/"),
        CustomIconButtonBritish(
          onPressed: () => speakabate("en-GB"),
        ),
      ],
    );
  }
}

class IpaUS extends StatelessWidget {
  IpaUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabate(String languageCode) async {
    // DOPSUM: CHANGE speakabate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abate"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /əˈbeɪt/"),
        CustomIconButtonAmerican(
          onPressed: () => speakabate("en-US"),
        ),
      ],
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });
    final FlutterTts flutterTts = FlutterTts();


  Future<void> speak1142566(String languageCode) async {
    // DOPSUM: CHANGE speakAbate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The storm showed no signs of abating."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: دامرکان، داکوژان، ئارام‌گرتن
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) لەدەستدانی ھێز و لاوازبوون" ""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The storm showed no signs of abating."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زریانەکە ھیچ ئاماژەیەکی دامرکانی پیشان نەدەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speak1142566("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speak1142566("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
  }
}

// DOPSUM: ENGLISH MEANING

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: abate (derived forms: abating, abated, abates)
1.Make less active or intense (=slake, slack)

2. Become less in amount or intensity (=let up, slack off, slack, die away)
"The storm abated";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Sw7acXGiQeQ',
    startSeconds: 1413,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'eCptiecm0ZM',
    startSeconds: 259,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Vw1rjqdRonw',
    startSeconds: 3175,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });
// speakabates111111111111111111111111111111111

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        // YoutubeEmbeddedthree(),
        // YoutubeEmbeddedfour(),
        // YoutubeEmbeddedfive(),
        // YoutubeEmbeddedsix(),
        // YoutubeEmbeddedseven(),
        // YoutubeEmbeddedeight(),
        // YoutubeEmbeddednine(),
        // YoutubeEmbeddedten(),
        // YoutubeEmbeddedeleven(),
        // YoutubeEmbeddedtwelve(),
        // YoutubeEmbeddedthirteen(),
        // YoutubeEmbeddeddfourteen(),
        // YoutubeEmbeddedfifteen(),
        // YoutubeEmbeddeddsixteen(),
        // YoutubeEmbeddeddseventeen(),
        // YoutubeEmbeddeddeighteen(),
        // YoutubeEmbeddeddnineteen(),
        // YoutubeEmbeddedtwenty(),
        // YoutubeEmbeddedmulti(),
        YoutubeEmbeddedend(),
      ],
    );
  }
}

// end WORD_WEB









// // replace these: EnglishEntryabate - speakAbate - /əˈbeɪt/

// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:zeetionary/constants.dart';

// enum TtsState { playing }

// class EnglishEntryabate extends StatelessWidget {
//   EnglishEntryabate({super.key});
//   final FlutterTts flutterTts = FlutterTts();

//   Future<void> speakAbate(String languageCode) async {
//     // DOPSUM: CHANGE speakAbate
//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.setSpeechRate(0.5);
//     await flutterTts.speak("abate"); // DOPSUM: CHANGE TEXT
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: const ZeetionaryAppbar(),
//         body: Padding(
//           padding:
//               const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
//           // EdgeInsets.zero,
//           child: Column(
//             children: [
//               SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Row(
//                           children: [
//                             EntryTitle(
//                                 word: "abate"), // DOPSUM: CHANGE WORD ENTRY
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             const IPAofEnglish(text: "IpaUK: /əˈbeɪt/"),
//                             CustomIconButtonBritish(
//                               onPressed: () => speakAbate("en-GB"),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             const IPAofEnglish(
//                                 text:
//                                     "IpaUS: /əˈbeɪt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
//                             CustomIconButtonAmerican(
//                               onPressed: () => speakAbate("en-US"),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const CustomTabBar(
//                 tabs: [
//                   UkIconForTab(),
//                   KurdIconForTab(),
//                   VideoIconForTab(),
//                 ],
//               ),
//               Expanded(
//                 child: TabBarView(
//                   children: [
//                     const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
//                     ,
//                     YouTubeScroller(
//                       children: [
//                         YoutubeEmbeddedone(),
//                         YoutubeEmbeddedtwo(),
//                         YoutubeEmbeddedend(),
//                       ],
//                     ), // DOPSUM: FROM YOUTUBE BELOW
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // DOPSUM: ENGLISH MEANING

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
//     // Extract text from EnglishMeaningConst and store it in textToSpeak
//     String textToSpeak = """
// ${englishMeaningConst.text}
// """;

//     await flutterTts.setLanguage(languageCode);
//     await flutterTts.speak(textToSpeak);

//     // Update the state to reflect that TTS is in progress
//     setState(() {
//       isSpeaking = true;
//     });
//   }

//   // Function to stop TTS
//   Future<void> stopSpeaking() async {
//     await flutterTts.stop();

//     // Update the state to reflect that TTS is stopped
//     setState(() {
//       isSpeaking = false;
//     });
//   }

//   // Create an instance of EnglishMeaningConst with the desired text
//   final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
//     text: """

// """,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const DividerDefinition(),
//           // Using the EnglishButtonTTS class
//           EnglishButtonTTS(
//             onBritishPressed: (languageCode) =>
//                 startSpeaking(languageCode, englishMeaningConst),
//             onAmericanPressed: (languageCode) =>
//                 startSpeaking(languageCode, englishMeaningConst),
//             onStopPressed: stopSpeaking,
//           ),
//           // Speaker icon for American English
//           englishMeaningConst,
//         ],
//       ),
//     );
//   }
// }

// // DOPSUM: FIRST YOUTUBE VIDEO


// // end
