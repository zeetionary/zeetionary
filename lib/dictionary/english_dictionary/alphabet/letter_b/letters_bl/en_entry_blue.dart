import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// Define the word "blue" and for each meaning provide five example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blue - /bluː/

enum TtsState { playing }

class EnglishEntryblue extends StatelessWidget {
  EnglishEntryblue({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblue(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("blue");
  }

  Future<void> speakblues1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sun shone brilliantly in the clear blue sky.");
  }

  Future<void> speakblues2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His eyes were dark blue.");
  }

  Future<void> speakblues3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She wanted to dye her hair blue.");
  }

  Future<void> speakblues4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His lips were turning blue.");
  }

  Future<void> speakblues5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He'd been feeling blue all week.");
  }

  Future<void> speakblues6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The movie is a bit too blue for children.");
  }

  Future<void> speakblues7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("California has mostly been a blue state in recent history.");
  }

  Future<void> speakblues8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room was decorated in blues and yellows.");
  }

  Future<void> speakblues9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was dressed in blue.");
  }

  Future<void> speakblues10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm very fond of blue.");
  }

  Future<void> speakblues11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He’s an Oxford rugby blue.");
  }

  Future<void> speakblues12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1212");
  }

  Future<void> speakblues13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1313");
  }

  Future<void> speakblues14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1414");
  }

  Future<void> speakblues15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1515");
  }

  Future<void> speakblues16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1616");
  }

  Future<void> speakblues17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1717");
  }

  Future<void> speakblues18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1818");
  }

  Future<void> speakblues19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues1919");
  }

  Future<void> speakblues20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2020");
  }

  Future<void> speakblues21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2121");
  }

  Future<void> speakblues22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2222");
  }

  Future<void> speakblues23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2323");
  }

  Future<void> speakblues24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2424");
  }

  Future<void> speakblues25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2525");
  }

  Future<void> speakblues26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakblues2626");
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
                            EntryTitle(word: "blue"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bluː/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblue("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bluː/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblue("en-US"),
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
کوردی: شین، کەو، نیلی، ھەش، ئاسمانی، مات، خەمبار، کز، دڵتەنگ، پیس، ناشیرین، ھەرزە، (نافەرمی، بریتانیا، لە باری سیاسی‌یەوە) کۆنەپارێز، ڕەنگی شین، بەرگی شین، دەریا، زەریا، ئاسمان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) ڕەنگی شین؛ ڕەنگی ئاسمانی ساماڵ یان دەریا لە ڕۆژێکی پاکدا"),
                          SentencesRow(
                            englishText:
                                "The sun shone brilliantly in the clear blue sky.",
                            kurdishText:
                                "خۆر بە ڕۆشنی لە ئاسمانی ساماڵدا دەگەشایەوە.",
                            onPressedBritish: () => speakblues1("en-GB"),
                            onPressedAmerican: () => speakblues1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "His eyes were dark blue.",
                            kurdishText: "چاوەکانی شینی تاری بوون.",
                            onPressedBritish: () => speakblues2("en-GB"),
                            onPressedAmerican: () => speakblues2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She wanted to dye her hair blue.",
                            kurdishText: "دەیویست پرچی بۆیەی شین بکات.",
                            onPressedBritish: () => speakblues3("en-GB"),
                            onPressedAmerican: () => speakblues3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) کەسێک کە ڕەنگی شین بووەتەوە بەھۆی تەنگەنەفەسی یان سەرما"),
                          SentencesRow(
                            englishText: "His lips were turning blue.",
                            kurdishText: "لێوەکانی شین دەبوونەوە.",
                            onPressedBritish: () => speakblues4("en-GB"),
                            onPressedAmerican: () => speakblues4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ھاوەڵناو) دڵتەنگ"),
                          SentencesRow(
                            englishText: "He'd been feeling blue all week.",
                            kurdishText: "تەواوی ھەفتەکە دڵتەنگ بووە.",
                            onPressedBritish: () => speakblues5("en-GB"),
                            onPressedAmerican: () => speakblues5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) فیلم، نووکتە، یان چیرۆک کە دەربارەی سێکسە"),
                          SentencesRow(
                            englishText:
                                "The movie is a bit too blue for children.",
                            kurdishText:
                                "فیلمەکە کەمێک بەدەر لە سنوور بۆ منداڵان باسی سێکس دەکات.",
                            onPressedBritish: () => speakblues6("en-GB"),
                            onPressedAmerican: () => speakblues6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) ناوچەیەکی ئەمریکا کە دەنگدەری پارتی دیموکرات تێیدا زیاترە وەک لە کۆماری"),
                          SentencesRow(
                            englishText:
                                "California has mostly been a blue state in recent history.",
                            kurdishText:
                                "لەمێژووی نزیکدا کالیفۆرنیا زۆرجار ویلایەتێکی دەنگدەری دیموکراتەکان بووە.",
                            onPressedBritish: () => speakblues7("en-GB"),
                            onPressedAmerican: () => speakblues7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ڕەنگی شین؛ ڕەنگی ئاسمانی ساماڵ یان دەریا لە ڕۆژێکی پاکدا"),
                          SentencesRow(
                            englishText:
                                "The room was decorated in blues and yellows.",
                            kurdishText:
                                "ژوورەکە بە شین و زەرد دیکۆراتی بۆ کرابوو.",
                            onPressedBritish: () => speakblues8("en-GB"),
                            onPressedAmerican: () => speakblues8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She was dressed in blue.",
                            kurdishText: "ڕەنگی شینی لەبەرکردبوو.",
                            onPressedBritish: () => speakblues9("en-GB"),
                            onPressedAmerican: () => speakblues9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I'm very fond of blue.",
                            kurdishText: "زۆرم حەز بە شینە.",
                            onPressedBritish: () => speakblues10("en-GB"),
                            onPressedAmerican: () => speakblues10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەسێک کە یارییەکی وەرزشی دیاریکراوی بۆ زانکۆی ئۆکسفۆرد یان کامبریج کردووە"),
                          SentencesRow(
                            englishText: "He’s an Oxford rugby blue.",
                            kurdishText: "یاریزانێکی ڕەگبی ئۆکسفۆردە.",
                            onPressedBritish: () => speakblues11("en-GB"),
                            onPressedAmerican: () => speakblues11("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
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
- Adjective: blue (derived forms: bluer, bluest)
1. Of the colour intermediate between green and violet; having a colour similar to that of a clear unclouded sky (= bluish, blueish, bluey)
"October's bright blue weather"; "a blue flame"; "blue haze of tobacco smoke";
 
2. Used to signify the Union forces in the American Civil War (who wore blue uniforms)
"a ragged blue line"
 
3. [informal] Filled with melancholy and despondency (= gloomy, grim, depressed, dispirited, down, downcast, downhearted, down in the mouth, low, low-spirited)
"lonely and blue in a strange city";

4. [informal] Characterized by profanity or cursing (= blasphemous, profane)
"blue language";

5. [informal] Suggestive of sexual impropriety (= gamy [N. Amer], gamey [N. Amer], juicy [informal], naughty, racy, risqué, spicy)
"a blue movie"; "blue jokes";

6. Belonging to or characteristic of the nobility or aristocracy (= aristocratic, aristocratical, blue-blooded, gentle [archaic], patrician)
"a blue family"; "blue blood"; "the blue-blooded aristocracy";
 
7. Morally rigorous and strict (= puritanic, puritanical)
"blue laws";

8. [informal] Causing dejection (= dark, dingy, disconsolate, dismal, gloomy, grim, sorry, drab, drear, dreary)
"a blue day";

9. [Brit, informal] Believing in or supporting tenets of the political right
- rightist, right-wing, Conservative

- Noun: blue (derived forms: blues)
1. Blue colour or pigment; resembling the colour of the clear sky in the daytime (= blueness)
"he had eyes of bright blue";

2. Blue clothing
"she was wearing blue"
 
3. Any organization or party whose uniforms or badges are blue
"the Union army was a vast blue"
 
4. The sky as viewed during daylight (= blue sky, blue air, wild blue yonder)
"he shot an arrow into the blue";

5. Used to whiten laundry, hair or give it a bluish tinge (= bluing, blueing)
 
6. The sodium salt of amobarbital that is used as a barbiturate; used as a sedative and a hypnotic (= amobarbital sodium, blue angel, blue devil, Amytal)
 
7. Any of numerous small butterflies of the family Lycaenidae
 
8. [Austral, NZ, informal] An angry dispute (= quarrel, wrangle, row[2], words, run-in [informal], dustup [informal], dust-up, bust-up [informal], slanging match [Brit, informal], ding-dong [Brit, informal], barney [Brit, informal])
"they had a blue";

9. [Austral, NZ, informal] Someone who has red hair (= redhead, redheader, red-header, carrottop [informal], ginger [informal])
 
10. [Austral, NZ, informal] An embarrassing mistake (= blunder, blooper [N. Amer, informal], bloomer [informal], bungle, pratfall [informal], foul-up, flub [N. Amer, informal], botch, boner [N. Amer, informal], boo-boo [informal], goof [informal], boob [Brit, informal])

- Verb: blue ((derived forms: blues, blued, bluing))
1. Turn blue
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 297;

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

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 147;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1196;

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

  final String _videoId = 'dJOz8SYbN28';
  final double _startSeconds = 576;

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

  final String _videoId = 'KJy7T24rhg0';
  final double _startSeconds = 594;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 826;

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

  final String _videoId = '58XEfDtU0Z4';
  final double _startSeconds = 698;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '1p8r-2ffK_c';
  final double _startSeconds = 28;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'Mhlpk5ZrYLM';
  final double _startSeconds = 507;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'URv0JwrR1eQ';
  final double _startSeconds = 1285;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'bqGa8Y6CXiY';
  final double _startSeconds = 261;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'NTf2rki0AcI';
  final double _startSeconds = 1317;

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

// end blue
