import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycompare extends StatelessWidget {
// blank divider
  EnglishEntrycompare({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompare(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("compare");
  }

  Future<void> speakcompares1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We compared the two reports carefully.");
  }

  Future<void> speakcompares2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The internet allows you to compare prices from a variety of companies.");
  }

  Future<void> speakcompares3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How can you compare the two things? They are so different!");
  }

  Future<void> speakcompares4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We compared the results of our study with those of other studies.");
  }

  Future<void> speakcompares5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My own problems seem insignificant compared with other people's.");
  }

  Future<void> speakcompares6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Standards in healthcare have improved enormously compared to 40 years ago.");
  }

  Future<void> speakcompares7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "About a third of American adults are obese compared with 24 per cent of Britons.");
  }

  Future<void> speakcompares8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This house doesn't compare with our previous one.");
  }

  Future<void> speakcompares9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their prices compare favourably to those of their competitors.");
  }

  Future<void> speakcompares10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The region's wines compare well with those from elsewhere in Germany.");
  }

  Future<void> speakcompares11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Few things compare with the joy of walking on a bright spring morning.");
  }

  Future<void> speakcompares12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These mountains do not compare with the Himalayas.");
  }

  Future<void> speakcompares13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Nothing compares with the sight of your child swimming for the first time.");
  }

  Future<void> speakcompares14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The critics compared his work to that of Martin Amis.");
  }

  Future<void> speakcompares15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In her early career she was often compared to Ella Fitzgerald.");
  }

  Future<void> speakcompares16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some observers compare the situation to that of the early 1980s.");
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
                            EntryTitle(word: "compare"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəmˈpeə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompare("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəmˈper/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompare("en-US"),
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
کوردی: بەراوردکاری، بەرھەڤ‌دان، ھاوبەری، پێک‌گرتن، ھەڵسەنگاندن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بەراوردکردنی شت یان کەس بۆ زانینی خاڵی ھاوبەش و جیاوازی"),
                          SentencesRow(
                            englishText:
                                "We compared the two reports carefully.",
                            kurdishText:
                                "دوو ڕاپۆرتەکەمان بەوریاییەوە بەراورد کرد.", // compare",
                            onPressedBritish: () => speakcompares1("en-GB"),
                            onPressedAmerican: () => speakcompares1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The internet allows you to compare prices from a variety of companies.",
                            kurdishText:
                                "ئینتەرنێت ڕێگات پێ دەدات نرخەکان لە ژمارەیەک کۆمپانیای جیاوازەوە بەراورد بکەیت.",
                            onPressedBritish: () => speakcompares2("en-GB"),
                            onPressedAmerican: () => speakcompares2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "How can you compare the two things? They are so different!",
                                    kurdishText:
                                        "چۆن دوو شتەکە بەراورد دەکەیت؟ زۆر جیاوازن!",
                                    onPressedBritish: () =>
                                        speakcompares3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We compared the results of our study with those of other studies.",
                                    kurdishText:
                                        "ئەنجامی توێژینەوەکەمان لەگەڵ ئەوانەی توێژینەوەکانی دیکە بەراورد کرد.",
                                    onPressedBritish: () =>
                                        speakcompares4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "My own problems seem insignificant compared with other people's.",
                                    kurdishText:
                                        "کێشەکانی من بێ‌بایەخ دەردەکەون بەراورد بەوانەی کەسانی دیکە.",
                                    onPressedBritish: () =>
                                        speakcompares5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Standards in healthcare have improved enormously compared to 40 years ago.",
                                    kurdishText:
                                        "ستانداردی کەرتی تەندرووستی باشتربووە بەراورد بە ٤٠ ساڵی ڕابردوو.",
                                    onPressedBritish: () =>
                                        speakcompares6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "About a third of American adults are obese compared with 24 per cent of Britons.",
                                    kurdishText:
                                        "نزیکەی یەک لە سەدی پێگەشتووانی ئەمریکا کێشیان زۆرە بەروارد بە ٢٤ لە سەدی بەریتانییەکان.",
                                    onPressedBritish: () =>
                                        speakcompares7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) ھاوشێوەی شتێک یان کەسێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "This house doesn't compare with our previous one (= it is not as good).",
                            kurdishText:
                                "خانووەک بەراورد ناکرێت بەوەی پێشووترمان.",
                            onPressedBritish: () => speakcompares8("en-GB"),
                            onPressedAmerican: () => speakcompares8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Their prices compare favourably to those of their competitors.",
                            kurdishText:
                                "نرخەکانیان باش دەردەکەون بەراورد بەوانەی ڕکابەرەکانیان.",
                            onPressedBritish: () => speakcompares9("en-GB"),
                            onPressedAmerican: () => speakcompares9("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The region's wines compare well with those from elsewhere in Germany.",
                                    kurdishText:
                                        "شەرابەکانی ھەرێمەکە باشن بەراورد بە ئەوانەی دیکەی شوێنەکانی دیکەی ئەڵمانیا.",
                                    onPressedBritish: () =>
                                        speakcompares10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Few things compare with the joy of walking on a bright spring morning.",
                                    kurdishText:
                                        "کەم شت بەراورد دەکرێن بە پیاسەیەکی بەیانیانی ڕۆشنی بەھار.",
                                    onPressedBritish: () =>
                                        speakcompares11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares11("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "These mountains do not compare with the Himalayas.",
                                    kurdishText:
                                        "ئەم چیایانە بەراورد ناکرێن بە زنجیرەکانی ھێمالایا.",
                                    onPressedBritish: () =>
                                        speakcompares12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Nothing compares with the sight of your child swimming for the first time.",
                                    kurdishText:
                                        "ھیچ بەراورد نابێت بە بینینی منداڵەکەت کە بۆ یەکەمجار مەلە دەکات.",
                                    onPressedBritish: () =>
                                        speakcompares13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompares13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) وتن یان پیشاندانی ئەوەی کەسێک/شتێک وەک کەسێک/شتێکی دیکە وایە"),
                          SentencesRow(
                            englishText:
                                "The critics compared his work to that of Martin Amis.",
                            kurdishText:
                                "ڕەخنەگران کارەکەیان بەوەی مارتن ئەیمز بەراورد کرد.",
                            onPressedBritish: () => speakcompares14("en-GB"),
                            onPressedAmerican: () => speakcompares14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "In her early career she was often compared to Ella Fitzgerald.",
                            kurdishText:
                                "لە سەرەتای کارکردنیدا زۆرجار بە ئێلا فیتزجێراڵد بەراورد دەکرا.",
                            onPressedBritish: () => speakcompares15("en-GB"),
                            onPressedAmerican: () => speakcompares15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Some observers compare the situation to that of the early 1980s.",
                            kurdishText:
                                "ھەندێک لە توێژەران دۆخەکەیان بەوەی ساڵانی سەرەتای ١٩٨٠ ـکان بەراورد دەکەن.",
                            onPressedBritish: () => speakcompares16("en-GB"),
                            onPressedAmerican: () => speakcompares16("en-US"),
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
- Verb: compare (derived forms: comparing, compared, compares)
1. Examine and note the similarities or differences of
"John compared his haircut to his friend's"; "We compared notes after we had both seen the movie"
 
2. Be comparable
"This car does not compare with our line of Mercedes"
 
3. Consider or describe as similar, equal, or analogous (= liken, equate)
"We can compare the Han dynasty to the Romans";
 
4. To form the comparative or superlative form on an adjective or adverb

- Noun: compare (derived forms: compares)
1. Qualities that are comparable (= comparison, equivalence, comparability)
"beyond compare";
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'kMpe75vJB_M';
  final double _startSeconds = 103;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 874;

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

  final String _videoId = 'wD3MruC-FTc';
  final double _startSeconds = 15;

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

  final String _videoId = 'Ht0IbFNbfSY';
  final double _startSeconds = 54;

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

  final String _videoId = 'S6yPZB9O2HU';
  final double _startSeconds = 190;

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

  final String _videoId = 'r-Or05EFLUM';
  final double _startSeconds = 142;

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

  final String _videoId = 'jaRcbpN_KlM';
  final double _startSeconds = 310;

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