import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrutch extends StatefulWidget {
  const EnglishEntrycrutch({super.key});

  @override
  State<EnglishEntrycrutch> createState() => _EnglishEntrycrutchState();
}

class _EnglishEntrycrutchState extends State<EnglishEntrycrutch> {
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
    return const EntryTitle(word: "crutch");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crutch");
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
    return const IPAofEnglish(text: "IpaUK: /krʌtʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrutch(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crutch"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrutch("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krʌtʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrutch(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crutch"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrutch("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrutchs1(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She can only walk with crutches."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs2(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("After the accident I spent six months on crutches."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs3(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She uses her work as a psychological crutch."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs4(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("High interest rates are merely a crutch for the country’s ailing economy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs5(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs6(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs7(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs8(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs9(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs10(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs11(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs12(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrutchs13(String languageCode) async {
    // DOPSUM: CHANGE speakcrutch
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrutchs1300"); // DOPSUM: CHANGE TEXT
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
کوردی: شەقە، چێوشەقە، دارشەق، گۆچان،	پاڵپشت، پشت، پەنا، پشت‌وپەنا،	ناوگەڵ، گەڵ، ناولنگ، ناوڕان،	خشتەک
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) دارشەقێک کە لەژێر باڵتی دادەنێیت بۆ ئەوەی ڕێ بکەیت لە دوای ئەوەی لاقت یان پێت بریندار کردووە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She can only walk with crutches."),
                    ExampleSentenceKurdish(text: "تەنها بە دارشەق دەتوانێت ڕێ بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crutch", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrutchs1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrutchs1("en-US"),
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
          "After the accident I spent six months on crutches."),
          ExampleSentenceKurdish(
          text: "لە دوای ڕووداوەکە شەش مانگم بە دارشەقەوە بەسەربرد."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrutchs2("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrutchs2("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) کەسێک یان شتێک کە زۆرجار یارمەتی و پشتیوانیت پێ دەدات بەڵام وات لێ دەکات زۆر پشتی پێ ببەستیت"),
          Row(
          children: [
          const Expanded(
          child: Column(
          children: [
          ExampleSentenceEnglish(
          text:
          "She uses her work as a psychological crutch."),
          ExampleSentenceKurdish(
          text: "کارەکەی وەک پەنایەکی دەروونی بەکاردێنێت."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrutchs3("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrutchs3("en-US"),
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
          "High interest rates are merely a crutch for the country’s ailing economy."),
          ExampleSentenceKurdish(
          text: "بەرزی ئاستی سوو تەنها پاڵپشتییەکە بۆ ئابووری لاوازی وڵاتەکە."),
          ],
          ),
          ),
          const CustomSizedBoxForTTS(),
          Column(
          children: [
          CustomIconButtonBritish(
          onPressed: () => speakcrutchs4("en-GB"),
          ),
          CustomIconButtonAmerican(
          onPressed: () => speakcrutchs4("en-US"),
          ),
          ],
          ),
          ],
          ),
          const DividerDefinition(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DefinitionKurdishLink(
                text: "٣. بڕوانە لە crotch",
                links: [
                  LinkInfo(
                    start: 12,
                    end: 19,
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
                onTap: () {
                  Routemaster.of(context).push("/english-crutch/crotch");
                },
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
- Noun: crutch (Derived forms: crutches)
1. A wooden or metal staff that fits under the armpit and reaches to the ground; used by disabled person while walking
 
2. Anything that serves as an expedient
"he uses drugs as a psychological crutch"
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
    videoId: 'https://youtu.be/p3O6bKdPLbw?t=',
    startSeconds: 2793,
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
    videoId: 'https://youtu.be/cY4e0uvp7uI?t=',
    startSeconds: 939,
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
    videoId: 'https://youtu.be/LL_JCVWWaeA?t=',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/t5k7feqZUD0?t=',
    startSeconds: 510,
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
    videoId: 'https://youtu.be/U8ebSpLAO0U?t=',
    startSeconds: 204,
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
    videoId: 'https://youtu.be/bOR8c2z3sSk?t=',
    startSeconds: 2006,
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
    videoId: 'https://youtu.be/tIVoCh6Znfg?t=',
    startSeconds: 453,
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