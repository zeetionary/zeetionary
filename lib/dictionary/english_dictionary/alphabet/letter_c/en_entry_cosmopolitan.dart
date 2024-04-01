import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycosmopolitan extends StatelessWidget {
  const EnglishEntrycosmopolitan({super.key});

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
              const EntryAndIPA(),
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
                    KurdishMeaning(),
                    const YoutubeVideos(),
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

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "cosmopolitan");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcosmopolitan(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cosmopolitan"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /ˌkɒzməˈpɒlɪtən/"),
        CustomIconButtonBritish(
          onPressed: () => speakcosmopolitan("en-GB"),
        ),
      ],
    );
  }
}

class IpaUS extends StatelessWidget {
  IpaUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcosmopolitan(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cosmopolitan"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /ˌkɑːzməˈpɑːlɪtən/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcosmopolitan("en-US"),
        ),
      ],
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcosmopolitans1(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Jamaica is a very cosmopolitan island."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans2(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She liked the cosmopolitan atmosphere of the city."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans3(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Young people today are much more cosmopolitan."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans4(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sea urchins are cosmopolitan in their distribution."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans5(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a real cosmopolitan."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans6(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans7(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans8(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans9(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans10(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans11(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans12(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcosmopolitans13(String languageCode) async {
    // DOPSUM: CHANGE speakcosmopolitan
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosmopolitans1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: جیهانی، گەردوونی، هەمەڕەنگ،	جیهان‌گیر، جیهان‌داگر، جیهان‌گرەوە، جیهان‌نیشتمان،	بنیادەمی بەئەزموون، دنیادیتوو 
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) پێکهاتوو لە خەڵکی جۆراوجۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Jamaica is a very cosmopolitan island."),
                    ExampleSentenceKurdish(
                        text: "جامایکا دوورگەیەکی زۆر هەمەڕەنگە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cosmopolitan", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosmopolitans1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosmopolitans1("en-US"),
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
                            "She liked the cosmopolitan atmosphere of the city."),
                    ExampleSentenceKurdish(
                        text: "حەزی بە کەشی جیهان‌گیری شارەکە بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosmopolitans2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosmopolitans2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) هەبوونی ئەزموونی بەرفراوان لە زۆر وڵاتی جیاوازەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Young people today are much more cosmopolitan."),
                    ExampleSentenceKurdish(
                        text: "کەسانی گەنجی ئەم سەردەمە دنیادیتووترن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosmopolitans3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosmopolitans3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) کە لە هەموو جیهاندا هەیە، بۆ نموونە ئاژەڵێک یان ڕووەکێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Sea urchins are cosmopolitan in their distribution."),
                    ExampleSentenceKurdish(
                        text: "ژیشکی دەریا لە دابەشبوونیاندا جیهان‌گیرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosmopolitans4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosmopolitans4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) کەسێک کە ئەزموونی زۆری لە زۆر وڵاتی جیهانەوە هەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She's a real cosmopolitan."),
                    ExampleSentenceKurdish(text: "دنیادیتوویەکی تەواوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosmopolitans5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosmopolitans5("en-US"),
                  ),
                ],
              ),
            ],
          ),
        ],
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
- Adjective: cosmopolitan 
1. (ecology) growing or occurring in many parts of the world (= widely distributed)
"cosmopolitan in distribution"; "a cosmopolitan herb";
 
2. Composed of people from or at home in many parts of the world; especially not provincial in attitudes or interests
"his cosmopolitan benevolence impartially extended to all races and to all creeds"; "the ancient and cosmopolitan societies of Syria and Egypt"; "that queer, cosmopolitan, rather sinister crowd found around the Marseilles docks"
 
3. Of worldwide scope or applicability (= ecumenical, oecumenical [archaic], general, universal, worldwide, world-wide, global)
"an issue of cosmopolitan import";

- Noun: cosmopolitan (derived forms: cosmopolitans)
1. A sophisticated person who has travelled in many countries (= cosmopolite)
 
2. A cocktail containing vodka, triple sec, lime juice, and cranberry juice
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
    videoId: 'EFkyxzJtiv4',
    startSeconds: 183,
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
    videoId: 'COD9hcTpGWQ',
    startSeconds: 146,
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
    videoId: 'NVH7JewfgJg',
    startSeconds: 264,
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
    videoId: 'd8AKUKdCTuA',
    startSeconds: 491,
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
    videoId: 'GhgmGZWGFKk',
    startSeconds: 2108,
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
    videoId: 'crtHMGpBNUc',
    startSeconds: 1071,
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
    videoId: 'ryaoMdE80FI',
    startSeconds: 382,
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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
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
    );
  }
}

// end WORD_WEB