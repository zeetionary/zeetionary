import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconfusion extends StatelessWidget {
// blank divider
  EnglishEntryconfusion({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconfusion(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("confusion"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions1(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The announcement caused a lot of confusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions2(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There is some confusion about what the correct procedure should be."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions3(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("To avoid confusion, please write the children's names clearly on all their school clothes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions4(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are very hard to tell apart, so the confusion is understandable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions5(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fighting had broken out and all was chaos and confusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions6(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her unexpected arrival threw us into total confusion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions7(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions8(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions9(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions10(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions11(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions12(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconfusions13(String languageCode) async {
    // DOPSUM: CHANGE speakconfusion
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconfusions1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
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
                            EntryTitle(word: "confusion"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈfjuːʒn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconfusion("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈfjuːʒn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconfusion("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: سەرلێ‌شێواوی، سەرگەردانی، سەرکوێری، گێژی، وڕی، کاسی، پەشۆکاوی، تاساوی، هێوان، واق‌وڕماوی، خەجڵان، واقمان، سەرسووڕمان، تێکچوون، شڵەژان، شڵەژاوی، شێوان، پشێوی، ئاژاوە، پاشاگەردانی،	هەڵە، شاشی، لێ‌شێوان
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) دۆخی شڵەژاوی؛ کە تێیدا نازانیت چی بکەیت، چی بڵێیت، واتای شتێک چییە، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The announcement caused a lot of confusion."),
                                    ExampleSentenceKurdish(
                                        text: "ڕاگەیاندنەکە بوو بەهۆی پەشۆکاوی زۆر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "confusion", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconfusions1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconfusions1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "There is some confusion about what the correct procedure should be."),
                          ExampleSentenceKurdish(
                          text: "هەندێک سەرلێ‌شێواوی هەیە سەبارەت بەوەی کە ڕێکاری دروست دەبێت چی بێت.."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconfusions2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconfusions2("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) تێکەڵکردنی ئەوەی کەسێک کێیە یان شتێک چییە"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "To avoid confusion, please write the children's names clearly on all their school clothes."),
                          ExampleSentenceKurdish(
                          text: "بۆ دووربوون لە تێکەڵکردن، تکایە ناوی منداڵەکان بە ڕوونی لەسەر جلی قوتابخانەیان بنووسن."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconfusions3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconfusions3("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "They are very hard to tell apart, so the confusion is understandable."),
                          ExampleSentenceKurdish(
                          text: "زۆر سەختن بۆ جیاکردنەوە، تێکەڵکردنەکە مایەی تێگەشتنە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconfusions4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconfusions4("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ناو) دۆخێک کە نازانیت چی ڕوودەدات"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Fighting had broken out and all was chaos and confusion."),
                          ExampleSentenceKurdish(
                          text: "شەڕ دەستی پێکردبوو و هەمووی پشێوی و سەرلێ‌شێواوی بوو."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconfusions5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconfusions5("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Her unexpected arrival threw us into total confusion."),
                          ExampleSentenceKurdish(
                          text: "گەشتنی لەناکاوی خستمانییە ئاڵۆزییەوە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconfusions6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconfusions6("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Noun: confusion (Derived forms: confusions)
1. Disorder resulting from a failure to behave predictably
"the army retreated in confusion"
 
2. A mental state characterized by a lack of clear and orderly thought and behaviour (= mental confusion, confusedness, muddiness, disarray)
"a confusion of impressions"; "a mental confusion of impressions";
 
3. A feeling of embarrassment that leaves you confused (= discombobulation)
 
4. An act causing a disorderly combination of elements with identities lost and distinctions blended
"the confusion of tongues at the Tower of Babel"
 
5. A mistake that results from taking one thing to be another (= mix-up)
"he changed his name in order to avoid confusion with the notorious outlaw";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/eJHlVR4_dEE?t=',
    startSeconds: 4,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/vB2EtclQLRA',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/-A6NPgARIrw?t=',
    startSeconds: 128,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/RyeTuXdfn7s?t=',
    startSeconds: 6,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/cwYTcufdOww?t=',
    startSeconds: 112,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/8l51ZiZVg_c?t=',
    startSeconds: 88,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/DgnEtXsEzIo?t=',
    startSeconds: 1565,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB