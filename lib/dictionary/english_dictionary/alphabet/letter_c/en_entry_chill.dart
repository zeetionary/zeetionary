import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychill extends StatelessWidget {
  // blank divider
  EnglishEntrychill({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchill(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("chill");
  }

  Future<void> speakchills1(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a chill in the air this morning.");
  }

  Future<void> speakchills2(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I could feel the chill as soon as I went outside.");
  }

  Future<void> speakchills3(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I caught a nasty chill after my swim last week.");
  }

  Future<void> speakchills4(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The news of the disaster cast a chill over the party.");
  }

  Future<void> speakchills5(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were chilled by the icy wind.");
  }

  Future<void> speakchills6(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's go home, I'm chilled to the bone.");
  }

  Future<void> speakchills7(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This wine is best served chilled.");
  }

  Future<void> speakchills8(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've put the fruits in the fridge to chill.");
  }

  Future<void> speakchills9(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His words chilled her.");
  }

  Future<void> speakchills10(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We went home and chilled in front of the TV.");
  }

  Future<void> speakchills11(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Just chill, Mum—everything's going to be OK.");
  }

  Future<void> speakchills12(String languageCode) async {
    // DOPSUM: CHANGE speakchill
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their breath steamed in the chill air.");
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
                            EntryTitle(word: "chill"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɪl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchill("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɪl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchill("en-US"),
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
کوردی: تەز، تەزوو، تەشق، سەقەم، سەرما(وسۆڵە)، لەرز، لەرزوتا، چەق‌وچۆ، مووچڕک، ترس‌ولەرز، سەرمابوون، باپەڕی، چایمان،	سارد، نادڵسۆز، سڕ،	ترسێنەر 
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) ھەستکردن بە سەرما"),
                          SentencesRow(
                            englishText:
                                "There's a chill in the air this morning.",
                            kurdishText:
                                "سەرمایەک ئەم بەیانییە لە ھەوادا ھەیە.", // chill",
                            onPressedBritish: () => speakchills1("en-GB"),
                            onPressedAmerican: () => speakchills1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I could feel the chill as soon as I went outside.",
                            kurdishText:
                                "دەمتوانی ھەست بە سەرماکە بکەم ھەرکە چوومە دەرەوە.",
                            onPressedBritish: () => speakchills2("en-GB"),
                            onPressedAmerican: () => speakchills2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) نەخۆشییەک کە درووست دەبێت بەھۆی سەرما و تەڕبوونەوە، و دەبێتە ھۆی پلەی گەرمی بەرز و لەرزین"),
                          SentencesRow(
                            englishText:
                                "I caught a nasty chill after my swim last week.",
                            kurdishText:
                                "لەرزوتایەکی خراپم گرت لە دوای مەلەکەم لە ھەفتەی ڕابردوو.",
                            onPressedBritish: () => speakchills3("en-GB"),
                            onPressedAmerican: () => speakchills3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ھەستکردن بە ترس"),
                          SentencesRow(
                            englishText:
                                "The news of the disaster cast a chill over the party.",
                            kurdishText:
                                "ھەواڵی کارەساتەکە ترسێکی بە ئاھەنگەکەدا بڵاوکردەوە.",
                            onPressedBritish: () => speakchills4("en-GB"),
                            onPressedAmerican: () => speakchills4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) وا لە کەسێک بکەیت سەرمای ببێت"),
                          SentencesRow(
                            englishText: "They were chilled by the icy wind.",
                            kurdishText: "تەزین بە بایە ساردەکە.",
                            onPressedBritish: () => speakchills5("en-GB"),
                            onPressedAmerican: () => speakchills5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Let's go home, I'm chilled to the bone (= very cold).",
                            kurdishText: "با بچینەوە ماڵەوە، تەواو تەزیوم.",
                            onPressedBritish: () => speakchills6("en-GB"),
                            onPressedAmerican: () => speakchills6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ساردبوونەوە یان ساردکردنەوەی خۆراک"),
                          SentencesRow(
                            englishText: "This wine is best served chilled.",
                            kurdishText: "ئەم بیرەیە بە ساردی پێشکەش دەکرێت.",
                            onPressedBritish: () => speakchills7("en-GB"),
                            onPressedAmerican: () => speakchills7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I've put the fruits in the fridge to chill.",
                            kurdishText:
                                "میوەکانم خستووەتە ساردکەرەوەکەوە بۆ ئەوەی سارد بن.",
                            onPressedBritish: () => speakchills8("en-GB"),
                            onPressedAmerican: () => speakchills8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) ترساندنی کەسێک"),
                          SentencesRow(
                            englishText: "His words chilled her.",
                            kurdishText: "وتەکانی تۆقاندی.",
                            onPressedBritish: () => speakchills9("en-GB"),
                            onPressedAmerican: () => speakchills9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) بەسەربردنی کات بۆ حەسانەوە"),
                          SentencesRow(
                            englishText:
                                "We went home and chilled in front of the TV.",
                            kurdishText:
                                "چووینە ماڵەوە و لە پێش تەلەفیزیۆنەکە حەساینەوە.",
                            onPressedBritish: () => speakchills10("en-GB"),
                            onPressedAmerican: () => speakchills10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Just chill, Mum—everything's going to be OK.",
                            kurdishText:
                                "تەنھا ئاسوودە بە، دایکە. ھەموو شتێک باش دەبێت.",
                            onPressedBritish: () => speakchills11("en-GB"),
                            onPressedAmerican: () => speakchills11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ھاوەڵناو) سەرما بەشێوەیەکی ناخۆش."),
                          SentencesRow(
                            englishText:
                                "Their breath steamed in the chill air.",
                            kurdishText:
                                "ھەناسەیان ھەڵمی دەکرد لە کەشە تەزێنەرەکەدا.",
                            onPressedBritish: () => speakchills12("en-GB"),
                            onPressedAmerican: () => speakchills12("en-US"),
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
                        // YoutubeEmbeddedeight(), //
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
- Noun: chill (derived forms: chills)
1. Coldness due to a cold environment (= iciness, gelidity)
 
2. An almost pleasurable sensation of fright (= frisson, shiver, quiver, shudder, thrill, tingle)
"a chill of surprise shot through him";
 
3. A sensation of cold that often marks the start of an infection and the development of a fever (= shivering)
 
4. A sudden numbing dread (= pall)

- Verb: chill (derived forms: chills, chilling, chilled)
1. Depress or discourage
"The news of the city's surrender chilled the soldiers"
 
2. Make cool or cooler (= cool, cool down)
"Chill the food";
 
3. Lose heat (= cool, cool down)
"The air chilled considerably after the thunderstorm";

- Adjective: chill (derived forms: chiller, chillest)
Usage: informal
1. [N. Amer, informal] Relaxed and informal in attitude or standards (= easygoing, easy-going)
 
2. Appreciably or disagreeably cold (= chilly, parky [Brit, informal])
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

  final String _videoId = 'GejxzTruwiM';
  final double _startSeconds = 49;

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

  final String _videoId = '_gPJ3x80qGI';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'KbwuxqZkDQ0';
  final double _startSeconds = 10;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 710;

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

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 217;

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

  final String _videoId = 'h4CyhQqAPpk';
  final double _startSeconds = 291;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 563;

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

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 350;

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
