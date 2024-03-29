import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycorrespondence extends StatelessWidget {
  const EnglishEntrycorrespondence({super.key});

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
    return const EntryTitle(word: "correspondence");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrespondence(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("correspondence"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /ˌkɒrəˈspɒndəns/"),
        CustomIconButtonBritish(
          onPressed: () => speakcorrespondence("en-GB"),
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

  Future<void> speakcorrespondence(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("correspondence"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /ˌkɔːrəˈspɑːndəns/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcorrespondence("en-US"),
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

  Future<void> speakcorrespondences1(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The editor welcomes correspondence from readers on any subject."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences2(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Jane Austen's correspondence with her sister provides insights into her life and thoughts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences3(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The secretary deals with all the correspondence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences4(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I refused to enter into any correspondence with him about it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences5(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We have been in correspondence for months."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences6(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We kept up a correspondence for many years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences7(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The survey found no correspondence between crime and unemployment rates."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences8(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Here, the correspondency between the two situations ends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences9(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrespondences900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences10(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrespondences1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences11(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrespondences1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences12(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrespondences1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorrespondences13(String languageCode) async {
    // DOPSUM: CHANGE speakcorrespondence
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrespondences1300"); // DOPSUM: CHANGE TEXT
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
کوردی: (پێکەوە) گونجان، سازان، بەرامبەری، پێک‌خواردن، لێک‌هاتن، جووت‌بوون، یەک‌کەوتن، پێکهاتن، ڕێک‌کەوتن، یەک‌گرتنەوە، یەکان‌گیری،	لێک‌چوون، هاوشێوەیی، شێوەی یەک‌دان، وەک‌یەکی،	نامەنووسی، نامەگۆڕینەوە، نامەکان،	(بیرکاری) هاوتایی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) نامە، ئیمەیڵ، هتد کە دەینێریت بۆ کەسێک و پێت دەگات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The editor welcomes correspondence from readers on any subject."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕۆژنامەنووسەکە پێشوازی لە نامەی خوێنەران لەسەر هەر بابەتێک دەگات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "correspondence", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences1("en-US"),
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
                            "Jane Austen's correspondence with her sister provides insights into her life and thoughts."),
                    ExampleSentenceKurdish(
                        text:
                            "نامەگۆڕینەوەی خەین ئۆستن لەگەڵ خوشکەکەی تێگەشتن دەدات بەدەستەوە لەسەر ژیان و بیرکردنەوەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences2("en-US"),
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
                            "The secretary deals with all the correspondence."),
                    ExampleSentenceKurdish(
                        text: "سکرتێرەکە مامەڵە لەگەڵ هەموو ئیمەیڵەکان دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) نامەنووسی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I refused to enter into any correspondence (= to exchange letters) with him about it."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕەتم کردەوە بەژدار بم لە هیچ کارێکی نامەنووسی لەگەڵی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences4("en-US"),
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
                        text: "We have been in correspondence for months."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ چەندین مانگ دەبێت لە پەیوەندیداین (بە نامە)."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences5("en-US"),
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
                        text: "We kept up a correspondence for many years."),
                    ExampleSentenceKurdish(
                        text: "بۆ چەندین ساڵ پەیوەندیمان ڕاگرت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) پەیوەندی یان لێکچوونی دوو شت"),
          const AlsoEnglishckb(word: "هەروەها: correspondency"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The survey found no correspondence between crime and unemployment rates."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕاپرسییەکە هیچ پەیوەندی لە نێوان ڕێژەی تاوان و بێ‌کاریدا نەدۆزییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences7("en-US"),
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
                            "Here, the correspondency between the two situations ends."),
                    ExampleSentenceKurdish(
                        text: "لێرەدا، پەیوەندی نێوان دوو دۆخەکە کۆتایی دێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrespondences8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrespondences8("en-US"),
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
- Noun: correspondence (derived forms: correspondences)
1. Communication by the exchange of messages (letters, e-mails, etc.)
 
2. Compatibility of observations (= agreement)
"the results of two tests were in correspondence";
 
3. The relation of corresponding in degree, size or amount (= commensurateness, proportionateness)
 
4. (mathematics) an attribute of a shape or relation; exact reflection of form on opposite sides of a dividing line or plane (= symmetry, symmetricalness, balance)
 
5. Similarity by virtue of corresponding (= parallelism)
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
    videoId: 'QVoleJYgdM8',
    startSeconds: 341,
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
    videoId: '0sazcZ8wwZc',
    startSeconds: 245,
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
    videoId: 'IBRBO7KkFTo',
    startSeconds: 743,
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
    videoId: 'pXWyeg2GFBc',
    startSeconds: 1388,
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
    videoId: '4IaOeVgZ-wc',
    startSeconds: 5622,
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
    videoId: 'GsK5NaSCkho',
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
    videoId: 'WwhyZUlmaWA',
    startSeconds: 3291,
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