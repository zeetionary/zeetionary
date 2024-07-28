import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycoach extends StatelessWidget {
  // blank divider
  EnglishEntrycoach({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcoach(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("coach");
  }

  Future<void> speakcoachs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is a former college football coach.");
  }

  Future<void> speakcoachs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's the team coach?");
  }

  Future<void> speakcoachs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("See you tomorrow, Coach.");
  }

  Future<void> speakcoachs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He credited his success to his acting coach's guidance.");
  }

  Future<void> speakcoachs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many life coaches work from home via the telephone and internet.");
  }

  Future<void> speakcoachs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Travel is by coach overnight to Berlin.");
  }

  Future<void> speakcoachs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was seen boarding a coach to Southampton.");
  }

  Future<void> speakcoachs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our seats are in Coach D.");
  }

  Future<void> speakcoachs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is the old coach road.");
  }

  Future<void> speakcoachs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Even the company's director flies coach most of the time.");
  }

  Future<void> speakcoachs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has coached the team for five years.");
  }

  Future<void> speakcoachs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has coached hundreds of young singers.");
  }

  Future<void> speakcoachs13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her father coached her for the Olympics.");
  }

  Future<void> speakcoachs14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They believed the witnesses had been coached on what to say.");
  }

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
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "coach"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊtʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcoach("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊtʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcoach("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: پاس (بۆ شارەوشار)،	(شەمەندەفەر) عەڕەبانە، واگۆن،	گالیسکە، ڕاھێنەر یان مامۆستای تایبەتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ڕاھێنەری تیمێکی وەرزشی یان کەسێک"),
                          SentencesRow(
                            englishText:
                                "He is a former college football coach.",
                            kurdishText:
                                "کۆنە ڕاھێنەرێکی تۆپی پێیە لە کۆلێژ.", // coach",
                            onPressedBritish: () => speakcoachs1("en-GB"),
                            onPressedAmerican: () => speakcoachs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Who's the team coach?",
                            kurdishText: "ڕاھێنەری تیمەکە کێیە؟",
                            onPressedBritish: () => speakcoachs2("en-GB"),
                            onPressedAmerican: () => speakcoachs2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "See you tomorrow, Coach.",
                            kurdishText: "سبەی دەتبینمەوە، ڕاھێنەر.",
                            onPressedBritish: () => speakcoachs3("en-GB"),
                            onPressedAmerican: () => speakcoachs3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کەسێک کە وانەی تایبەتی بە کەسێک دەڵێتەوە"),
                          SentencesRow(
                            englishText:
                                "He credited his success to his acting coach's guidance.",
                            kurdishText:
                                "سەرکەوتنی گەڕاندەوە بۆ ڕێنمایی ڕاھێنەری نمایشی.",
                            onPressedBritish: () => speakcoachs4("en-GB"),
                            onPressedAmerican: () => speakcoachs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کەسێک کە پارەی پێ دەدەیت بۆ ئەوەی ڕاوێژت پێ بدات لەسەر باشترکردنی ژیانت"),
                          const AlsoEnglishckb(word: "ھەروەھا: life coach"),
                          SentencesRow(
                            englishText:
                                "Many life coaches work from home via the telephone and internet.",
                            kurdishText:
                                "زۆر ڕاوێژەری ژین لە ماڵەوە لە ڕێگەی تەلەفۆن و ئینتەرنێتەوە کاردەکەن.",
                            onPressedBritish: () => speakcoachs5("en-GB"),
                            onPressedAmerican: () => speakcoachs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) پاسێک کە بۆ گەشتی دوور مەودا بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "Travel is by coach overnight to Berlin.",
                            kurdishText: "گەشت بە پاسە لە نیوەشەودا بۆ بەرلین.",
                            onPressedBritish: () => speakcoachs6("en-GB"),
                            onPressedAmerican: () => speakcoachs6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was seen boarding a coach to Southampton.",
                            kurdishText:
                                "بینرا کە سەرکەوتە پاسێک بۆ ساوسامپتن.",
                            onPressedBritish: () => speakcoachs7("en-GB"),
                            onPressedAmerican: () => speakcoachs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بەشێکی جیاکراوەی شەمەندەفەر بۆ گواستنەوەی گەشتیار"),
                          SentencesRow(
                            englishText: "Our seats are in Coach D.",
                            kurdishText: "جێگاکانمان لە واگۆنی D ـن.",
                            onPressedBritish: () => speakcoachs8("en-GB"),
                            onPressedAmerican: () => speakcoachs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) گالیسکەیەکی داخراو کە لە کۆندا بە ڕاکێشانی ئەسپ بۆ گواستنەوە بەکاردەھات"),
                          SentencesRow(
                            englishText: "This is the old coach road.",
                            kurdishText: "ئەمە ڕێگا کۆنەکەی گالیسکەکانە.",
                            onPressedBritish: () => speakcoachs9("en-GB"),
                            onPressedAmerican: () => speakcoachs9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) ھەرزانترین جێگاکانی ناو فڕۆکە"),
                          SentencesRow(
                            englishText:
                                "Even the company's director flies coach most of the time.",
                            kurdishText:
                                "تەنانەت بەڕێوبەری کۆمپانیاکە زۆرجار لە جێگای ھەرزان دەفڕێت.",
                            onPressedBritish: () => speakcoachs10("en-GB"),
                            onPressedAmerican: () => speakcoachs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ڕاھێنەری کردنی تیمێک یان کەسێک بۆ یاری وەرزشی، کردنی شتێک بە باشتر، ھتد"),
                          SentencesRow(
                            englishText:
                                "He has coached the team for five years.",
                            kurdishText: "پێنج ساڵە ڕاھێنەری تیمەکەی کردووە.",
                            onPressedBritish: () => speakcoachs11("en-GB"),
                            onPressedAmerican: () => speakcoachs11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She has coached hundreds of young singers.",
                            kurdishText:
                                "ڕاھێنەری بە سەدا گۆرانیبێژی گەنج کردووە.",
                            onPressedBritish: () => speakcoachs12("en-GB"),
                            onPressedAmerican: () => speakcoachs12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her father coached her for the Olympics.",
                            kurdishText: "باوکی بۆ ئۆڵۆمپیاد مەشقی پێکرد.",
                            onPressedBritish: () => speakcoachs13("en-GB"),
                            onPressedAmerican: () => speakcoachs13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) پێدانی ڕێنمایی بە کەسێک کە چی بکات یان بڵێت لە دۆخێکی دیاریکراودا"),
                          SentencesRow(
                            englishText:
                                "They believed the witnesses had been coached on what to say.",
                            kurdishText:
                                "پێیان وابوو کە شایەتحاڵەکان ڕێنماییان پێدرابوو چی بڵێن.",
                            onPressedBritish: () => speakcoachs14("en-GB"),
                            onPressedAmerican: () => speakcoachs14("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Noun: coach (derived forms: coaches)
1. (sport) someone in charge of training an athlete or a team (= manager, handler)
 
2. (singing) a person who gives private instruction (as in singing, acting, etc.) (= private instructor, tutor)
 
3. A railcar where passengers ride (= passenger car, carriage)
 
4. A vehicle carrying many passengers; used for public transport (= bus, autobus, charabanc [Brit], double-decker, jitney [N. Amer, informal], motorbus, motorcoach, omnibus, passenger vehicle)
"he always rode the coach to work";
 
5. A carriage pulled by four horses with one driver (= four-in-hand, coach-and-four)

- Verb: coach (derived forms: coaches, coaching, coached)
1. Teach and supervise (someone); act as a trainer or coach (to), as in sports (= train)
"She is coaching the crew";
 
2. (driving) drive or operate a coach or carriage
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '5HjFdDyzvqg';
  final double _startSeconds = 121;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'lhmKCkZusMo';
  final double _startSeconds = 100;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '08okw37PBUE';
  final double _startSeconds = 543;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'FHUhOafKgKo';
  final double _startSeconds = 92;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'FPvisqTN8UY';
  final double _startSeconds = 248;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'Bl5630CeYFs';
  final double _startSeconds = 280;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'esfChb49_Rk';
  final double _startSeconds = 331;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'PmlRbfSavbI';
  final double _startSeconds = 63;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB