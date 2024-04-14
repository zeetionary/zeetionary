import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycreation extends StatefulWidget {
  const EnglishEntrycreation({super.key});

  @override
  State<EnglishEntrycreation> createState() => _EnglishEntrycreationState();
}

class _EnglishEntrycreationState extends State<EnglishEntrycreation> {
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
    return const EntryTitle(word: "creation");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: creation");
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
    return const IPAofEnglish(text: "IpaUK: /kriˈeɪʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreation(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("creation"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcreation("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kriˈeɪʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreation(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("creation"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcreation("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreations1(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Job creation needs to be the top priority."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations2(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The reforms led to the creation of 220 jobs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations3(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had been with the company since its creation in 1989."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations4(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They recommended the creation of a new government agency to be responsible for the environment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations5(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cake was a delicious creation of sponge, cream and fruit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations6(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What an amazing creation you’re wearing!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations7(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need to consider how we care for all creation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations8(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcreations800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations9(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcreations900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations10(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcreations1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations11(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcreations1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations12(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcreations1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcreations13(String languageCode) async {
    // DOPSUM: CHANGE speakcreation
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcreations1300"); // DOPSUM: CHANGE TEXT
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
کوردی: ئافراندن، سازان، خوڵقاندن، ئافەرینشت، دروست‌کردن، سازاندن، دروست‌بوون، پێکهاتن، هێنانەدی، چێ‌کردن، پێکهێنان، ڕەخساندن،	مەخلووقات، ئافەریدەکان، دروس‌کراوەکان، جەهان، جیهان، گێتی، دنیا، بوون،	داهێنان، تازەگەری،	بەرهەم‌هێنان
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) درووستکردنی شتێکی تازە، یان شتێک کە پێشووتر بوونی نەبووە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Job creation needs to be the top priority."),
                    ExampleSentenceKurdish(
                        text: "ڕەخساندنی کار ئەولەویەتی سەرەکییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "creation", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcreations1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcreations1("en-US"),
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
                        text: "The reforms led to the creation of 220 jobs."),
                    ExampleSentenceKurdish(
                        text: "چاکسازییەکان بوون بەهۆی ڕەخساندنی ٢٢٠ کار."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcreations2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcreations2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "He had been with the company since its creation in 1989."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەشێک بوو لە کۆمپانیاکە لەوەتەی دامەزراندنی لە ١٩٨٩."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcreations3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcreations3("en-US"),
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
                                    "They recommended the creation of a new government agency to be responsible for the environment."),
                            ExampleSentenceKurdish(
                                text:
                                    "درووستکردنی دەستەیەکی تازەی حکومەتیان پێشنیار کرد کە بەرپرس بێت بۆ ژینگە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcreations4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcreations4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) شتێک کە کەسێک درووستی کردووە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The cake was a delicious creation of sponge, cream and fruit."),
                    ExampleSentenceKurdish(
                        text:
                            "کێکەکە چێ‌کردنێکی بەلەزەتی سپۆنج، کرێم، و میوە بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcreations5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcreations5("en-US"),
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
                            "What an amazing creation (= a very unusual and new piece of clothing) you’re wearing!"),
                    ExampleSentenceKurdish(
                        text: "چی درووستکراوێکی سەرسووڕهێنەرت پۆشیوە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcreations6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcreations6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) درووستکردنی جیهان لەلایەن خوداوە؛ جیهان و گیانلەبەرەکانی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We need to consider how we care for all creation."),
                    ExampleSentenceKurdish(
                        text:
                            "دەبێت بیر لەوە بکەینەوە کە چۆن گرنگی بە گێتی دەدەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcreations7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcreations7("en-US"),
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
- Noun: creation (Derived forms: creations)
1. The human act of creating )= creative activity
 
2. An artifact that has been brought into existence by someone
 
3. The event that occurred at the beginning of something (= conception)
"from its creation the plan was doomed to failure";

4. The act of starting something for the first time; introducing something new (= initiation, founding, foundation, institution, origination, innovation, introduction, instauration, debut, first appearance, launching, unveiling, entry)
 
5. Everything that exists anywhere (= universe, existence, world, cosmos, macrocosm)
"they study the evolution of the creation";

- Noun: Creation
1. (theology) God's act of bringing the universe into existence (= Genesis creation narrative)
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
    videoId: 'https://youtu.be/VACpBe5PZDU?t=',
    startSeconds: 571,
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
    videoId: 'https://youtu.be/KmL0zZg0Zyo?t=',
    startSeconds: 1217,
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
    videoId: 'https://youtu.be/KmL0zZg0Zyo?t=',
    startSeconds: 1218,
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
    videoId: 'https://youtu.be/bIKTHCFVttE?t=',
    startSeconds: 161,
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
    videoId: 'https://youtu.be/BrqpDoHF-7U?t=',
    startSeconds: 11,
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
    videoId: 'https://youtu.be/8HEfIJlcFbs?t=',
    startSeconds: 139,
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
    videoId: 'https://youtu.be/dqcSk-EDrRo?t=',
    startSeconds: 1674,
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