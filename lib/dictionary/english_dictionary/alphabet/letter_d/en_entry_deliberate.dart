import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeliberate extends StatefulWidget {
  const EnglishEntrydeliberate({super.key});

  @override
  State<EnglishEntrydeliberate> createState() => _EnglishEntrydeliberateState();
}

class _EnglishEntrydeliberateState extends State<EnglishEntrydeliberate> {
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
    return const EntryTitle(word: "deliberate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deliberate");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈlɪbərət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliberate(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deliberate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeliberate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈlɪbərət/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliberate(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deliberate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeliberate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliberates1(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The speech was a deliberate attempt to embarrass the government.");
  }

  Future<void> speakdeliberates2(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The emphasis on Europe was quite deliberate.");
  }

  Future<void> speakdeliberates3(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She spoke in a slow and deliberate way.");
  }

  Future<void> speakdeliberates4(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sergeant deliberated for a moment and then agreed to unlock the door.");
  }

  Future<void> speakdeliberates5(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They deliberated (on) whether to continue with the talks.");
  }

  Future<void> speakdeliberates6(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Customers sometimes deliberate over a purchase for weeks.");
  }

  Future<void> speakdeliberates20(String languageCode) async {
    // DOPSUM: CHANGE speakdeliberate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The emphasis on Europe was quite deliberate.0");
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
کوردی: بەئانقەست، ئاگادارانە، لەرووی مەبەستەوە، بەمەبەست، ھەڵسەنگێنراو، لێکەوەدراو، بێ‌پەلە(پەل)،	لەسەرەخۆ، مەند، ھێدی، ھێمن
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بە ئەنقەست نەک بەڕێکەوت"),
          SentencesRow(
            englishText:
                "The speech was a deliberate attempt to embarrass the government.",
            kurdishText:
                "وتارەکە ھەوڵێکی بە ئەنقەست بوو بۆ شەرمەزارکردنی حکومەت.", // deliberate
            onPressedBritish: () => speakdeliberates1("en-GB"),
            onPressedAmerican: () => speakdeliberates1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "The emphasis on Europe was quite deliberate.",
            kurdishText: "سەرنجدانان لەسەر ئەورووپا تەواو بە ئەنقەست بوو.",
            onPressedBritish: () => speakdeliberates2("en-GB"),
            onPressedAmerican: () => speakdeliberates2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) بەھێواشی و وریایی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She spoke in a slow and deliberate way.",
            kurdishText: "بە ھێواشی و لەسەرەخۆیی قسەی کرد.",
            onPressedBritish: () => speakdeliberates3("en-GB"),
            onPressedAmerican: () => speakdeliberates3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) بیرکردنەوە لەسەر شتێک زۆر بە وریاییەوە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The sergeant deliberated for a moment and then agreed to unlock the door.",
            kurdishText:
                "ئەفسەرەکە بۆ کەمێک بیری کردەوە و دواتر ڕازی بوو کە دەرگاکە بکاتەوە.",
            onPressedBritish: () => speakdeliberates4("en-GB"),
            onPressedAmerican: () => speakdeliberates4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They deliberated (on) whether to continue with the talks.",
            kurdishText:
                "بیریان لەوە کردەوە کە ئایا بەردەوامی بە گفتوگۆکان بدەن.",
            onPressedBritish: () => speakdeliberates5("en-GB"),
            onPressedAmerican: () => speakdeliberates5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Customers sometimes deliberate over a purchase for weeks.",
            kurdishText:
                "کڕیاران ھەندێک جار بۆ چەندین ھەفتە بیر لە کڕینێک دەکەنەوە.",
            onPressedBritish: () => speakdeliberates6("en-GB"),
            onPressedAmerican: () => speakdeliberates6("en-US"),
          ),
          // deliberates700"),
          // speakdeliberates7
          // deliberates7("en-US"),
          // deliberates800"),
          // speakdeliberates8
          // deliberates8("en-US"),
          // deliberates900"),
          // speakdeliberates9
          // deliberates9("en-US"),
          // deliberates1000"),
          // speakdeliberates10
          // deliberates10("en-US"),
          // deliberates1100"),
          // speakdeliberates11
          // deliberates11("en-US"),
          // deliberates1200"),
          // speakdeliberates12
          // deliberates12("en-US"),
          // deliberates1300"),
          // speakdeliberates13
          // deliberates13("en-US"),
          // deliberates1400"),
          // speakdeliberates14
          // deliberates14("en-US"),
          // deliberates1500"),
          // speakdeliberates15
          // deliberates15("en-US"),
          // deliberates1600"),
          // speakdeliberates16
          // deliberates16("en-US"),
          // deliberates1700"),
          // speakdeliberates17
          // deliberates17("en-US"),
          // deliberates1800"),
          // speakdeliberates18
          // deliberates18("en-US"),
          // deliberates1900"),
          // speakdeliberates19
          // deliberates19("en-US"),
          // "The emphasis on Europe was quite deliberate.0"),
          // speakdeliberates20
          // deliberates20("en-US"),
          // deliberates2100"),
          // speakdeliberates21
          // deliberates21("en-US"),
          // deliberates2200"),
          // speakdeliberates22
          // deliberates22("en-US"),
        ],
      ),
    );
  }
}

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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Adjective: deliberate
1. Characterized by conscious design or purpose (= intentional, knowing)
"a deliberate attempt to provoke a response";
 
2. Carefully thought out in advance (= calculated, measured)
"he made a deliberate decision not to respond negatively";
 
3. Unhurried and with care and dignity (= careful, measured)
"with all deliberate speed";

- Verb: deliberate (derived forms: deliberates, deliberating, deliberated)
1. Think about carefully; weigh (= consider, debate, moot, turn over)
"They deliberated the possibility of a strike";
 
2. Discuss the pros and cons of an issue (= debate)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'Pck5JcnkYYs';
  final double _startSeconds = 1889;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 5813;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'U38i32CpYow';
  final double _startSeconds = 1216;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'OhV3wb_FVEE';
  final double _startSeconds = 1558;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'fHsa9DqmId8';
  final double _startSeconds = 523;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'NQcwgZbgLj4';
  final double _startSeconds = 1687;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'LJNtfyq3TDE';
  final double _startSeconds = 811;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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