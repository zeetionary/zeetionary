import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydeclaration extends StatefulWidget {
  const EnglishEntrydeclaration({super.key});

  @override
  State<EnglishEntrydeclaration> createState() =>
      _EnglishEntrydeclarationState();
}

class _EnglishEntrydeclarationState extends State<EnglishEntrydeclaration> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
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
    return const EntryTitle(word: "declaration");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: declaration");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /ˌdekləˈreɪʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclaration(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declaration"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeclaration("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /ˌdekləˈreɪʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclaration(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declaration"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeclaration("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclarations1(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The declaration asked governments to consider introducing new environmental taxes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations2(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government will issue a formal declaration tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations3(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All four countries have adopted the declaration against hunting these rare animals."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations4(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had been waiting for him to make a declaration of love."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations5(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Russian leader received a ringing declaration of support yesterday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations6(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We were asked to sign a declaration to the effect that we were UK citizens."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations7(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "False declaration of hours worked may lead to dismissal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations8(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The declaration of the poll will take place tomorrow morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations9(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclarations900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations10(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclarations1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations11(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclarations1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations12(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclarations1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclarations13(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclarations1300"); // DOPSUM: CHANGE TEXT
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
کوردی: ڕاگەیاندن، ڕاگەهاندن، بانگ، بانگ‌ڕاهێشتن، دانەزانین، ئاگادارکردنەوە، بانگەواز،	دەربڕین، ئاشکراکردن، وتن، ڕاگەیاندن‌نامە، ئاگاداری، داخویانی، بەیان‌نامە،	ئاگانامە، ڕاگەیاندن‌نامە (باج و هتد)
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بەیاننامەیەکی فەرمی، بەتایبەتی سەبارەت بە کاری حلومەت یان دامەزراوەیەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The declaration asked governments to consider introducing new environmental taxes."),
                    ExampleSentenceKurdish(
                        text:
                            "بەیاننامەکە داوای لە حکومەتەکان کرد کە باجی ژینگەیی تازە لەبەرچاو بگرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "declaration", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations1("en-US"),
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
                            "The government will issue a formal declaration tomorrow."),
                    ExampleSentenceKurdish(
                        text: "حکومەت سبەی بەیانامەیەکی فەرمی ڕادەگەیەنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations2("en-US"),
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
                            "All four countries have adopted the declaration against hunting these rare animals."),
                    ExampleSentenceKurdish(
                        text:
                            "هەر چوار وڵاتەکە ڕازی بوونە بە بەیاننامەیەک دژ بە ڕاوکردنی ئەم ئاژەڵە دەگمەنانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) لێدوانێکی نووسراو یان گوتراو، بەتایبەتی سەبارەت بەوەی کە خەڵکی هەست یان باوەڕیان چۆنە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She had been waiting for him to make a declaration of love."),
                    ExampleSentenceKurdish(
                        text: "چاوەڕوانی بوو کە خۆشەویستیی بۆ بەیان بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations4("en-US"),
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
                            "The Russian leader received a ringing declaration of support yesterday."),
                    ExampleSentenceKurdish(
                        text:
                            "سەرۆکی ڕووسیا دوێنێ بەیانێکی بەهێزی پشتیوانی پێگەشت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) لێدوانێکی فەرمی نووسراو کە زانیاری دەدات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We were asked to sign a declaration to the effect that we were UK citizens."),
                    ExampleSentenceKurdish(
                        text:
                            "داوامان لێکرا ڕاگەیاندنامەیەک واژۆ بکەین بەو واتایەی کە هاوڵاتی بەریتانیاین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations6("en-US"),
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
                            "False declaration of hours worked may lead to dismissal."),
                    ExampleSentenceKurdish(
                        text:
                            "بە هەڵە ڕاگەیاندنی کاتژمێرەکانی کارکردن ڕەنگە ببێتە هۆکاری دەرکردن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ڕاگەیاندنی ئەنجامی هەڵبژاردن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The declaration of the poll will take place tomorrow morning."),
                    ExampleSentenceKurdish(
                        text: "ڕاگەیاندنی سەرژمێرییەکە بەیانی سبەی دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclarations8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclarations8("en-US"),
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
- Noun: declaration (Derived forms: declarations)
1. A statement that is emphatic and explicit (spoken or written)
 
2. (law) unsworn statement that can be admitted in evidence in a legal transaction
"his declaration of innocence"
 
3. A statement of taxable goods or of dutiable properties
 
4. (contract bridge) the highest bid becomes the contract setting the number of tricks that the bidder must make (= contract)
 
5. A formal public statement (= announcement, proclamation, annunciation)
"a declaration of independence";
 
6. A formal expression by a meeting; agreed to by a vote (= resolution, resolve)
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
    videoId: 'https://youtu.be/gdgPAetNY5U?t=',
    startSeconds: 798,
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
    videoId: 'https://youtu.be/tsxmyL7TUJg?t=',
    startSeconds: 147,
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
    videoId: 'https://youtu.be/hA95iw4B2jg?t=',
    startSeconds: 162,
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
    videoId: 'https://youtu.be/pzvbUpKU4eE?t=',
    startSeconds: 201,
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
    videoId: 'https://youtu.be/0lGvBynSCQQ?t=',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ElQdUHSXkME?t=',
    startSeconds: 197,
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
    videoId: 'https://youtu.be/ZnEIEtNuSpM?t=',
    startSeconds: 801,
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