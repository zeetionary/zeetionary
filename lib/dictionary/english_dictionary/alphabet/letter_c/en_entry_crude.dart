import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrude extends StatefulWidget {
  const EnglishEntrycrude({super.key});

  @override
  State<EnglishEntrycrude> createState() => _EnglishEntrycrudeState();
}

class _EnglishEntrycrudeState extends State<EnglishEntrycrude> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "crude");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crude");
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
    return const IPAofEnglish(text: "IpaUK: /kruːd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrude(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crude"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrude("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kruːd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrude(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crude"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrude("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrudes1(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The price of crude oil fluctuates based on supply and demand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes2(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes3(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The film had a warning for crude language in some scenes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes4(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In crude terms, a heart attack is a plumbing problem in blood vessels around the heart."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes5(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The constructed a crude shelter from branches."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes6(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The country exported crude to other nations for refining."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes7(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes8(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes9(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes10(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes11(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes12(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrudes13(String languageCode) async {
    // DOPSUM: CHANGE speakcrude
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrudes1300"); // DOPSUM: CHANGE TEXT
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
کوردی: خاو، نەپاڵێوراو، پوختەنەکراو، کاڵ‌وکرچ، کاڵ، ناتەواو، ناپوخت، نەگەییو،	خۆڕسک، سروشتی،	ناشارەزایانە، سەرسەرەکی، ناشی‌یانە،	سادە، سەرەتایی،	ئاسایی، هیچەکە، بازاڕی،	بێ‌ڕەوشت، بێ‌ماریفەت،	قسەلەڕوو، بێ‌پەردە،	پیس، ناشیرین، هەرزە (شۆخی)، ڕاست نەکراوە، خاو، نەوتی خاو
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) لەشێوەی سرووشتیدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The price of crude oil fluctuates based on supply and demand."),
                    ExampleSentenceKurdish(
                        text:
                            "نرخی نەوتی خاو کەم و زیاد دەکات بە پشت بەستن بە دابین کردن و خواست."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crude", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrudes1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrudes1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٢. (ھاوەڵناو) نەگۆڕاو یان ڕەستنەکراوە"),
          // Row(
          // children: [
          // const Expanded(
          // child: Column(
          // children: [
          // ExampleSentenceEnglish(
          // text:
          // "speakcrudes200"),
          // ExampleSentenceKurdish(
          // text: "رستە_رستە_رستە_رستە."),
          // ],
          // ),
          // ),
          // const CustomSizedBoxForTTS(),
          // Column(
          // children: [
          // CustomIconButtonBritish(
          // onPressed: () => speakcrudes2("en-GB"),
          // ),
          // CustomIconButtonAmerican(
          // onPressed: () => speakcrudes2("en-US"),
          // ),
          // ],
          // ),
          // ],
          // ),
          // skipped_meaning
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) بێ‌ڕێزانە و هەرزە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The film had a warning for crude language in some scenes."),
                    ExampleSentenceKurdish(
                        text:
                            "فیلمەکە هۆشدارییەکی بۆ بەکارهێنانی زمانی هەرزە لە هەندێک دیمەندا هەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrudes3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrudes3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) سادە و بەشێوەیەک کە زۆر درووست نییە بەڵام تێگەشتنێکی گشتگیر دەدات بە دەستەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "In crude terms, a heart attack is a plumbing problem in blood vessels around the heart."),
                    ExampleSentenceKurdish(
                        text:
                            "بە زمانێکی گشتگیر، جەڵدەی دڵ کێشەیەکی سیستەمییە ناردنە لە موولوولەکانی خوێندا لە دەوری دڵدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrudes4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrudes4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) سادە و بەشێوەیەک کە بە شارەزاییەوە ئامادە نەکراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The constructed a crude shelter from branches."),
                    ExampleSentenceKurdish(
                        text: "پەناگەیەکی سادەیان لە لقەکان درووستکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrudes5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrudes5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) نەوتی خاو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The country exported crude to other nations for refining."),
                    ExampleSentenceKurdish(
                        text:
                            "وڵاتەکە نەوتی خاوی بۆ وڵاتان دەنارد بۆ پاڵاوتن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrudes6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrudes6("en-US"),
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
- Adjective: crude (Derived forms: cruder, crudest)
1. Not carefully or expertly made (= rough)
"managed to make a crude splint"; "a crude cabin of logs with bark still on them";
 
2. Conspicuously and tastelessly indecent (= earthy, gross, vulgar, salty, coarse, ripe [informal])
"a crude joke"; "crude behaviour";
 
3. Belonging to an early stage of technical development; characterized by simplicity and (often) crudeness (= primitive, rude)
"the crude weapons and rude agricultural implements of early man";
 
4. Devoid of any qualifications, disguise or adornment (= blunt, stark, brute)
"the crude facts";
 
5. Not processed or subjected to analysis (= raw)
"only the crude vital statistics";
 
6. Not refined or processed (= unrefined, unprocessed)
"crude oil";

- Noun: crude (Derived forms: cruder, crudest)
1. A dark oil consisting mainly of hydrocarbons (= petroleum, crude oil, rock oil, fossil oil, oil, black gold [informal])
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
    videoId: 'https://youtu.be/XEZfGlyLQnA?t=',
    startSeconds: 380,
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
    videoId: 'https://youtu.be/APIvXUbye2c?t=',
    startSeconds: 169,
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
    videoId: 'https://youtu.be/qg2nGY1aqlg?t=',
    startSeconds: 1827,
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
    videoId: 'https://youtu.be/CjiKlLE3NuI?t=',
    startSeconds: 884,
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
    videoId: 'https://youtu.be/vS0TuIPoeBs?t=',
    startSeconds: 304,
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
    videoId: 'https://youtu.be/WBxqiUhadyY?t=',
    startSeconds: 69,
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
    videoId: 'https://youtu.be/CaOwcYLGTMo?t=',
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