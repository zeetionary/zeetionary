import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychat extends StatelessWidget {
  // blank divider
  EnglishEntrychat({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchat(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chat"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats1(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm sorry I can't stop to chat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats2(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two of us got chatting at the bus stop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats3(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Within minutes of being introduced they were chatting away like old friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats4(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What were you chatting about?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats5(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've been chatting online with my best friend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats6(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I use social media to chat with my friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats7(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I just called in for a chat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats8(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I had a long chat with her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats9(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After a few more minutes of chat, she left."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats10(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They say he's already married, but it's just idle chat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats11(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Fans are invited to an online chat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats12(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can take part in a live chat with the movie's director this afternoon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakchats13(String languageCode) async {
    // DOPSUM: CHANGE speakchat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchats1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "chat"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃæt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchat("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃæt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchat("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: گاڵتەوگەپ، دەمەتەقێ، دووان، شۆخی، قسە، ئاخافتن، وت‌ووێژ یا قسەی دۆستانە،	چەنەدان، چەقەسرۆیی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) گفتوگۆکردن بەشێوەیەکی هاوڕێیانە لەگەڵ کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'm sorry I can't stop to chat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ببوورە ناتوانم بۆ دەمەتەقێیەک بوەستم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "chat", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The two of us got chatting (= started chatting) at the bus stop."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هردووکمان لە وێستگەی پاسەکە دەستمان بە گفتوگۆ کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "Within minutes of being introduced they were chatting away like old friends."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە ماوەی چەند خولەکێکی یەکترناسیدا، وەک کۆنە هاوڕێ گفتوگۆیان دەکرد."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchats3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchats3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "What were you chatting about?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لەسەر چی گفتوگۆتان بوو؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchats4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchats4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) نامەگۆڕینەوە لەگەڵ کەسێک بە ئینتەرنێت کە دەتوانیت دەستبەجێ وەڵامی یەکدی بدەنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I've been chatting online with my best friend."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە ئینتەرنێت لەگەڵ باشترین هاوڕێم قسەم دەکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I use social media to chat with my friends."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تۆڕە کۆمەڵایەتییەکان بەکاردێنم بۆ قسەکردن لەگەڵ هاوڕێکانم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) گفتوگۆیەکی هاوڕێیانەی نافەرمی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I just called in for a chat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەنها بۆ دەمەتەقێیەک پەیوەندیم کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I had a long chat with her."),
                                    ExampleSentenceKurdish(
                                        text: "گفتوگۆیەکی درێژم هەبوو لەگەڵی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) قسەکردن، بەتایبەتی گفتوگۆی نافەرمی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "After a few more minutes of chat, she left."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەدوای چەند خولەکێکی دیکە لە قسەکردن، ڕۆشت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They say he's already married, but it's just idle chat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەڵێت لەمێژە هاوسەرگیری کردووە، بەڵام تەنها قسەی هیچە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پەیوەندی سەر ئینتەرنێت کە تێیدا لایەنەکان پەیامەکان دەستبەجێت دەبینن و وەڵام دەدەنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Fans are invited to an online chat."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەوادارەکان بانگهێشتی گفتوگۆیەکی سەر ئینتەرنێت دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You can take part in a live chat with the movie's director this afternoon."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت ئەم نیوەڕۆیە بەژدار بیت لە گفتوگۆیەنی ڕاستەوخۆی سەر ئینتەرنێت لەگەڵ دەرهێنەری فیلمەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchats12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchats12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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
                    ),
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
- Verb: chat (Derived forms: chatted, chatting, chats)
1. Talk socially without exchanging too much information (= chew the fat [informal], shoot the breeze [N. Amer, informal], confabulate, confab [informal], chitchat [informal], chit-chat [informal], chatter, chaffer, natter [informal], gossip, jaw [informal], claver [UK, dialect], visit [N. Amer, informal], chew the rag [informal], gas [informal], gab [informal])
"the men were sitting in the cafe and chatting";
 
2. Exchange text or voice messages in real time through a computer network

- Noun: chat (Derived forms: chats)
1. An informal conversation (= confab [informal], confabulation, schmooze [informal], schmoose [informal], chin-wag [Brit, informal], natter [informal])
 
2. Birds having a chattering call (= New World chat)
 
3. Songbirds having a chattering call (= Old World chat)
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/N8kThGNkDAc',
    // startSeconds: 222222222222222,
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/Xako5tPh5ys?t=',
    startSeconds: 57,
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
    videoId: 'https://youtu.be/XCg0PBtM7W8',
    // startSeconds: 222222222222222,
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/S5nceN_8O0s?t=',
    startSeconds: 17,
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

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/Bk0G1f4DpCM?t=',
    startSeconds: 37,
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/heIeCsyzUNc?t=',
    startSeconds: 627,
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/d4wn7ojGyx8?t=',
    startSeconds: 288,
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/wwWWPFPutNk?t=',
    startSeconds: 209,
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

// end WORD_WEB
