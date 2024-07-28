import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycold extends StatelessWidget {
  // blank divider
  EnglishEntrycold({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcold(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cold");
  }

  Future<void> speakcolds1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm cold. Turn the heating up.");
  }

  Future<void> speakcolds2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's freezing cold.");
  }

  Future<void> speakcolds3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Hurry up—your dinner's getting cold.");
  }

  Future<void> speakcolds4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Isn't it cold today?");
  }

  Future<void> speakcolds5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Hot and cold food is available in the cafeteria.");
  }

  Future<void> speakcolds6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's cold chicken for lunch.");
  }

  Future<void> speakcolds7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was staring at her with cold eyes.");
  }

  Future<void> speakcolds8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was very cold towards me.");
  }

  Future<void> speakcolds9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police followed the robbers to the airport but then the trail went cold.");
  }

  Future<void> speakcolds10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was knocked out cold in the second round.");
  }

  Future<void> speakcolds11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've got a cold.");
  }

  Future<void> speakcolds12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If you stay out in the rain you'll catch cold!");
  }

  Future<void> speakcolds13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't stand outside in the cold.");
  }

  Future<void> speakcolds14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She doesn't seem to feel the cold.");
  }

  Future<void> speakcolds15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His final request stopped her cold.");
  }

  Future<void> speakcolds16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I can't just walk in there cold and give a speech.");
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
                            EntryTitle(word: "cold"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəʊld/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcold("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəʊld/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcold("en-US"),
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
کوردی: سارد، ساردایی، بێ‌ھەست، ساردوسڕ، بێ‌سۆز، وشک (ھەڵس‌وکەوت)،	کەم (بۆن)،	ساردمەزاج، سارد (سێکسی)،	مردوو، بێ‌ھۆش، لەسەرخۆچوو، دوور (لە کایەی مناڵان‌دا)،	کت‌وپڕ و بەتەواوەتی، تەواو، بەتەواوی،	بێ‌ئامادەیی، لەخۆوە،	سەرما، ھەوای سارد، ساردی،	ھەڵامەت، سەرمابوون، پەژیک، پەرسیو
"""),
                          const DefinitionKurdish(text: "١. (ھاوەڵناو) سارد"),
                          SentencesRow(
                            englishText: "I'm cold. Turn the heating up.",
                            kurdishText: "سەرمامە. گەرمییەکە بکەوە.", // cold",
                            onPressedBritish: () => speakcolds1("en-GB"),
                            onPressedAmerican: () => speakcolds1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "It's freezing cold.",
                            kurdishText: "تەواو سەرمامە.",
                            onPressedBritish: () => speakcolds2("en-GB"),
                            onPressedAmerican: () => speakcolds2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Hurry up—your dinner's getting cold.",
                                    kurdishText:
                                        "خێراکە، نانی ئێوارە سارد دەبێتەوە.",
                                    onPressedBritish: () =>
                                        speakcolds3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcolds3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Isn't it cold today?",
                            kurdishText: "سارد نییە ئەمڕۆ؟",
                            onPressedBritish: () => speakcolds4("en-GB"),
                            onPressedAmerican: () => speakcolds4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) خواردنی سارد"),
                          SentencesRow(
                            englishText:
                                "Hot and cold food is available in the cafeteria.",
                            kurdishText:
                                "خواردنی گەرم و سارد لە کافتریاکە بەردەستن.",
                            onPressedBritish: () => speakcolds5("en-GB"),
                            onPressedAmerican: () => speakcolds5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "It's cold chicken for lunch.",
                            kurdishText: "مریشكی سارد بۆ نانی نیوەڕۆ ھەیە.",
                            onPressedBritish: () => speakcolds6("en-GB"),
                            onPressedAmerican: () => speakcolds6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) کەسێکی ساردوسڕ کە ھاوڕێیانە نییە"),
                          SentencesRow(
                            englishText:
                                "He was staring at her with cold eyes.",
                            kurdishText: "بە چاوی ساردوسڕییەوە سەیری دەکرد.",
                            onPressedBritish: () => speakcolds7("en-GB"),
                            onPressedAmerican: () => speakcolds7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She was very cold towards me.",
                            kurdishText: "زۆر ساردوسڕ بوو لەگەڵم.",
                            onPressedBritish: () => speakcolds8("en-GB"),
                            onPressedAmerican: () => speakcolds8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) ڕێگایەک کە ئاسان نادۆزرێتەوە"),
                          SentencesRow(
                            englishText:
                                "The police followed the robbers to the airport but then the trail went cold.",
                            kurdishText:
                                "پۆلیس شوێن دزەکان کەوتن تاوەکو فڕۆکەخانەکە، بەڵام دواتر شوێنپێیان ونبوو.",
                            onPressedBritish: () => speakcolds9("en-GB"),
                            onPressedAmerican: () => speakcolds9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ھاوەڵناو) بێھۆش"),
                          SentencesRow(
                            englishText:
                                "He was knocked out cold in the second round.",
                            kurdishText: "لە دووەم دەوراندا بێھۆشخرا.",
                            onPressedBritish: () => speakcolds10("en-GB"),
                            onPressedAmerican: () => speakcolds10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) نەخۆشییەکی باو کە کار لە قوڕگ و لووت دەکات و دەبێتە ھۆی کۆکە، پژمە، ھتد"),
                          SentencesRow(
                            englishText: "I've got a cold.",
                            kurdishText: "ھەڵامەتم گرتووە.",
                            onPressedBritish: () => speakcolds11("en-GB"),
                            onPressedAmerican: () => speakcolds11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If you stay out in the rain you'll catch cold!",
                            kurdishText:
                                "ئەگەر لە بەر بارانەکە بمێنیتەوە ھەڵامەت دەگریت.",
                            onPressedBritish: () => speakcolds12("en-GB"),
                            onPressedAmerican: () => speakcolds12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) سەرما؛ کەشی سارد"),
                          SentencesRow(
                            englishText: "Don't stand outside in the cold.",
                            kurdishText: "لە دەرەوە لە سەرماکە مەوەستە.",
                            onPressedBritish: () => speakcolds13("en-GB"),
                            onPressedAmerican: () => speakcolds13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She doesn't seem to feel the cold.",
                            kurdishText: "وا دەرناکەوێت ھەست بە سەرماکە بکات.",
                            onPressedBritish: () => speakcolds14("en-GB"),
                            onPressedAmerican: () => speakcolds14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ھاوەڵکار) لەناکاو و بەتەواوی"),
                          SentencesRow(
                            englishText: "His final request stopped her cold.",
                            kurdishText: "کۆتا داواکاری بە تەواوی وەستاندی.",
                            onPressedBritish: () => speakcolds15("en-GB"),
                            onPressedAmerican: () => speakcolds15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ھاوەڵکار) بەبێ ئامادەکاری"),
                          SentencesRow(
                            englishText:
                                "I can't just walk in there cold and give a speech.",
                            kurdishText:
                                "ناتوانم بەبێ ئامادەکاری بچمە ئەوێ و وتارێک بدەم.",
                            onPressedBritish: () => speakcolds16("en-GB"),
                            onPressedAmerican: () => speakcolds16("en-US"),
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
- Adjective: cold (derived forms: coldest, colder)
1. Having a low or inadequate temperature or feeling a sensation of coldness or having been made cold by e.g. ice or refrigeration
"a cold climate"; "a cold room"; "dinner has gotten cold"; "cold fingers"; "if you are cold, turn up the heat"; "a cold beer"
 
2. Without human warmth or emotion
"a cold unfriendly nod"; "a cold and unaffectionate person"; "a cold impersonal manner"; "cold logic"; "the concert left me cold"
 
3. Having lost freshness through passage of time
"a cold trail"; "dogs attempting to catch a cold scent"
 
4. (colour) giving no sensation of warmth
"a cold bluish grey"
 
5. Marked by errorless familiarity
"had her lines cold before rehearsals started"
 
6. Lacking originality or spontaneity; no longer new (= stale, dusty, moth-eaten)
"cold news";
 
7. So intense as to be almost uncontrollable
"cold fury gripped him"
 
8. Sexually unresponsive (= frigid)
"was cold to his advances";
 
9. Without compunction or human feeling (= cold-blooded, inhuman, insensate)
"in cold blood"; "cold-blooded killing";
 
10. Feeling or showing no enthusiasm
"a cold audience"; "a cold response to the new play"
 
11. Unconscious from a blow, shock or intoxication
"the boxer was out cold"; "pass out cold"
 
12. Of a seeker; far from the object sought
 
13. Lacking the warmth of life
"cold in his grave"

- Noun: cold (derived forms: colds)
1. A mild viral infection involving the nose and respiratory passages (but not the lungs) (= common cold)
"will they never find a cure for the common cold?";
 
2.The absence of heat (= coldness, low temperature, frigidity, frigidness)
"come in out of the cold"; "cold is a vasoconstrictor";
 
3. The sensation produced by low temperatures (= coldness)
"the cold helped clear his head"; "he shivered from the cold";
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

  final String _videoId = '8Xv8AZqCJq8';
  final double _startSeconds = 16;

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

  final String _videoId = 'Ig8w0BDAhLg';
  final double _startSeconds = 7;

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

  final String _videoId = 'smQC3CXalVg';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'AaeUX5lFx-s';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'xev7NqHYcHQ';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'x7MA-XeXZt0';
  final double _startSeconds = 35;

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

  final String _videoId = 'Ht0IbFNbfSY';
  final double _startSeconds = 138;

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