import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychatter extends StatelessWidget {
  EnglishEntrychatter({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchatter(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("chatter");
  }

  Future<void> speakchatters1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They chattered away happily for a while.");
  }

  Future<void> speakchatters2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He chattered excitedly to his friends.");
  }

  Future<void> speakchatters3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her teeth chattered as she dressed.");
  }

  Future<void> speakchatters4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The gun shot made the monkeys chatter in alarm.");
  }

  Future<void> speakchatters5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Jane's constant chatter was beginning to annoy him.");
  }

  Future<void> speakchatters6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I wish you'd stop wasting time in idle chatter.");
  }

  Future<void> speakchatters7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He could hear the chatter of birds in the trees overhead.");
  }

  Future<void> speakchatters8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "As they waited for help to arrive, the lost hikers could hear the chatter of teeth in the darkness.");
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
                            EntryTitle(word: "chatter"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈtʃætə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchatter("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈtʃætər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchatter("en-US"),
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
کوردی: زۆربڵەیی، چەقەسرۆیی، چەنەدان، قیژەقیژ، زیق‌وھەرا، گاڵەگاڵ، شەقەشەق، چۆقەچۆق
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) قسەکردن بەخێرایی و بەردەوامی لەسەر شتیانێک کە گرنگ نین"),
                          SentencesRow(
                            englishText:
                                "They chattered away happily for a while.",
                            kurdishText: "دڵخۆشانە بۆ ماوەیەک قسەیان کرد.",
                            onPressedBritish: () => speakchatters1("en-GB"),
                            onPressedAmerican: () => speakchatters1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He chattered excitedly to his friends.",
                            kurdishText:
                                "بە جۆشوخرۆشییەوە دەمەتەقێی بۆ ھاوڕێکانی دەکرد.",
                            onPressedBritish: () => speakchatters2("en-GB"),
                            onPressedAmerican: () => speakchatters2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) کڕاندنی ددان بە یەکدا بەھۆی سەرما یان ترس"),
                          SentencesRow(
                            englishText: "Her teeth chattered as she dressed.",
                            kurdishText:
                                "ددانەکانی کڕەیان دەھات کە جلی لەبەردەکرد.",
                            onPressedBritish: () => speakchatters3("en-GB"),
                            onPressedAmerican: () => speakchatters3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) درووستکردنی دەنگی زیق لەلایەن ئاژەڵانەوە"),
                          SentencesRow(
                            englishText:
                                "The gun shot made the monkeys chatter in alarm.",
                            kurdishText:
                                "دەنگی فیشەکەکە وای لە مەیموونەکان کرد دەست بە زیقەزیق بکەن.",
                            onPressedBritish: () => speakchatters4("en-GB"),
                            onPressedAmerican: () => speakchatters4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) قسەی بەردەوام لەسەر ئەو شتانەی کە گرنگ نین"),
                          SentencesRow(
                            englishText:
                                "Jane's constant chatter was beginning to annoy him.",
                            kurdishText:
                                "چەنەدانی بەردەوامی جەین خەریک بوو دەستی بە بێزارکردنی دەکرد.",
                            onPressedBritish: () => speakchatters5("en-GB"),
                            onPressedAmerican: () => speakchatters5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I wish you'd stop wasting time in idle chatter.",
                            kurdishText: "ھیوادارم دەوەستایت لە قسەی ھیچ.",
                            onPressedBritish: () => speakchatters6("en-GB"),
                            onPressedAmerican: () => speakchatters6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) دەنگی زیقی بەردەوامی ھەندێک ئاژەڵ"),
                          SentencesRow(
                            englishText:
                                "He could hear the chatter of birds in the trees overhead.",
                            kurdishText:
                                "دەیتوانی گوێی لە چریوەی باڵندە بێت لەسەر سەری.",
                            onPressedBritish: () => speakchatters7("en-GB"),
                            onPressedAmerican: () => speakchatters7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) دەنگی شت کە بەر یەکدی دەکەون"),
                          SentencesRow(
                            englishText:
                                "As they waited for help to arrive, the lost hikers could hear the chatter of teeth in the darkness.",
                            kurdishText:
                                "کە واستابوون بۆ گەشتنی یارمەتی، پیاسەکارە ونبووەکان گوێیان لە کڕەی ددان بوو لە تاریکییەکەدا.",
                            onPressedBritish: () => speakchatters8("en-GB"),
                            onPressedAmerican: () => speakchatters8("en-US"),
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
- Noun: chatter (derived forms: chatters, chattering, chattered)
1. Noisy talk (= yak, yack [informal], yakety-yak, cackle, yackety-yak [informal], yatter [informal])
 
2. The rapid series of noises made by the parts of a machine (= chattering)
 
3. The high-pitched continuing noise made by animals (birds or monkeys) (= chattering)

- Verb: chatter 
1. Make a clicking sound repeatedly or uncontrollably (= click)
"Chattering teeth";
 
2. Cut unevenly with a chattering tool
 
3. Talk socially without exchanging too much information (= chew the fat [informal], shoot the breeze [N. Amer, informal], chat, confabulate, confab [informal], chitchat [informal], chit-chat [informal], chaffer, natter [informal], gossip, jaw [informal], claver [UK, dialect], visit [N. Amer, informal], chew the rag [informal], gas [informal], gab [informal])
"the men were sitting in the cafe and chattering";
 
4. Speak (about unimportant matters) rapidly and incessantly (= piffle, palaver [informal], prate, tittle-tattle, twaddle [informal], clack [informal], maunder, prattle, blab [informal], gibber, tattle, blabber [informal], gabble, vapour [Brit, Cdn], rabbit [Brit, informal], vapor [US], twattle [UK, dialect], witter [Brit, informal], yabber [Brit, informal], yatter [Brit, informal])
 
5. Make noise as if chattering away
"The magpies were chattering in the trees"
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

  final String _videoId = 'hZCVt28wN00';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 223;

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
  final double _startSeconds = 1474;

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

  final String _videoId = 'IM31fgkxn2I';
  final double _startSeconds = 1014;

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

  final String _videoId = 'RhWFy8fsDrc';
  final double _startSeconds = 1028;

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

  final String _videoId = 'JQiJu6qhOV0';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'MrS07wakoJo';
  final double _startSeconds = 1176;

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

  final String _videoId = 'sOwbxQQ-6Rw';
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

// end WORD_WEB
