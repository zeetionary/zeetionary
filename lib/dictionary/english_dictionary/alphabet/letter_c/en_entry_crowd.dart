import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrowd extends StatefulWidget {
  const EnglishEntrycrowd({super.key});

  @override
  State<EnglishEntrycrowd> createState() => _EnglishEntrycrowdState();
}

class _EnglishEntrycrowdState extends State<EnglishEntrycrowd> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
    return const EntryTitle(word: "crowd");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crowd");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /kraʊd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowd(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crowd");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrowd("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /kraʊd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowd(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crowd");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrowd("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowds1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He pushed his way through the crowd.");
  }

  Future<void> speakcrowds2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A small crowd had gathered outside the church.");
  }

  Future<void> speakcrowds3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Police had to break up the crowd.");
  }

  Future<void> speakcrowds4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Crowds of people poured into the street.");
  }

  Future<void> speakcrowds5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He left the hotel surrounded by crowds of journalists.");
  }

  Future<void> speakcrowds6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        " The President spoke before a crowd of more than 50 000 in the city's football stadium.");
  }

  Future<void> speakcrowds7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Bob introduced her to some of the usual crowd.");
  }

  Future<void> speakcrowds8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were a bit of a motley crowd.");
  }

  Future<void> speakcrowds9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He got in with the wrong crowd.");
  }

  Future<void> speakcrowds10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We all like to think we stand out from the crowd.");
  }

  Future<void> speakcrowds11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He prefers to be one of the crowd.");
  }

  Future<void> speakcrowds12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Thousands of people crowded the narrow streets.");
  }

  Future<void> speakcrowds13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Memories crowded his mind.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: کۆمەڵ، کۆمەڵە، دەستە، کۆڕ، جەماعەت، گەلە، گیڤالە،	گەل، خەڵک، جەماوەر، خەڵکی ڕەمەکی،	ئاپۆرە، چڕەبەندان، جمە، گوردەم، قەرەباڵغی، تێ‌ڕژاوی، گانەگۆڵ، جەنجاڵ، شلوقایی،	بینەران،	ژمارەیەکی زور، گەلێک،	کۆما، لۆدە، کۆڵێ
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ژمارەیەکی زۆر لە خەڵکی کە لە شوێنێک کۆبوونەتەوە"),
          SentencesRow(
            englishText: "He pushed his way through the crowd.",
            kurdishText: "ڕێگای خۆی بەناو جەماوەرەکەدا کردەوە.",
            onPressedBritish: () => speakcrowds1("en-GB"),
            onPressedAmerican: () => speakcrowds1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A small crowd had gathered outside the church.",
            kurdishText: "جەماوەرێکی بچووک لە دەرەوەی کڵێساکە کۆبوونەوە.",
            onPressedBritish: () => speakcrowds2("en-GB"),
            onPressedAmerican: () => speakcrowds2("en-US"),
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
                                text: "Police had to break up the crowd."),
                            ExampleSentenceKurdish(
                                text: "پۆلیس پێویست بوو خەڵکەکە بڵاوە پێبکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds3("en-US"),
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
                                    "Crowds of people poured into the street."),
                            ExampleSentenceKurdish(
                                text:
                                    "حەشاماتێک لە خەڵکی ڕژانە سەر شەقامەکان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds4("en-US"),
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
                                    "He left the hotel surrounded by crowds of journalists."),
                            ExampleSentenceKurdish(
                                text:
                                    "ھوتێلەکەی جێھێشت کە بە ژمارەیەک لە ڕۆژنامەنووس دەوردرابوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds5("en-US"),
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
                                    " The President spoke before a crowd of more than 50 000 in the city's football stadium."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەرۆکەکە لەپێش جەماوەرێکی سەروو ٥٠٠٠٠ کەس لە یاریگای تۆپی‌پێی شارەکە قسەی کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds6("en-US"),
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
          const DefinitionKurdish(text: "٢. (ناو) گرووپێکی دیاریکراو لە خەڵک"),
          SentencesRow(
            englishText:
                "Bob introduced her to some of the usual crowd (= people who often meet each other).",
            kurdishText: "بۆب ناساندی بە ھەندێک لە کۆمەڵە ئاشناکان.",
            onPressedBritish: () => speakcrowds7("en-GB"),
            onPressedAmerican: () => speakcrowds7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They were a bit of a motley crowd.",
            kurdishText: "دەستەیەکی ھەمەڕەنگ بوون.",
            onPressedBritish: () => speakcrowds8("en-GB"),
            onPressedAmerican: () => speakcrowds8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He got in with the wrong crowd.",
            kurdishText: "چووە ناو گرووپێکی ھەڵەوە.",
            onPressedBritish: () => speakcrowds9("en-GB"),
            onPressedAmerican: () => speakcrowds9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) خەڵکی ئاسایی"),
          SentencesRow(
            englishText:
                "We all like to think we stand out from the crowd (= are different from and better than other people).",
            kurdishText:
                "ئێمە ھەموومان حەز دەکەین وا بیربکەینەوە کە جیاوازین خەڵکە ڕەجاڵەکە.",
            onPressedBritish: () => speakcrowds10("en-GB"),
            onPressedAmerican: () => speakcrowds10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He prefers to be one of the crowd.",
            kurdishText: "پێی خۆشە یەکێک بێت لە خەڵکە ئاساییەکە.",
            onPressedBritish: () => speakcrowds11("en-GB"),
            onPressedAmerican: () => speakcrowds11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پڕکردنی شوێنێک بەشێوەیەک شوێنی جووڵە کەمە"),
          SentencesRow(
            englishText: "Thousands of people crowded the narrow streets.",
            kurdishText: "ھەزاران کەس شەقامە تەسکەکانیان پڕکرد.",
            onPressedBritish: () => speakcrowds12("en-GB"),
            onPressedAmerican: () => speakcrowds12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) پڕکردنی مێشکت بۆ ئەوەی بیر لە ھیچی دیکە نەکەیتەوە"),
          SentencesRow(
            englishText: "Memories crowded his mind.",
            kurdishText: "یادەوەرییەکان مێشکیان جەنجاڵ کرد.",
            onPressedBritish: () => speakcrowds13("en-GB"),
            onPressedAmerican: () => speakcrowds13("en-US"),
          ),
        ],
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: crowd (derived forms: crowds)
A large number of things or people considered together
"a crowd of insects assembled around the flowers"
 
2. An informal body of friends (= crew, gang, bunch)
"he still hangs out with the same crowd";

- Verb: crowd (derived forms: crowds, crowding, crowded)
1. Cause to herd, drive, or crowd together (= herd)
"We crowded the children into a spare classroom";
 
2. Fill or occupy to the point of overflowing
"The students crowded the auditorium"
 
3. To gather together in large numbers (= crowd together)
"men in straw boaters and waxed moustaches crowded the verandah";
 
4. Approach a certain age or speed (= push)
"She is crowding fifty";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'C_B09FZwSbA';
  final double _startSeconds = 73;

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

  final String _videoId = 'l31zZHfSUjA';
  final double _startSeconds = 155;

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

  final String _videoId = 'Jm6CnP8CsCw';
  final double _startSeconds = 91;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1485;

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

  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 102;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 116;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 1244;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
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