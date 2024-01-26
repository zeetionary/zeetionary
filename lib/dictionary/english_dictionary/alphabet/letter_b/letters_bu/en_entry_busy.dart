import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybusy extends StatelessWidget {
// blank divider
  EnglishEntrybusy({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbusy(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("busy"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys1(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you busy tonight?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys2(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The principal is a very busy woman."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys3(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were busy enjoying themselves at the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys4(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Kate's busy with her homework."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys5(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you had a busy day?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys6(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've got a busy week ahead of us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys7(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The place gets very busy at lunchtimes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys8(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We have to cross a busy main road to get to school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys9(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The line is busy—I'll try again later."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys10(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This wallpaper is too busy for the bedroom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys11(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She busied herself with the preparations for the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys12(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "While we talked, Bill busied himself fixing lunch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbusys13(String languageCode) async {
    // DOPSUM: CHANGE speakbusy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbusys1313"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "busy"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɪzi/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbusy("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɪzi/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbusy("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: خەریکی، سەرقاڵی، سەرقاڵ، پڕکار، پژگاڵ، پڕ لە چالاکی، پڕکار، نەپەژراو، پڕجم‌وجۆڵ، (سەر)شلوق، (تەلەفۆن) گیراو، خەریک‌قسە 

١. (ھاوەڵناو) سەرقاڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Are you busy tonight?"),
                              const ExampleSentenceKurdish(
                                  text: "ئەمشەو سەرقاڵیت؟"),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "busy", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The principal is a very busy woman."),
                              const ExampleSentenceKurdish(
                                  text: "بەڕێوبەرەکە ژنێکی زۆر سەرقاڵە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) پێدانی تەواوی سەرنجت بە چالاکییەک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They were busy enjoying themselves at the party."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرقاڵبوون بە چێژوەرگرتن لە ئاهەنگەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Kate's busy with her homework."),
                              const ExampleSentenceKurdish(
                                  text: "کەیت سەرقاڵە بە ئەرکی ماڵەوەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) پڕ لە کار و چالاکی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Have you had a busy day?"),
                              const ExampleSentenceKurdish(
                                  text: "ڕۆژێکی پڕکارت بوو؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We've got a busy week ahead of us."),
                              const ExampleSentenceKurdish(
                                  text: "هەفتەیەکی پڕجم‌وجۆڵمان لەپێشە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) شوێنێک کە پڕ لە چالاکی، خەڵک، ئۆتۆمبێل، هتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The place gets very busy at lunchtimes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شوێنەکە لەکاتی نانخواردندا زۆر قەرەباڵخ دەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We have to cross a busy main road to get to school."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت بە شەقامێکی سەرەکیی زۆر قەرەباڵخدا تێپەڕین بۆ گەشتن بە قوتابخانە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) هێڵێکی پەیوەندی کە پەیوەندی تری لەگەڵدایە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The line is busy—I'll try again later."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هێڵەکە گیراوە، دواتر پەیوەندی دەکەمەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) دیزاینێک یان نەخشێک کە پڕ لە وردەکارییە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This wallpaper is too busy for the bedroom."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم وێنەیە زۆر پڕوردەکارییە بۆ ژووری خەو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) خۆسەرقاڵکردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She busied herself with the preparations for the party."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خۆی سەرقاڵکرد بە ئامادەکاری بۆ ئاهەنگەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "While we talked, Bill busied himself fixing lunch."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە قسەمان کرد، بیڵ خۆی سەرقاڵ کرد بە ئامادەکردنی نانی نیوەڕۆ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbusys12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbusys12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
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
- Adjective: busy (Derived forms: busier, busiest)
1. Actively or fully engaged or occupied
"busy with her work"; "a busy man"; "too busy to eat lunch"
 
2. Overcrowded or cluttered with detail (= fussy)
"a busy painting";

3. Intrusive in a meddling or offensive manner (= interfering, meddlesome, meddling, officious, busybodied)
"busy about other people's business";

4. Crowded with or characterized by much activity
"a very busy week"; "a busy life"; "a busy street"; "a busy seaport"
 
5. (of facilities such as telephones or lavatories) unavailable for use by anyone else or indicating unavailability (= engaged, in use)
"her line is busy"; "kept getting a busy signal";

- Verb: busy (Derived forms: busying, busied, busies)
1. Keep busy with (= occupy)
"She busies herself with her butterfly collection";
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
    videoId: 'lVoGZiL-kns',
    startSeconds: 408,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'VZqttqSbvVY',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'w_uT3GW1ycE',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'sZC6-u13-dM',
    startSeconds: 4109,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'cM4q33O2Qys',
    startSeconds: 13,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'h_h7y9HfLgI',
    startSeconds: 123,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'TV0mAUczNPc',
    startSeconds: 47,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'LO9hUrEjLM4',
    startSeconds: 54,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'MZxx7H-rTEU',
    startSeconds: 892,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'D1dDnuziIa4',
    startSeconds: 608,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
