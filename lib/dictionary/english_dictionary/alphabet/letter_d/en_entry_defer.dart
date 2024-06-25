import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefer extends StatefulWidget {
  const EnglishEntrydefer({super.key});

  @override
  State<EnglishEntrydefer> createState() => _EnglishEntrydeferState();
}

class _EnglishEntrydeferState extends State<EnglishEntrydefer> {
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
    return const EntryTitle(word: "defer");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defer");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfɜː(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefer(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defer");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefer("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfɜːr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefer(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defer");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefer("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefers1(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The department deferred the decision for six months.");
  }

  Future<void> speakdefers2(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had applied for deferred admission to college.");
  }

  Future<void> speakdefers3(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The decision has been deferred indefinitely.");
  }

  Future<void> speakdefers4(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We will defer to whatever the committee decides.");
  }

  Future<void> speakdefers5(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I defer to your judgment.");
  }

  Future<void> speakdefers6(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I have to defer to my boss on important decisions.");
  }

  Future<void> speakdefers20(String languageCode) async {
    // DOPSUM: CHANGE speakdefer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had applied for deferred admission to college.0");
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
کوردی: وەدوا خستن، پاش خستن، خۆ بەدەستەوە دان
"""),
          const DefinitionKurdish(
              text: "١. (کردار) دواخستنی شتێک تاوەکو کاتێکی دواتر"),
          SentencesRow(
            englishText: "The department deferred the decision for six months.",
            kurdishText: "بەشەکە بڕیارەکەی بۆ ھەفتەیەک دواخست.", // defer
            onPressedBritish: () => speakdefers1("en-GB"),
            onPressedAmerican: () => speakdefers1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She had applied for deferred admission to college.",
            kurdishText: "داوای دواخستنی چوونە کۆلێژی کردبوو.",
            onPressedBritish: () => speakdefers2("en-GB"),
            onPressedAmerican: () => speakdefers2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The decision has been deferred indefinitely.",
            kurdishText: "بڕیارەکە بۆ کاتێکی نادیار دواخراوە.",
            onPressedBritish: () => speakdefers3("en-GB"),
            onPressedAmerican: () => speakdefers3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) ڕازی بوون بە بڕیاری کەسێک یان بیرکردنەوەی چونکە ڕێزی دەگریت"),
          SentencesRow(
            englishText: "We will defer to whatever the committee decides.",
            kurdishText: "پابەند دەبین بەوەی لیژنەکە بڕیاری لەسەر دەدات.",
            onPressedBritish: () => speakdefers4("en-GB"),
            onPressedAmerican: () => speakdefers4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I defer to (= accept) your judgment.",
            kurdishText: "بڕیارت پەسەند دەکەم.",
            onPressedBritish: () => speakdefers5("en-GB"),
            onPressedAmerican: () => speakdefers5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I have to defer to my boss on important decisions.",
            kurdishText:
                "دەبێت قایل بم لەگەڵ بەڕێوەبەرەکەم لە بڕیارە گرنگەکاندا.",
            onPressedBritish: () => speakdefers6("en-GB"),
            onPressedAmerican: () => speakdefers6("en-US"),
          ),
          // defers700"),
          // speakdefers7
          // defers7("en-US"),
          // defers800"),
          // speakdefers8
          // defers8("en-US"),
          // defers900"),
          // speakdefers9
          // defers9("en-US"),
          // defers1000"),
          // speakdefers10
          // defers10("en-US"),
          // defers1100"),
          // speakdefers11
          // defers11("en-US"),
          // defers1200"),
          // speakdefers12
          // defers12("en-US"),
          // defers1300"),
          // speakdefers13
          // defers13("en-US"),
          // defers1400"),
          // speakdefers14
          // defers14("en-US"),
          // defers1500"),
          // speakdefers15
          // defers15("en-US"),
          // defers1600"),
          // speakdefers16
          // defers16("en-US"),
          // defers1700"),
          // speakdefers17
          // defers17("en-US"),
          // defers1800"),
          // speakdefers18
          // defers18("en-US"),
          // defers1900"),
          // speakdefers19
          // defers19("en-US"),
          // "She had applied for deferred admission to college.0"),
          // speakdefers20
          // defers20("en-US"),
          // defers2100"),
          // speakdefers21
          // defers21("en-US"),
          // defers2200"),
          // speakdefers22
          // defers22("en-US"),
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
- Verb: defer (derived forms: defers, deferring, deferred)
1. Hold back to a later time (= postpone, prorogue, hold over, put over, table [N. Amer], shelve, set back, remit, put off)
"let's defer the exam";
 
2. Yield to another's wish or opinion (= submit, bow[2], accede, give in)
"The government deferred to the military pressure";
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

  final String _videoId = 'nyVOi3X53bk';
  final double _startSeconds = 877;

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

  final String _videoId = '7Vm282YvOGw';
  final double _startSeconds = 1978;

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

  final String _videoId = 'bTYV7aFC6KE';
  final double _startSeconds = 607;

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

  final String _videoId = '_STJoxd9mxk';
  final double _startSeconds = 827;

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

  final String _videoId = 'cBpGq-vDr2Y';
  final double _startSeconds = 532;

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

  final String _videoId = 'ccin6oZfTyI';
  final double _startSeconds = 350;

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

  final String _videoId = 'pO-L9mo06CQ';
  final double _startSeconds = 317;

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