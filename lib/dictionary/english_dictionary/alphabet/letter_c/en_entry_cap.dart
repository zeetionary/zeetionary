import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycap extends StatelessWidget {
// blank divider
  EnglishEntrycap({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcap(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cap"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps1(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He wore a cap to help shielding his face from the sun's glare."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps2(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps22"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps3(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps33"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps4(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps44"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps5(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps6(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps7(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps77"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps8(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps88"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps9(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps10(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps11(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps12(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcaps13(String languageCode) async {
    // DOPSUM: CHANGE speakcap
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcaps1313"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "cap"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kæp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcap("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcap("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- find:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: کڵاو، جۆرێ کڵاو بە یان بێ  شەپکە، تەقیلە، تەپڵە، کڵاوی شانازی یان زانکۆیی، دەزگا، دیافڕاگم (ژنان)، سەر، درگا، کڵاوە، قەپاخ، سەرپۆش، سەرقاپ، تۆقتۆقە، کڵاوە، بەشی سەرووی تەختی، کارگ یان، کڵاوە: تاج یان ڕووپۆشی دەسکرد بۆ ددانێ، زۆرترین، زۆرینە، ئەوپەڕ، هەرەسەروو، دوایین ڕادە، (وەک خەرج و بار)، نیشانەی ∩، ئاماژە بە هاوبڕی، دوو کۆمەڵە یان دەستە، (زۆرتر لە بریتانیا) جۆیێ کڵاو کە دەبەخشرێتە ئەندامانی تیپێکی وەرزشی، بەتایبەت تیپێکی نیشتمانی، هێشووە گەردێ 

١. (ناو) کڵاوێک کە لە پێشەوە بەشێکی ڕەقی چەماوەی هەیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He wore a cap to help shielding his face from the sun's glare."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کڵاوێکی لەسەر کرد بۆ پاراستنی ڕووخساری لە تیشکی خۆر."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "cap", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcaps1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcaps1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
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
- Noun: cap (Derived forms: caps, capping, capped)
1. A close-fitting hat, either without a brim or with a peak
 
2. A top (as for a bottle)
 
3. A mechanical or electrical explosive device or a small amount of explosive; can be used to initiate the reaction of a disrupting explosive (= detonator, detonating device)
 
4. Something serving as a cover or protection
 
5. A fruiting structure resembling an umbrella or a cone that forms the top of a stalked fleshy fungus such as a mushroom (= pileus)
 
6. A protective covering that is part of a plant (= hood)
 
7. An upper limit on what is allowed (= ceiling, roof)
"they established a cap for prices";
 
8. (dentistry) dental appliance consisting of an artificial crown for a broken or decayed tooth (= crown, crownwork, jacket, jacket crown)
"tomorrow my dentist will fit me for a cap";

9. The upper part of a column that supports the entablature (= capital, chapiter)

- Verb: cap (Derived forms: caps, capping, capped)
1. Lie at the top of (= crest)
"Snow capped the mountains";
 
2. Restrict the number or amount of
"We had to cap the number of people we can accept into our club"
 
3. Finish or complete, as with some decisive action (= cap off)
"he capped off the meeting with a radical proposal";
 
4. Top or seal with a cover; put a cap on
 
5. Surpass or outdo
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/qdslTdBxBeA?t=',
    startSeconds: 35,
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
    videoId: 'https://youtu.be/dPq-jhj1ARE?t=',
    startSeconds: 117,
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
    videoId: 'https://youtu.be/QpVbiWHQyaQ?t=',
    startSeconds: 92,
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
    videoId: 'https://youtu.be/sJC4ngQvQNY?t=',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/hELKgWjv1w0?t=',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/LTn9LpjDvdo?t=',
    startSeconds: 9,
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/jaRcbpN_KlM?t=',
    startSeconds: 1735,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/AHgU10z9LNA?t=',
    startSeconds: 47,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/4DkSn9uDDWU?t=',
    startSeconds: 13,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/gxwi-Xu24xE?t=',
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

// end WORD_WEB
