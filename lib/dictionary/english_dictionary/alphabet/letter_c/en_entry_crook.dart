import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrook extends StatefulWidget {
  const EnglishEntrycrook({super.key});

  @override
  State<EnglishEntrycrook> createState() => _EnglishEntrycrookState();
}

class _EnglishEntrycrookState extends State<EnglishEntrycrook> {
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
    return const EntryTitle(word: "crook");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crook");
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
    return const IPAofEnglish(text: "IpaUK: /krʊk/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrook(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crook"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrook("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krʊk/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrook(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crook"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrook("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrooks1(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("That salesman is a real crook."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks2(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These politicians are just a bunch of crooks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks3(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She sat back in the armchair and settled the baby in the crook of her arm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks4(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The shepherd used his crook to guide the sheep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks5(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She winked and crooked a finger at him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks6(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I’m feeling a bit crook."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks7(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It can be hard to stay positive when times are crook."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks8(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everybody thinks horse racing is crook anyway."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks9(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrooks900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks10(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrooks1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks11(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrooks1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks12(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrooks1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrooks13(String languageCode) async {
    // DOPSUM: CHANGE speakcrook
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrooks1300"); // DOPSUM: CHANGE TEXT
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
کوردی: گۆچان، داردەست،	پێچ، لاری، دانووشتاوی، قەد، خواری، کەچایی، کەچی، خواروخێچی، چەماوی،	قولاپ،	دز، چەتە،	نەخۆش،	تاوان‌کار، گوناەکار،	دەسبڕ
"""),
          const DefinitionKurdish(text: "١. (ناو) کەسێکی فێڵباز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "That salesman is a real crook."),
                    ExampleSentenceKurdish(
                        text: "فرۆشیارەکە تەڵەکەبازێکی تەواوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crook", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks1("en-US"),
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
                        text: "These politicians are just a bunch of crooks."),
                    ExampleSentenceKurdish(
                        text: "ئەم سیاسییانە تەنها چەند کەسێکی تەڵەکەبازن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) بەشی ناوەوەی ئانیشک (ئەو جومگەیەی کە بازوو و باسک پێکەوە دەبەستێتەوە)"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She sat back in the armchair and settled the baby in the crook of her arm."),
                    ExampleSentenceKurdish(
                        text:
                            "لەسەر کورسییەکە دانیشت و منداڵەکەی لە بەشی ناوەوەی ئانیشکی دانا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) گۆچانێکی کە شوانەکان بۆ گرتنی مەڕ و ماڵاتەکەیان بەکاریدێنن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The shepherd used his crook to guide the sheep."),
                    ExampleSentenceKurdish(
                        text:
                            "شوانەکە گۆچانەکەی بەکارهێنا بۆ ڕێبەری کردنی مەڕەکانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) چەماندنەوەی پەنجە یان باڵ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She winked and crooked a finger at him."),
                    ExampleSentenceKurdish(
                        text:
                            "چاوی لێ داگرت و بە پەنجەی گازی لێکرد (بانگی کرد)."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) نەخۆش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I’m feeling a bit crook."),
                    ExampleSentenceKurdish(text: "هەست بە کەمێک نەخۆشی دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) خراپ یان ناخۆش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It can be hard to stay positive when times are crook."),
                    ExampleSentenceKurdish(
                        text:
                            "دەکرێت سەخت بێت بە ئەرێنییانە بمێنیتەوە لە ساتە ناخۆشەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵناو) فێڵباز؛ نایاسایی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Everybody thinks horse racing is crook anyway."),
                    ExampleSentenceKurdish(
                        text:
                            "هەرچۆنێک بێت هەمووان وابیردەکەنەوە پێشبڕکێی ئەسپسواری خراپە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrooks8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrooks8("en-US"),
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
- Noun: crook (Derived forms: crooks)
1. [informal] Someone who has committed a crime or has been legally convicted of a crime (= criminal, felon, outlaw, malefactor [formal], crim [Brit, informal])
 
2. A long staff with one end being hook shaped (= shepherd's crook)
 
3. A circular segment of a curve (= bend, twist, turn)
"a crook in the path";

- Verb: crook (Derived forms: crooking, crooks, crooked)
1. Bend or cause to bend (= curve)
"He crooked his index finger";

- Adjective: crook 
Usage: Austral, NZ, informal
1. Somewhat ill, feeling or being in bad health (= ailing, indisposed, peaked, poorly, sickly, unwell, under the weather [informal], seedy [archaic], off-colour [Brit, informal], out of sorts [informal], grotty [Brit, informal])
"my poor crook grandmother";
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
    videoId: 'https://youtu.be/dtp6b76pMak?t=',
    startSeconds: 2105,
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
    videoId: 'https://youtu.be/oHSehKtDyoI?t=',
    startSeconds: 1123,
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
    videoId: 'https://youtu.be/L878W_WrTx8?t=',
    startSeconds: 587,
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
    videoId: 'https://youtu.be/czzktlf07qw?t=',
    startSeconds: 159,
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
    videoId: 'https://youtu.be/UYAnkdhe9KE?t=',
    startSeconds: 388,
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
    videoId: 'https://youtu.be/JPg-L5kJuOc?t=',
    startSeconds: 131,
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
    videoId: 'https://youtu.be/lMpGRNv0Mm4?t=',
    startSeconds: 375,
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