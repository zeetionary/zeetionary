import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefinable extends StatefulWidget {
  const EnglishEntrydefinable({super.key});

  @override
  State<EnglishEntrydefinable> createState() => _EnglishEntrydefinableState();
}

class _EnglishEntrydefinableState extends State<EnglishEntrydefinable> {
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
    return const EntryTitle(word: "definable");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: definable");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfaɪnəbl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefinable(String languageCode) async {
    // DOPSUM: CHANGE speakdefinable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("definable");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefinable("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfaɪnəbl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefinable(String languageCode) async {
    // DOPSUM: CHANGE speakdefinable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("definable");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefinable("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefinables1(String languageCode) async {
    // DOPSUM: CHANGE speakdefinable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Neither of those terms is easily definable.");
  }

  Future<void> speakdefinables2(String languageCode) async {
    // DOPSUM: CHANGE speakdefinable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your office must be a clearly definable space in which no personal activities take place.");
  }

  Future<void> speakdefinables3(String languageCode) async {
    // DOPSUM: CHANGE speakdefinable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is a mistake to see suffering as having a definable cause.");
  }

  Future<void> speakdefinables20(String languageCode) async {
    // DOPSUM: CHANGE speakdefinable
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your office must be a clearly definable space in which no personal activities take place.0");
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
کوردی: لەپێناسەھاتوو، دەناسێنرێ، (بەوردی) لێک‌دەدرێتەوە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بە واتایەکەوە کە دەکرێت بناسرێت"),
          SentencesRow(
            englishText: "Neither of those terms is easily definable.",
            kurdishText:
                "ھیچ یەک لەو دەستەواژانە بە ئاسانی پێناسە ناکرێت.", // definable
            onPressedBritish: () => speakdefinables1("en-GB"),
            onPressedAmerican: () => speakdefinables1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) کە دەکرێت باس بکرێت یان بە ئاسانی پیشان بدرێت"),
          SentencesRow(
            englishText:
                "Your office must be a clearly definable space in which no personal activities take place.",
            kurdishText:
                "ئۆفیسەکەت دەبێت شوێنێکی ئاسان ناسێنراو بێت کە ھیچ چالاکییەکی کەسی تێیدا ڕوونەدا.",
            onPressedBritish: () => speakdefinables2("en-GB"),
            onPressedAmerican: () => speakdefinables2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It is a mistake to see suffering as having a definable cause.",
            kurdishText:
                "ھەڵەیە کە ئازارکێشان بەوە ببینیت کە ھۆکاری ڕوونی ھەبێت.",
            onPressedBritish: () => speakdefinables3("en-GB"),
            onPressedAmerican: () => speakdefinables3("en-US"),
          ),
          // definables400"),
          // speakdefinables4
          // definables4("en-US"),
          // definables500"),
          // speakdefinables5
          // definables5("en-US"),
          // definables600"),
          // speakdefinables6
          // definables6("en-US"),
          // definables700"),
          // speakdefinables7
          // definables7("en-US"),
          // definables800"),
          // speakdefinables8
          // definables8("en-US"),
          // definables900"),
          // speakdefinables9
          // definables9("en-US"),
          // definables1000"),
          // speakdefinables10
          // definables10("en-US"),
          // definables1100"),
          // speakdefinables11
          // definables11("en-US"),
          // definables1200"),
          // speakdefinables12
          // definables12("en-US"),
          // definables1300"),
          // speakdefinables13
          // definables13("en-US"),
          // definables1400"),
          // speakdefinables14
          // definables14("en-US"),
          // definables1500"),
          // speakdefinables15
          // definables15("en-US"),
          // definables1600"),
          // speakdefinables16
          // definables16("en-US"),
          // definables1700"),
          // speakdefinables17
          // definables17("en-US"),
          // definables1800"),
          // speakdefinables18
          // definables18("en-US"),
          // definables1900"),
          // speakdefinables19
          // definables19("en-US"),
          // "Your office must be a clearly definable space in which no personal activities take place.0"),
          // speakdefinables20
          // definables20("en-US"),
          // definables2100"),
          // speakdefinables21
          // definables21("en-US"),
          // definables2200"),
          // speakdefinables22
          // definables22("en-US"),
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
- Adjective: definable 
1. Capable of being defined, limited, or explained
"definable terms"; "definable rules"
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

  final String _videoId = 'fn--IVarumw';
  final double _startSeconds = 1457;

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

  final String _videoId = '8UVUnUnWfHI';
  final double _startSeconds = 422;

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

  final String _videoId = 'WiJfGq-iyp0';
  final double _startSeconds = 4451;

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

  final String _videoId = 'sx71cd8aZ1g';
  final double _startSeconds = 800;

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

  final String _videoId = 'MXY6QCjxEWQ';
  final double _startSeconds = 9;

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

  final String _videoId = 'gPfriiHBBek';
  final double _startSeconds = 10968;

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

  final String _videoId = 'L3HkXO4HOEo';
  final double _startSeconds = 193;

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