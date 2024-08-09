import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryadvance - replace speakAdvance - replace advance - /ədˈvɑːns/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadvance extends StatelessWidget {
  EnglishEntryadvance({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakadvance(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("advance");
  }

  Future<void> speakadv2567(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We live in an age of rapid technological advance.");
  }

  Future<void> speakadvan3567(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Enemy advances had forced them to retreat into the mountains.");
  }

  Future<void> speakadv253(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The publishers have paid me an advance.");
  }

  Future<void> speakadv23574(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had made advances to one of his colleagues.");
  }

  Future<void> speakadvan6988(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Our knowledge of the disease has advanced considerably over recent years.");
  }

  Future<void> speakad456(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The troops were finally given the order to advance.");
  }

  Future<void> speakadv3568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They worked together to advance the cause of democracy.");
  }

  Future<void> speakadva391(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We will advance you the money.");
  }

  Future<void> speakadva7864(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The article advances a new theory to explain changes in the climate.");
  }

  Future<void> speakadva8529(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The date of the trial has been advanced by one week.");
  }

  Future<void> speakadv9678(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Participants advance through the program by answering a series of questions.");
  }

  // Future<void> speakadvance(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvance
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advance");
  // }

  // Future<void> speakadvance(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvance
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advance");
  // }

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
                            EntryTitle(word: "advance"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ədˈvɑːns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakadvance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ədˈvɑːns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakadvance("en-US"),
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
کوردی: پێشکەوتن، پێشکەوت، بەرکەوتن، چوونەپێش، پێش‌وەچوون، پێشڕەوی، ھەستان، بەرزبوونەوە، زۆربوون، چوونەسەرێ، چوونەسەرەوەی نرخ، گرانی، یارمەتی، قەرز، پیشەکی، پێش، پێش‌پێدان، ھەوڵ و تێکۆشان بۆ دەست‌پێ‌کردنی پێوەندی سێکسی، سازکردن
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) بەرەوپێشچوون و سەرکەوتن" ""),
                          SentencesRow(
                            englishText:
                                "We live in an age of rapid technological advance.",
                            kurdishText:
                                "لە سەردەمێکدا دەژین کە تەکنەلۆژیا بەخێرایی بەرەو پێشەوە دەچێت.",
                            onPressedBritish: () => speakadv2567("en-GB"),
                            onPressedAmerican: () => speakadv2567("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) بۆ پێشەوە جووڵەی کۆمەڵێک کەس، بەتایبەت یەکەی سەربازی"""),
                          SentencesRow(
                            englishText:
                                "Enemy advances had forced them to retreat into the mountains.",
                            kurdishText:
                                "پێشڕەویی دوژمن ناچاری کردبوون بکشێنەوە ناو چیکان.",
                            onPressedBritish: () => speakadvan3567("en-GB"),
                            onPressedAmerican: () => speakadvan3567("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) پارەیەک کە لەپێشدا دەدرێت وەک پێشەکی"""),
                          SentencesRow(
                            englishText:
                                "The publishers have paid me an advance.",
                            kurdishText: "بڵاوکەرەوەکان پێشەکییەکیان داوە پێم.",
                            onPressedBritish: () => speakadv253("en-GB"),
                            onPressedAmerican: () => speakadv253("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ھەوڵدان بۆ دەستپێکردنی پەیوەندیی سێکسی لەگەڵ کەسێک"""),
                          SentencesRow(
                            englishText:
                                "He had made advances to one of his colleagues.",
                            kurdishText:
                                "ھەوڵیدا پەیوەندی سێکسی لەگەڵ یەکێک لە ھاوکارەکانی درووست بکات.",
                            onPressedBritish: () => speakadv23574("en-GB"),
                            onPressedAmerican: () => speakadv23574("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەرەوپێشچوون و گەشەکردن"""),
                          SentencesRow(
                            englishText:
                                "Our knowledge of the disease has advanced considerably over recent years.",
                            kurdishText:
                                "تێگەشتنمان بۆ نەخۆشییەکە زۆر بەرەوپێشچووە لە چەند ساڵی ڕابردوودا.",
                            onPressedBritish: () => speakadvan6988("en-GB"),
                            onPressedAmerican: () => speakadvan6988("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) بەرەوپێشچوونی کۆمەڵە کەسێک، بەتایبەتی پێشڕەویکردنی سەربازی"""),
                          SentencesRow(
                            englishText:
                                "The troops were finally given the order to advance.",
                            kurdishText:
                                "سەربازان لە کۆتاییدا فەرمانی پێشڕەوییان پێدرا.",
                            onPressedBritish: () => speakad456("en-GB"),
                            onPressedAmerican: () => speakad456("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) یارمەتیدان لە سەرکەوتنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "They worked together to advance the cause of democracy.",
                            kurdishText:
                                "پێکەوە کاریان کرد بۆ بەرەوپێشچوونی دۆزی دیموکراسی.",
                            onPressedBritish: () => speakadv3568("en-GB"),
                            onPressedAmerican: () => speakadv3568("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) پێدانی پارە لە پێش کاتی خۆی"""),
                          SentencesRow(
                            englishText: "We will advance you the money.",
                            kurdishText: "پارەکەت بە پێشەکی پێدەدەین.",
                            onPressedBritish: () => speakadva391("en-GB"),
                            onPressedAmerican: () => speakadva391("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) پێشنیارکردنی بیرۆکەیەک یان پلانێک بۆ گەنگەشەکردن"""),
                          SentencesRow(
                            englishText:
                                "The article advances a new theory to explain changes in the climate.",
                            kurdishText:
                                "وتارەکە بیردۆزێکی تازە پێشنیار دەکات بۆ ڕوونکردنەوەی گۆڕان لە ئاووھەوا.",
                            onPressedBritish: () => speakadva7864("en-GB"),
                            onPressedAmerican: () => speakadva7864("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) گۆڕینی کاتی ڕووداوێک بۆ ئەوەی زووتر ڕووبدات"""),
                          SentencesRow(
                            englishText:
                                "The date of the trial has been advanced by one week.",
                            kurdishText:
                                "ڕێکەوتی دانیشتنەکەی دادگا یەک ھەفتە ھێنراوەتە پێشەوە.",
                            onPressedBritish: () => speakadva8529("en-GB"),
                            onPressedAmerican: () => speakadva8529("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) چوونە قۆناغێکی دواتری شتێک"""),
                          SentencesRow(
                            englishText:
                                "Participants advance through the program by answering a series of questions.",
                            kurdishText:
                                "بەژداربووان دەچنە قۆناغەکانی دواتری پڕۆگرامەکە بە وەڵامدانەوەی ژمارەیەک پرسیار.",
                            onPressedBritish: () => speakadv9678("en-GB"),
                            onPressedAmerican: () => speakadv9678("en-US"),
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
                        // YoutubeEmbeddedeleven(),
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
- Verb: advance (derived forms: advanced, advances, advancing)
1. Move forward, also in the metaphorical sense (= progress, pass on, move on, march on, go on)
"Time advances";
 
2. Bring forward for consideration or acceptance (= throw out)
"advance an argument";
 
3. Increase or raise (= boost, supercharge)
"advance the voltage in an electrical circuit";
 
4. Contribute to the progress or growth of (= promote, boost, further, encourage)
"I am advancing the use of computers in the classroom";
 
5. Cause to move forward (= bring forward)
 
6. Obtain advantages, such as points, etc. (= gain, win, pull ahead, make headway, get ahead, gain ground)
 
7. Make progress in knowledge or status (= progress, come on, come along, get on, get along, shape up)
"He advanced well in school";
 
8. Become more developed and sophisticated
"We are advancing technology every day"
 
9. Give a promotion to or assign to a higher position (= promote, upgrade, kick upstairs, raise, elevate)
"Women tend not to advance in the major law firms";

10. Pay in advance
"Can you advance me some money?"
 
11. Move forward (= set ahead)
"we have to advance clocks and watches when we travel eastward";
 
12. Rise in rate or price (= gain)
"The stock market advanced 24 points today";

- Noun: advance ((derived forms: advances))
1. A movement forward (= progress, progression)
"he listened for the advance of the troops";
 
2. A change for the better; progress in development (= improvement, betterment)
 
3. A tentative suggestion designed to elicit the reactions of others (= overture, approach, feeler)
"she rejected his advances";
 
4. The act of moving forward (as toward a goal) (= progress, progression, procession, advancement, forward motion, onward motion)
 
5. An amount paid before it is earned (= cash advance)
 
6. Increase in price or value (= rise)
"the news caused a general advance on the stock market";

- Adjective: advance 
1. Being ahead of time or need (= beforehand)
"gave advance warning";
 
2. Situated ahead or going before (= advanced, in advance)
"an advance party"; "an in advance party";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'X4qjfVZR51s';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'Yi-lD_LX_qM';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1509;

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

  final String _videoId = 'D_Y18GEjfNY';
  final double _startSeconds = 148;

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

  final String _videoId = 'yRmOWcWdQAo';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'IEp31mUaxfg';
  final double _startSeconds = 211;

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

  final String _videoId = 'IgF3OX8nT0w';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'aTDG16Mh2_w';
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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'YkmlPaGui5k';
  final double _startSeconds = 1879;

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

  final String _videoId = 'pTk9HnIwEYU';
  final double _startSeconds = 434;

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
