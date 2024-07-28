import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryaction - replace speakAction - replace action - /ˈækʃn/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryaction extends StatelessWidget {
  EnglishEntryaction({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaction(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("action");
  }

  Future<void> speakaction9652(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Each of us must take responsibility for our own actions.");
  }

  Future<void> speakact25473(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Firefighters took action immediately to stop the blaze spreading.");
  }

  Future<void> speakaction241(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The government is taking strong action on tax fraud.");
  }

  Future<void> speakaction53874(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Workers voted in favour of strike action.");
  }

  Future<void> speakaction42567(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A libel action is being brought against the magazine that published the article.");
  }

  Future<void> speakaction4387(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I never saw action during the war.");
  }

  Future<void> speakaction8691(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The action takes place in France.");
  }

  Future<void> speakaction35971(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I like films with plenty of action.");
  }

  Future<void> speakaction55555(String languageCode) async {
    // DOPSUM: CHANGE speakAction
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your request will be actioned.");
  }

  // Future<void> speakaction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action");
  // }

  // Future<void> speakaction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action");
  // }

  // Future<void> speakaction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action");
  // }

  // Future<void> speakaction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action");
  // }

  // Future<void> speakaction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action");
  // }

  // Future<void> speakaction(String languageCode) async {
  //   // DOPSUM: CHANGE speakAction
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("action");
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "action"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈækʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakaction("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈækʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakaction("en-US"),
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
کوردی: کار، کردەوە، کردە، ھەنگاو، ئیش، چالاکی، بزووتن، بزاوت، جوولە، کاریگەری، شوێن‌دانان، باندۆر، کردار (شەڕ)، ھێرش، ڕەوت، پێکادان، شەڕ، پارچە جووڵۆکەکان، شێوەی کار، میکانیزم، پڕۆسە یان ڕەوتی قانوونی، شکات، سکاڵا، داواکاری، ڕووداوەکان، گیروگرفت (سەرەکی، لە کتێب، شانۆ وھتد)
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) پڕۆسەی کردنی شتێک نۆ بەدیھێنانی شتێک یان مامەڵە لەگەڵ بارودۆخێک"
                                  ""),
                          SentencesRow(
                            englishText:
                                "Firefighters took action immediately to stop the blaze spreading.",
                            kurdishText:
                                "ئاگرکوژێنەوەکان بەپەلە ھەنگاویان نا بۆ وەستاندنی بڵوبوونەوەی ئاگرەکە.",
                            onPressedBritish: () => speakact25473("en-GB"),
                            onPressedAmerican: () => speakact25473(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The government is taking strong action on tax fraud.",
                            kurdishText:
                                "حکومەت لێپێچینەوەی توند دەگرێتە بەر بۆ ڕێگری لە خۆدزینەوە لە باج",
                            onPressedBritish: () => speakaction241("en-GB"),
                            onPressedAmerican: () => speakaction241(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شتێک کە کەسێک دەیکات"""),
                          SentencesRow(
                            englishText:
                                "Each of us must take responsibility for our own actions.",
                            kurdishText:
                                "تاک بە تاکمان دەبێت بەرپرسیاریەتی ھەڵبگرێت بۆ کردارەکانی خۆمان.",
                            onPressedBritish: () => speakaction9652("en-GB"),
                            onPressedAmerican: () => speakaction9652(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئەو ھەنگاوانەی کە کرێکاران دەینێن بۆ دەربڕینی ناڕەزایی"""),
                          SentencesRow(
                            englishText:
                                "Workers voted in favour of strike action.",
                            kurdishText:
                                "کرێکاران دەنگیان دا لە بەرژەوەندی مانگرتن.",
                            onPressedBritish: () => speakaction53874("en-GB"),
                            onPressedAmerican: () => speakaction53874(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) کەیسێکی یاسایی دژ بە کۆمپانیایەک یان دامەزراوەیەک بۆ وەستاندنی لە کردنی شتێکدا، یان ناچارکردنی بە پارەدان"""),
                          SentencesRow(
                            englishText:
                                "A libel action is being brought against the magazine that published the article.",
                            kurdishText:
                                "سکاڵایەکی ناوزڕاندن تۆمار دەکرێت دژ بە ئەو گۆڤارەی وتارەکەی بڵاوکردەوە.",
                            onPressedBritish: () => speakaction42567("en-GB"),
                            onPressedAmerican: () => speakaction42567(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ڕووبەڕووبوونەوە لە شەڕێک یان جەنگێک"""),
                          SentencesRow(
                            englishText: "I never saw action during the war.",
                            kurdishText:
                                "ھەرگیز ڕووبەڕووبوونەوەم نەبینی لە کاتی جەنگەکە.",
                            onPressedBritish: () => speakaction4387("en-GB"),
                            onPressedAmerican: () => speakaction4387(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو ڕووداوانەی لە چیرۆکێک یان شانۆیەک ڕوودەدەن"""),
                          SentencesRow(
                            englishText: "The action takes place in France.",
                            kurdishText: "ڕووداوەکان لە فەرەنسا ڕوودەدن.",
                            onPressedBritish: () => speakaction8691("en-GB"),
                            onPressedAmerican: () => speakaction8691(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) ڕووداوی خرووشێنەر"""),
                          SentencesRow(
                            englishText: "I like films with plenty of action.",
                            kurdishText:
                                "حەزم لەو فیلمانەیە کە زۆر ڕووداوی خرووشێنەریان تێدایە.",
                            onPressedBritish: () => speakaction35971("en-GB"),
                            onPressedAmerican: () => speakaction35971(
                                "en-US"), // REPLACE action /ˈækʃn/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) دڵنیاییکردنەوە لەوەی شتێک مامەڵەی لەگەڵ دەکرێت"""),
                          SentencesRow(
                            englishText: "Your request will be actioned.",
                            kurdishText: "داواکەت مامەڵەی لەگەڵ دەکرێت.",
                            onPressedBritish: () => speakaction55555("en-GB"),
                            onPressedAmerican: () => speakaction55555(
                                "en-US"), // REPLACE action /ˈækʃn/
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
                        YoutubeEmbeddedend(),
                        // YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Noun: action (derived forms: actions)
1. Something done (usually as opposed to something said)
"there were stories of murders and other unnatural actions"
 
2. The state of being active (= activity, activeness)
"he is out of action";
 
3. (military) a military engagement (= military action)
"he saw action in Korea";
 
4. A process existing in or produced by nature (rather than by the intent of human beings) (= natural process, natural action, activity)
"the action of natural forces"; "the natural action of natural forces";
 
5. The series of events that form a plot
"his novels always have a lot of action"
 
6. The trait of being active and energetic and forceful
"a man of action"
 
7. The operating part that transmits power to a mechanism (= action mechanism)
"the piano had a very stiff action";
 
8. (law) a judicial proceeding brought by one party against another; one party prosecutes another for a wrong done or for protection of a right or for prevention of a wrong (= legal action, action at law)
 
9. An act by a government body or supranational organization
"recent federal action undermined the segregationist position"; "the United Nations must have the power to propose and organize action without being hobbled by irrelevant issues"; "the Union action of emancipating Southern slaves"
 
10. The most important or interesting work or activity in a specific area or field
"the action is no longer in technology stocks but in municipal bonds"; "gawkers always try to get as close to the action as possible"
 
11. In firearms terminology, the mechanism that handles the ammunition (loads, locks, fires, and extracts the cartridges).
"Actions can be categorized in several ways, including single action versus double action, break action versus bolt action, and others."

- Verb: action (derived forms: actioned, actioning, actions)
1. Institute legal proceedings against; file a suit against (= sue, litigate, process)
"She actioned the company for discrimination";
 
2. Cause to happen; complete successfully (= carry through, accomplish, execute, carry out, fulfill [N. Amer], fulfil [Brit, Cdn])
"He actioned the operation";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '5G0j_Huv2Fg';
  final double _startSeconds = 782;

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

  final String _videoId = 'DroTM9SqcWI';
  final double _startSeconds = 18;

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

  final String _videoId = '1Y0F7zZ_Ws0';
  final double _startSeconds = 286;

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

  final String _videoId = 'KAJsdgTPJpU';
  final double _startSeconds = 8;

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

  final String _videoId = 'LMUgLbrmJYc';
  final double _startSeconds = 30;

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

  final String _videoId = 'Q_xtMu6bqv8';
  final double _startSeconds = 1;

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

  final String _videoId = '6QLo92FHYRQ';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '5GZVzvyZ07o';
  final double _startSeconds = 1;

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

  final String _videoId = 'qEPs8AVmjdg';
  final double _startSeconds = 1;

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

  final String _videoId = '1Hyx4a0Se7U';
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'hd2qtQuGDts';
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

// end
