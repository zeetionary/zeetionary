import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconvert extends StatelessWidget {
// blank divider
  EnglishEntryconvert({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconvert(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("convert");
  }

  Future<void> speakconverts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They took just nine months to convert the building.");
  }

  Future<void> speakconverts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You need to ensure that you've converted the data properly.");
  }

  Future<void> speakconverts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The system is eco-friendly because the waste heat is converted to electricity.");
  }

  Future<void> speakconverts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Japan was at the time still converting from an agricultural economy.");
  }

  Future<void> speakconverts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She was surprised by how comfortable the sofa was when converted into a bed.");
  }

  Future<void> speakconverts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She converted to Judaism to marry him.");
  }

  Future<void> speakconverts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He converted from Christianity to Buddhism.");
  }

  Future<void> speakconverts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was soon converted to the socialist cause.");
  }

  Future<void> speakconverts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've converted to organic food.");
  }

  Future<void> speakconverts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I didn't use to like opera but my husband has converted me.");
  }

  Future<void> speakconverts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Pope Clement was a convert from paganism.");
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
                            EntryTitle(word: "convert"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈvɜːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconvert("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈvɜːrt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconvert("en-US"),
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
//                           const KurdishVocabulary(text: """
// کوردی: نوێ‌دین، نۆدین، نۆئایین، نۆباوەڕ
// """),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) گۆڕان لە جۆرێک، مەبەستێک، یان سیستەمێکەوە بۆ یەکێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "They took just nine months to convert the building.",
                            kurdishText:
                                "تەنھا نۆ مانگیان پێویست بوو بۆ گۆڕینی بیناکە.", // convert",
                            onPressedBritish: () => speakconverts1("en-GB"),
                            onPressedAmerican: () => speakconverts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You need to ensure that you've converted the data properly.",
                            kurdishText:
                                "دەبێت دڵنیابیتەوە داتاکانت بە گونجاوی گۆڕیوە.",
                            onPressedBritish: () => speakconverts2("en-GB"),
                            onPressedAmerican: () => speakconverts2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The system is eco-friendly because the waste heat is converted to electricity.",
                            kurdishText:
                                "سیستەمە دۆستی ژینگەیە چونکە گەرمی بەفیڕۆدراو دەگۆڕێت بۆ کارەبا.",
                            onPressedBritish: () => speakconverts3("en-GB"),
                            onPressedAmerican: () => speakconverts3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Japan was at the time still converting from an agricultural economy.",
                            kurdishText:
                                "لەوکاتەدا ژاپۆن ھێشتا لە دەمی گۆڕانکاری لە ئابووری کشتووکاڵییەوە بوو.",
                            onPressedBritish: () => speakconverts4("en-GB"),
                            onPressedAmerican: () => speakconverts4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) ھەبوونی توانای گۆڕان لە جۆرێک، مەبەستێک، یان سیستەمێک بۆ یەکێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "She was surprised by how comfortable the sofa was when converted into a bed.",
                            kurdishText:
                                "سەرسام بوو بەوەی چەندە قەنەفەکە ئاسوودەبەخش بوو کە دەگۆڕا بۆ جێخەوێک.",
                            onPressedBritish: () => speakconverts5("en-GB"),
                            onPressedAmerican: () => speakconverts5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) گۆڕینی ئایین و بیروباوەڕ"),
                          SentencesRow(
                            englishText:
                                "She converted to Judaism to marry him.",
                            kurdishText:
                                "باوەڕی بە جودایزم ھێنا بۆ ھاوسەرگیری لەگەڵی.",
                            onPressedBritish: () => speakconverts6("en-GB"),
                            onPressedAmerican: () => speakconverts6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He converted from Christianity to Buddhism.",
                            kurdishText:
                                "ئایینی لە مەسیحییەتەوە گۆڕی بۆ بودیزم.",
                            onPressedBritish: () => speakconverts7("en-GB"),
                            onPressedAmerican: () => speakconverts7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was soon converted to the socialist cause.",
                            kurdishText:
                                "زوو باوەڕی ھێنا بە دۆزە کۆمەڵایەتییەکە.",
                            onPressedBritish: () => speakconverts8("en-GB"),
                            onPressedAmerican: () => speakconverts8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) گۆڕینی خوویەک، بۆچوونێک، ھتد"),
                          SentencesRow(
                            englishText: "I've converted to organic food.",
                            kurdishText: "خواردنی ئەندامی دەخۆم.",
                            onPressedBritish: () => speakconverts9("en-GB"),
                            onPressedAmerican: () => speakconverts9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I didn't use to like opera but my husband has converted me.",
                            kurdishText:
                                "حەزم بە ئۆپێرا نەبوو بەڵام ھاوژینەکەم گۆڕیمی.",
                            onPressedBritish: () => speakconverts10("en-GB"),
                            onPressedAmerican: () => speakconverts10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کەسێک کە ئایینی، باوەڕی، یان بۆچوونی گۆڕیوە"),
                          SentencesRow(
                            englishText:
                                "Pope Clement was a convert from paganism.",
                            kurdishText:
                                "پاپا کلیمێنت تازە باوەڕدارێک بوو لە بتپەرستییەوە.",
                            onPressedBritish: () => speakconverts11("en-GB"),
                            onPressedAmerican: () => speakconverts11("en-US"),
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
- Verb: convert (derived forms: converted, converting, converts)
1. Change from one system to another or to a new plan or policy (= change over)
"We converted from 220 to 110 Volt";
 
2. Change the nature, purpose, or function of something
"convert lead into gold"; "convert hotels into jails"; "convert slaves to labourers"
 
3. Change religious beliefs, or adopt a religious belief
"She converted to Buddhism"
 
4. Exchange or replace with another, usually of the same kind or category (= change, exchange, commute)
"Could you convert my dollars into pounds?"; "convert centimetres into inches";
 
5. Cause to adopt a new or different faith
"The missionaries converted the Indian population"
 
6. Score an extra point or points after touchdown by kicking the ball through the uprights or advancing the ball into the end zone
"Smith converted and his team won"
 
7. Make (someone) agree, understand, or realize the truth or validity of something (= win over, convince)
 
8. Exchange a penalty for a less severe one (= commute, exchange)
 
9. (chemistry) change in nature, purpose, or function; undergo a chemical change
"The substance converts to an acid"

- Noun: convert (derived forms: converts)
1. A person who has been converted to another religious or political belief
 
2. Someone who is now in favour of something that they previously opposed or disliked
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

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 184;

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

  final String _videoId = 'PhNUjg9X4g8';
  final double _startSeconds = 14;

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

  final String _videoId = 'X3TAROotFfM';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'nsnyl8llfH4';
  final double _startSeconds = 111;

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

  final String _videoId = 'wVc_ilWtA6g';
  final double _startSeconds = 94;

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

  final String _videoId = 'DxL2HoqLbyA';
  final double _startSeconds = 224;

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

  final String _videoId = 'UvjSXBqQe4A';
  final double _startSeconds = 272;

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