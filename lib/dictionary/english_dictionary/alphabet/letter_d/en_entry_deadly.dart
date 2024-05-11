import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydeadly extends StatefulWidget {
  const EnglishEntrydeadly({super.key});

  @override
  State<EnglishEntrydeadly> createState() => _EnglishEntrydeadlyState();
}

class _EnglishEntrydeadlyState extends State<EnglishEntrydeadly> {
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
    return const EntryTitle(word: "deadly");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deadly");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdedli/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeadly(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deadly"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeadly("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdedli/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeadly(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deadly"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeadly("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeadlys1(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was charged with possession of a deadly weapon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys2(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cobra is one of the world's deadliest snakes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys3(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The terrorists have chosen to play a deadly game with the civilian population."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys4(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We sat in deadly silence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys5(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are deadly enemies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys6(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The missile found its target with deadly accuracy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys7(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His aim is deadly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys8(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The man possessed an absolutely deadly charm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys9(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The lecture was absolutely deadly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys10(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I thought she was joking but she was deadly serious."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys11(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeadlys1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys12(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeadlys1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeadlys13(String languageCode) async {
    // DOPSUM: CHANGE speakdeadly
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeadlys1300"); // DOPSUM: CHANGE TEXT
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
کوردی: کوشندە، مەرگاوی، قڕتێخەر، تیابەر، مەرگ‌بار،	(دوژمنایەتی) خوێنی، قەستەسەر، ئاشتەوەنەبوو، قیناوی، ڕقاوی، توندوتیژ،	کاریگەر، پرباندۆر، کارا،	وەکوو مردوو، مردووئاسا،	ماندووکەر، وەڕەس‌کەر، ناخۆش،	یەکجار،	(گوناهـ) گەورە، یەکجار، وەکوو مردوو
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) کوشندە؛ کە مردنی لێدەکەوێتەوە ئان ئەگەری هەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was charged with possession of a deadly weapon."),
                    ExampleSentenceKurdish(
                        text: "تاوانبارکرا بە هەڵگرتنی چەکی کوشندە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "deadly", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys1("en-US"),
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
                            "The cobra is one of the world's deadliest snakes."),
                    ExampleSentenceKurdish(
                        text:
                            "کوبرا یەکێکە لە هەرە کوشندەترین مارەکانی جیهان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The terrorists have chosen to play a deadly game with the civilian population."),
                    ExampleSentenceKurdish(
                        text:
                            "تیرۆریستەکان بڕیاریان داوە یارییەکی کوشندە لەگەڵ دانیشتووانە مەدەنییەکە بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) بە ئاستێکی زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "We sat in deadly silence."),
                    ExampleSentenceKurdish(
                        text: "لە بێ دەنگییەکی تەواودا دانیشتین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys4("en-US"),
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
                            "They are deadly enemies (= are full of hatred for each other)."),
                    ExampleSentenceKurdish(text: "دووژمنی سەرسەختن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys5("en-US"),
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
                            "The missile found its target with deadly accuracy."),
                    ExampleSentenceKurdish(
                        text: "مووشەکەکە گەشت ئامانجەکەی بە وردیی تەواوەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) تەواو کاریگەر؛ بەشێوەیەک کە بەرگری بەرامبەری ناکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "His aim is deadly (= so accurate that he can kill easily)."),
                    ExampleSentenceKurdish(text: "ئامانجەکەی کوشندەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys7("en-US"),
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
                        text: "The man possessed an absolutely deadly charm."),
                    ExampleSentenceKurdish(
                        text: "پیاوەکە خاوەنی جوانییەکی تەواو بێ هاوتا بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) زۆر بێزارکەر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The lecture was absolutely deadly."),
                    ExampleSentenceKurdish(text: "وانەکە تەواو بێزارکەر بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵکار) تا ئاستێکی زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I thought she was joking but she was deadly serious."),
                    ExampleSentenceKurdish(
                        text:
                            "وام بیرکردەوە کە گاڵتە دەکات بەڵام تەواو جدی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeadlys10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeadlys10("en-US"),
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
- Adjective: deadly (Derived forms: deadliest, deadlier)
1. Causing or capable of causing death (= deathly, mortal)
"a deadly enemy";
 
2. Of an instrument of certain death (= lethal)
"deadly poisons";
 
3. Extremely poisonous or injurious; producing venom (= venomous, virulent)
"deadly snakes";
 
4. (theology) involving loss of divine grace or spiritual death (= mortal)
"the seven deadly sins";
 
5. Exceedingly harmful (= baneful, pernicious, pestilent)
 
6. (of a disease) having a rapid course and violent effect
 
7. [informal] So lacking in interest as to cause mental weariness (= boring, deadening, dull, ho-hum [informal], irksome, slow, tedious, tiresome, wearisome, unamusing, draggy [informal], mind-numbing)

- Adverb: deadly 
1. As if dead (= lifelessly)
 
2. (used as intensives) excessively (= madly, insanely, deucedly, devilishly)
"deadly dull"; "deadly earnest"; 
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
    videoId: 'https://youtu.be/fZJGTevM3QI?t=',
    startSeconds: 21,
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
    videoId: 'https://youtu.be/wir7jmefyec?t=',
    startSeconds: 126,
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
    videoId: 'https://youtu.be/HgbxUMx3JWA?t=',
    startSeconds: 206,
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
    videoId: 'https://youtu.be/Gv4Af83KFrE?t=',
    startSeconds: 1146,
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
    videoId: 'https://youtu.be/NeZ4yXyzUG0?t=',
    startSeconds: 63,
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
    videoId: 'https://youtu.be/lsbcN9-jU1Y?t=',
    startSeconds: 1512,
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
    videoId: 'https://youtu.be/Xzv84ZdtlE0?t=',
    startSeconds: 285,
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