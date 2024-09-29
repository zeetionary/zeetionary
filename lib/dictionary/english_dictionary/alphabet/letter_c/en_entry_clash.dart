import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclash extends StatelessWidget {
  EnglishEntryclash({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclash(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("clash");
  }

  Future<void> speakclashs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Clashes broke out between police and demonstrators.");
  }

  Future<void> speakclashs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Eight people were wounded in a clash with border guards.");
  }

  Future<void> speakclashs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There has been a head-on clash between the two candidates over education policy.");
  }

  Future<void> speakclashs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Simply put, the conflict comes down to a clash of cultures.");
  }

  Future<void> speakclashs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In the new timetable, there's a clash between history and physics.");
  }

  Future<void> speakclashs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The clash of swords echoed through the ancient castle halls.");
  }

  Future<void> speakclashs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Bayern’s clash with Roma in the Champions League is on Monday.");
  }

  Future<void> speakclashs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The two teams clash in tomorrow's final.");
  }

  Future<void> speakclashs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Demonstrators clashed violently with police.");
  }

  Future<void> speakclashs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The leaders and members clashed on the issue.");
  }

  Future<void> speakclashs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He clashed with his father over politics.");
  }

  Future<void> speakclashs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His left-wing views clashed with his father's politics.");
  }

  Future<void> speakclashs13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They have clashing personalities.");
  }

  Future<void> speakclashs14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her party clashes with my brother's wedding, so I won't be able to go.");
  }

  Future<void> speakclashs15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you think these colours clash?");
  }

  Future<void> speakclashs16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The long swords clashed together.");
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
                            EntryTitle(word: "clash"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klæʃ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclash("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klæʃ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclash("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: بەریەک‌کەوتن، لێک‌کەوتن، لێک‌دران، پێک‌کەوتن، تێک‌ھەڵچوون، ڕووبەڕووبوونەوە، بەگژیەک‌داچوون،	مشت‌ومڕ، جوڕڕە، مشەرعێن، شەڕەقسە، دەمەقڕە،	شەڕ، شەڕوکێشە، ململانێ، پێک‌ھەڵپڕژان، پێکادان، ئامبازئاوقەی یەک‌بوون، کێشمەکێش،	دژایەتی، دژبەری، جیاوازی، ناکۆکی، ناڕەزایەتی،	ھاوکاتی، ھەڤدەمی، پێکەوەروودان،	ناسازی،	(دەنگ) زرنگە، چەکەچەک، شەقەشەق، تەق‌وکوت، دەنگی لێک‌کەوتن یا شکان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شەڕێکی کورتخایەن لە نێوان دوو گرووپدا"),
                          SentencesRow(
                            englishText:
                                "Clashes broke out between police and demonstrators.",
                            kurdishText:
                                "پێکدادان دەستیپێکرد لە نێوان پۆلیس و خۆپیشاندەراندا.",
                            onPressedBritish: () => speakclashs1("en-GB"),
                            onPressedAmerican: () => speakclashs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Eight people were wounded in a clash with border guards.",
                            kurdishText:
                                "ھەشت کەس بریندار بوون لە پێکدادان لەگەڵ پاسەوانە سنوورییەکاندا.",
                            onPressedBritish: () => speakclashs2("en-GB"),
                            onPressedAmerican: () => speakclashs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) مشتومڕ لە نێوان دوو کەس یان گرووپێک لە خەڵکیدا کە بیرۆکە و باوەڕی جیایان ھەیە"),
                          SentencesRow(
                            englishText:
                                "There has been a head-on clash between the two candidates over education policy.",
                            kurdishText:
                                "مشتومڕی ڕووبەڕوو لەنێوان دوو کاندیدەکەدا ھەبووە لەسەر سیاسەتی پەروەردە.",
                            onPressedBritish: () => speakclashs3("en-GB"),
                            onPressedAmerican: () => speakclashs3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) جیاوازی نێوان دوو شت کە پێچەوانەی یەکدین"),
                          SentencesRow(
                            englishText:
                                "Simply put, the conflict comes down to a clash of cultures.",
                            kurdishText:
                                "بە سادەیی بڵێین، ناکۆکییەکە بەھۆی دژیەکی کەلتوورییە.",
                            onPressedBritish: () => speakclashs4("en-GB"),
                            onPressedAmerican: () => speakclashs4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) دۆخێک کە تێیدا دوو شت پێکەوە ڕوودەدەن بەشێوەیەک کە ناتوانی لە ھەردووکی بەژدار بیت"),
                          SentencesRow(
                            englishText:
                                "In the new timetable, there's a clash between history and physics.",
                            kurdishText:
                                "لە خشتە تازەکەدا، ھاوکاتییەک ھەیە لە نێوان مێژوو و فیزیادا.",
                            onPressedBritish: () => speakclashs5("en-GB"),
                            onPressedAmerican: () => speakclashs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) دەنگێکی بەھێز کە بەھۆی بەرکەوتنی دوو کانزاوە درووست دەبێت"),
                          SentencesRow(
                            englishText:
                                "The clash of swords echoed through the ancient castle halls.",
                            kurdishText:
                                "دەنگی شمشێر بە ھۆڵەکانی قەڵاکەدا دەنگی دەدایەوە.",
                            onPressedBritish: () => speakclashs6("en-GB"),
                            onPressedAmerican: () => speakclashs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ڕووبەڕووبوونەوەی دوو تیم یان یاریزان لە بۆنەیەکی وەرزشیدا"),
                          SentencesRow(
                            englishText:
                                "Bayern’s clash with Roma in the Champions League is on Monday.",
                            kurdishText:
                                "ڕووبەڕووبوونەوەی بایرن لەگەڵ ڕۆما لە چامپیۆنس لیگ لە دووشەممەیە.",
                            onPressedBritish: () => speakclashs7("en-GB"),
                            onPressedAmerican: () => speakclashs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) ڕووبەڕووبوونەوە و شەڕکردن"),
                          SentencesRow(
                            englishText:
                                "The two teams clash in tomorrow's final.",
                            kurdishText:
                                "دوو تیمەکە لە یاری کۆتایی سبەیدا ڕووبەڕووی یەک دەبنەوە.",
                            onPressedBritish: () => speakclashs8("en-GB"),
                            onPressedAmerican: () => speakclashs8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Demonstrators clashed violently with police.",
                            kurdishText:
                                "خۆپیشاندەران بە توندی لەگەڵ پۆلیس ڕووبەڕووبوونەوە.",
                            onPressedBritish: () => speakclashs9("en-GB"),
                            onPressedAmerican: () => speakclashs9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) ناکۆکبوون لەگەڵ کەسێک بە توندی و پیشاندانی بۆ ڕای گشتی"),
                          SentencesRow(
                            englishText:
                                "The leaders and members clashed on the issue.",
                            kurdishText:
                                "سەرکردە و ئەندامەکان لەسەر بابەتەکە شەڕیان بوو.",
                            onPressedBritish: () => speakclashs10("en-GB"),
                            onPressedAmerican: () => speakclashs10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He clashed with his father over politics.",
                            kurdishText: "لەگەڵ باوکی ناکۆکی بوو لەسەر سیاسەت.",
                            onPressedBritish: () => speakclashs11("en-GB"),
                            onPressedAmerican: () => speakclashs11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) زۆر جیاواز دژیەکی یەکدی"),
                          SentencesRow(
                            englishText:
                                "His left-wing views clashed with his father's politics.",
                            kurdishText:
                                "بۆچوونە چەپڕەوانەکانی لەگەڵ سیاسەتی باوکی ناکۆک بوو.",
                            onPressedBritish: () => speakclashs12("en-GB"),
                            onPressedAmerican: () => speakclashs12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "They have clashing personalities.",
                            kurdishText: "کەسایەتی دژیەکیان ھەیە.",
                            onPressedBritish: () => speakclashs13("en-GB"),
                            onPressedAmerican: () => speakclashs13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) ڕوودانی دوو شت پێکەوە بەشێوەیەک کە ناتوانی لە ھەردووکیان بەژداربیت"),
                          SentencesRow(
                            englishText:
                                "Her party clashes with my brother's wedding, so I won't be able to go.",
                            kurdishText:
                                "ئاھەنگەکەی ھاوکات ڕوودەدات لەگەڵ ئاھەنگی ھاوسەرگیری براکەم، بۆیە ناتوانم بچم.",
                            onPressedBritish: () => speakclashs14("en-GB"),
                            onPressedAmerican: () => speakclashs14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) پێکەوە نەگونجانی دوو ڕەنگ، ستایل، یان شێوە"),
                          SentencesRow(
                            englishText: "Do you think these colours clash?",
                            kurdishText:
                                "پێت وایە ئەم دوو ڕەنگە پێکەوە ناشرینن؟",
                            onPressedBritish: () => speakclashs15("en-GB"),
                            onPressedAmerican: () => speakclashs15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) کێشان بە یەکدا و دەرکردنی دەنگێکی زرنگانەوەی بەرز"),
                          SentencesRow(
                            englishText: "The long swords clashed together.",
                            kurdishText: "شمشێرە درێژەکان کێشایان بە یەکدا.",
                            onPressedBritish: () => speakclashs16("en-GB"),
                            onPressedAmerican: () => speakclashs16("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: clash (derived forms: clashes)
1. A loud resonant repeating noise (= clang, clangor [US], clangour [Brit, Cdn], clangoring [US], clank, crash, clangouring [Brit, Cdn])
"he could hear the clash of distant bells";
 
2. A state of conflict between persons (= friction)
 
3. A state of conflict between colours
"her dress was a disturbing clash of colours"
 
4. A minor short-term fight (= brush, encounter, skirmish)

- Verb: clash (derived forms: clashed, clashes, clashing)
1. Crash together with violent impact (= collide)
"Two meteors clashed";
 
2. Be incompatible; be or come into conflict (= jar, collide)
"These colours clash";
 
3. Disagree violently
"We clashed over the new farm policies"
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

  final String _videoId = 'Qe4W4PvhqCk';
  final double _startSeconds = 1290;

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

  final String _videoId = 'd7_Q_-d-Rtw';
  final double _startSeconds = 27;

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

  final String _videoId = 'WZy35uBpJ54';
  final double _startSeconds = 0;

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

  final String _videoId = '0zXfDafyyao';
  final double _startSeconds = 777;

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

  final String _videoId = 'J-K5OjAkiEA';
  final double _startSeconds = 60;

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

  final String _videoId = 'NeZ4yXyzUG0';
  final double _startSeconds = 179;

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

  final String _videoId = 'FQ4hvLqNfqo';
  final double _startSeconds = 170;

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

  final String _videoId = 'ecFS2JSbn-0';
  final double _startSeconds = 1008;

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