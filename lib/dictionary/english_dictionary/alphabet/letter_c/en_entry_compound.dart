import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycompound extends StatelessWidget {
// blank divider
  EnglishEntrycompound({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompound(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("compound");
  }

  Future<void> speakcompounds1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The air smelled like a compound of diesel and petrol fumes.");
  }

  Future<void> speakcompounds2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Common salt is a compound of sodium and chlorine.");
  }

  Future<void> speakcompounds3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A compound sentence contains two or more clauses.");
  }

  Future<void> speakcompounds4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The problems were compounded by severe food shortages.");
  }

  Future<void> speakcompounds5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His financial problems were compounded when he unexpectedly lost his job.");
  }

  Future<void> speakcompounds6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The DNA molecule is compounded from many smaller molecules.");
  }

  Future<void> speakcompounds7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most tyres are made of rubber compounded with other chemicals and materials.");
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
                            EntryTitle(word: "compound"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒmpaʊnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompound("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːmpaʊnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompound("en-US"),
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
کوردی: پێکھاتە، داڕشتە، تێکەڵە، لێکدراو، ئاوێتە،	وشەی لێکدراو،	(ڕستە) ناسادە، لێکدراو،	پێکھاتە، پێکھێنراو، پێکھاتوو، ئاوێتە، ناوچەی دەورگیراو، حەوشە، دیواربەند
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە تێکەڵەی دوو شت یان زیاترە"),
                          SentencesRow(
                            englishText:
                                "The air smelled like a compound of diesel and petrol fumes.",
                            kurdishText:
                                "ھەواکە بۆنی تێکەڵەیەکی گازوایل و دووکەڵی بەنزینی لێدەھات.", // compound",
                            onPressedBritish: () => speakcompounds1("en-GB"),
                            onPressedAmerican: () => speakcompounds1("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) مادەیەک کە لە کارلێکی کیمیایی دوو توخم یان زیاتر درووست دەبێت کە ڕێژەی جێگیر بەراورد بە یەکدی ھەیە"),
                          SentencesRow(
                            englishText:
                                "Common salt is a compound of sodium and chlorine.",
                            kurdishText:
                                "خوێی ئاسایی ئاوێتەیەکی سۆدیۆم و کلۆرە.",
                            onPressedBritish: () => speakcompounds2("en-GB"),
                            onPressedAmerican: () => speakcompounds2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) شتێک کە لە دوو بەش پێکھاتووە"),
                          SentencesRow(
                            englishText:
                                "A compound sentence contains two or more clauses.",
                            kurdishText:
                                "ڕستەیەکی لێکدراو لە دوو بڕگە یان زیاتر پێکدێت.",
                            onPressedBritish: () => speakcompounds3("en-GB"),
                            onPressedAmerican: () => speakcompounds3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) خراپترکردنی شتێکی شتێکی خراپ بە درووستکردنی کێشەی زیاتر"),
                          SentencesRow(
                            englishText:
                                "The problems were compounded by severe food shortages.",
                            kurdishText:
                                "کێشەکانی خراپتر بوون بە کەماسییەکی سەختی خواردن.",
                            onPressedBritish: () => speakcompounds4("en-GB"),
                            onPressedAmerican: () => speakcompounds4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His financial problems were compounded when he unexpectedly lost his job.",
                            kurdishText:
                                "کێشە داراییەکانی خراپتر بوون کە لەناکاو کارەکەی لەدەستدا.",
                            onPressedBritish: () => speakcompounds5("en-GB"),
                            onPressedAmerican: () => speakcompounds5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) درووست بوو لە شتێک"),
                          SentencesRow(
                            englishText:
                                "The DNA molecule is compounded from many smaller molecules.",
                            kurdishText:
                                "گەردی دی‌ئێن‌ئەی پێکدێت لە ڕێژەیەکی زۆری بچووکتر لە گەرد.",
                            onPressedBritish: () => speakcompounds6("en-GB"),
                            onPressedAmerican: () => speakcompounds6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) تێکەڵکردن پێکەوە"),
                          SentencesRow(
                            englishText:
                                "Most tyres are made of rubber compounded with other chemicals and materials.",
                            kurdishText:
                                "زۆر تایە لە لاستیک درووست دەکرێن کە تێکەڵکراوە لەگەڵ مادە و کیمیایی دیکە.",
                            onPressedBritish: () => speakcompounds7("en-GB"),
                            onPressedAmerican: () => speakcompounds7("en-US"),
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
- Verb: compound (derived forms: compounding, compounds, compounded)
1. Make more intense, stronger, or more marked (= intensify, heighten, deepen)
"The efforts were compounded";
 
2. Put or add together (= combine)
"compound resources";
 
3. Calculate principal and interest
 
4. Create by mixing or combining
 
5. Combine so as to form a whole; mix (= combine)
"compound the ingredients";

- Noun: compound (derived forms: compounds)
1. A whole formed by a union of two or more elements or parts
 
2. (chemistry) a substance formed by chemical union of two or more elements or ingredients in definite proportion by weight (= chemical compound)
 
3. An enclosure of residences and other buildings
 
4. A word (as anthropology, kilocycle, builder) consisting of any of various combinations of words, combining forms, or affixes. (= compound word)
"Also common in English is another type of verb-noun (or noun-verb) compound, in which an argument of the verb is incorporated into the verb, which is then usually turned into a gerund, such as breastfeeding, finger-pointing, etc.";

- Adjective: compound 
1. Consisting of two or more substances or ingredients or elements or parts
"soap is a compound substance"; "housetop is a compound word"; "a blackberry is a compound fruit"
 
2. (zoology) composed of many distinct individuals united to form a whole or colony (= colonial)
"coral is a compound organism";
 
3. (botany) composed of more than one part
"compound leaves are composed of several lobes"; "compound flower heads"
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

  final String _videoId = 'XlwbarbttsI';
  final double _startSeconds = 9;

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

  final String _videoId = '4EpI7UbQvUI';
  final double _startSeconds = 11;

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

  final String _videoId = 'HrUmQ6uLSPI';
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

  final String _videoId = '0-K1pVcmVzk';
  final double _startSeconds = 48;

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

  final String _videoId = 'MVHZWLFXKPo';
  final double _startSeconds = 13;

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

  final String _videoId = 'IaUmrzUPU1k';
  final double _startSeconds = 4;

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

  final String _videoId = 'rjpFX1WEfZ0';
  final double _startSeconds = 25;

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