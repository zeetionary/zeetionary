import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconduct extends StatelessWidget {
// blank divider
  EnglishEntryconduct({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconduct(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("conduct");
  }

  Future<void> speakconducts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There are concerns about the way in which the firm conducts its activities.");
  }

  Future<void> speakconducts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The battalion had been preparing to conduct operations in the same area.");
  }

  Future<void> speakconducts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Police conducted a thorough search of the building.");
  }

  Future<void> speakconducts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Education was conducted separately for males and females.");
  }

  Future<void> speakconducts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We regularly conduct safety inspections.");
  }

  Future<void> speakconducts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "People have criticized the way she conducted her election campaign.");
  }

  Future<void> speakconducts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The orchestra was conducted by Mira Shapur.");
  }

  Future<void> speakconducts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The guide conducted us around the ruins of the ancient city.");
  }

  Future<void> speakconducts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He conducted her into his private office.");
  }

  Future<void> speakconducts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He always conducted himself as a gentleman.");
  }

  Future<void> speakconducts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They have conducted themselves in a very professional manner.");
  }

  Future<void> speakconducts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Copper conducts electricity well.");
  }

  Future<void> speakconducts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sport has a strict code of conduct.");
  }

  Future<void> speakconducts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Any allegation of criminal conduct has to be taken seriously.");
  }

  Future<void> speakconducts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was arrested for disorderly conduct.");
  }

  Future<void> speakconducts16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The business conduct of this bank will be subject to UK rules.");
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
                            EntryTitle(word: "conduct"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈdʌkt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconduct("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈdʌkt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconduct("en-US"),
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
کوردی: ڕەفتار، ھەڵس‌وکەوت، ئاکار و کردار، ئاکار، ڕەوشت،	بەڕێوەبردن، ھەڵسووڕاندن، جێبەجێ‌کردن، ڕێبەرایەتی، بەڕێ‌دابردن، گێڕان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ڕێکخستن یان ئەنجامدانی چالاکییەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "There are concerns about the way in which the firm conducts its activities.",
                            kurdishText:
                                "نیگەرانی ھەیە سەبارەت بەو شێوازەی کە کۆمپانیاکە چالاکییەکانی ئەنجام دەدات.",
                            onPressedBritish: () => speakconducts1("en-GB"),
                            onPressedAmerican: () => speakconducts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The battalion had been preparing to conduct operations in the same area.",
                            kurdishText:
                                "بەتالیۆنەکە ئامادەکارییان دەکرد بۆ ئەنجامدانی ئۆپەراسیۆن لە ھەمان ناوچە.",
                            onPressedBritish: () => speakconducts2("en-GB"),
                            onPressedAmerican: () => speakconducts2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Police conducted a thorough search of the building.",
                                    kurdishText:
                                        "پۆلیس گەڕانێکی تەواوی بیناکەی ئەنجامدا.",
                                    onPressedBritish: () =>
                                        speakconducts3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconducts3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Education was conducted separately for males and females.",
                                    kurdishText:
                                        "خوێندن بە جیایی بۆ پیاوان و ژنان ئەنجام دەدرا.",
                                    onPressedBritish: () =>
                                        speakconducts4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconducts4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We regularly conduct safety inspections.",
                                    kurdishText:
                                        "زوو زوو پشکنینی سەلامەتی ئەنجام دەدەین.",
                                    onPressedBritish: () =>
                                        speakconducts5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconducts5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "People have criticized the way she conducted her election campaign.",
                                    kurdishText:
                                        "خەڵکی سەرکۆنەی شێوازی ئەنجامدانی کەمپینی ھەڵبژاردنەکەی ئەویان کردووە.",
                                    onPressedBritish: () =>
                                        speakconducts6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconducts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) سەرپەرشتیکردنی کۆمەڵە کەسێک کە گۆرانی دەڵێن یان میوزیک دەژەنن"),
                          SentencesRow(
                            englishText:
                                "The orchestra was conducted by Mira Shapur.",
                            kurdishText:
                                "ئۆرکێستراکە لەلایەن میرا شاپوورەوە بەڕێوەدەبرا.",
                            onPressedBritish: () => speakconducts7("en-GB"),
                            onPressedAmerican: () => speakconducts7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) ڕێنوێنی کەسێک بۆ شوێنێک یان بە دەوری شوێنێکدا"),
                          SentencesRow(
                            englishText:
                                "The guide conducted us around the ruins of the ancient city.",
                            kurdishText:
                                "ڕێبەرەکە ڕێنوێنی کردین بە وێرانەکانی شارە دێرینەکەدا.",
                            onPressedBritish: () => speakconducts8("en-GB"),
                            onPressedAmerican: () => speakconducts8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He conducted her into his private office.",
                            kurdishText: "ڕێنوێنی کردە ئۆفیسە تایبەتەکەی.",
                            onPressedBritish: () => speakconducts9("en-GB"),
                            onPressedAmerican: () => speakconducts9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ڕەفتارکردن بە شێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "He always conducted himself as a gentleman.",
                            kurdishText: "ھەمیشە وەک جوامێرێک ڕەفتاری دەکرد.",
                            onPressedBritish: () => speakconducts10("en-GB"),
                            onPressedAmerican: () => speakconducts10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They have conducted themselves in a very professional manner.",
                            kurdishText: "زۆر پڕۆفیشناڵانە خۆیان نواندووە.",
                            onPressedBritish: () => speakconducts11("en-GB"),
                            onPressedAmerican: () => speakconducts11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) گەیاندنی گەرمی یان کارەبا"),
                          SentencesRow(
                            englishText: "Copper conducts electricity well.",
                            kurdishText: "مس بەباشی کارەبا دەگەیەنێت.",
                            onPressedBritish: () => speakconducts12("en-GB"),
                            onPressedAmerican: () => speakconducts12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ڕەفتاری کەسێک لە شوێنێک یان کاتێکی دیاریکراودا"),
                          SentencesRow(
                            englishText:
                                "The sport has a strict code of conduct.",
                            kurdishText:
                                "وەرزشەکە ڕێسای توندی ھەڵسوکەوتی ھەیە.",
                            onPressedBritish: () => speakconducts13("en-GB"),
                            onPressedAmerican: () => speakconducts13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Any allegation of criminal conduct has to be taken seriously.",
                            kurdishText:
                                "ھەر تۆمەتێکی ھەڵسوکەوتی تاوانکاری دەبێت بە جدی بگیردرێت.",
                            onPressedBritish: () => speakconducts14("en-GB"),
                            onPressedAmerican: () => speakconducts14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was arrested for disorderly conduct.",
                            kurdishText:
                                "دەستگیرکرا بۆ ھەڵسووکەوتی ناڕێک‌وپێک.",
                            onPressedBritish: () => speakconducts15("en-GB"),
                            onPressedAmerican: () => speakconducts15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) شێوازی ئەنجامدانی کارێک یان چالاکییەک"),
                          SentencesRow(
                            englishText:
                                "The business conduct of this bank will be subject to UK rules.",
                            kurdishText:
                                "کاری بازرگانی ئەم بانکە دەکەوێتە ژێر یاسای بەریتانیاوە.",
                            onPressedBritish: () => speakconducts16("en-GB"),
                            onPressedAmerican: () => speakconducts16("en-US"),
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
- Verb: conduct (derived forms: conducted, conducts, conducting)
1. Direct the course of; manage or control (= carry on, deal)
"You cannot conduct business like this";
 
2. (music) Have the leading position, as in the performance of a composition (= lead, direct)
"Barenboim conducted the Chicago symphony for years"; "conduct an orchestra";
 
3. Behave in a certain manner (= behave, acquit, bear, deport, comport, carry)
"They conducted themselves well during these difficult times";
 
4. Accompany somebody somewhere to show them the way (= lead, take, direct, guide)
"He conducted us to the palace";
 
5. Serve as the medium for transmission, allow movement of (= impart, transmit, convey, carry, channel)
"Many metals conduct heat";
 
6. (music) lead musicians in the performance of
"she cannot conduct modern pieces"; "Bernstein conducted Mahler like no other conductor"

- Noun: conduct (derived forms: conducts)
1. Manner of acting or controlling yourself (= behavior [US], behaviour [Brit, Cdn], doings)
 
2. (behavioral attributes) the way a person behaves toward other people (= demeanor [US], demeanour [Brit, Cdn], behavior [US], behaviour [Brit, Cdn], deportment)
"her dignified conduct";
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

  final String _videoId = 't6fIp7mMJ90';
  final double _startSeconds = 87;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 661;

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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 1217;

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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 132;

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

  final String _videoId = 'VS6tnF31zr4';
  final double _startSeconds = 430;

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

  final String _videoId = 'W2hRTTTpmr8';
  final double _startSeconds = 64;

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

  final String _videoId = 'NtUUW_pFs_8';
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

// end WORD_WEB