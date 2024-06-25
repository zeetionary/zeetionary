import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydemocracy extends StatefulWidget {
  const EnglishEntrydemocracy({super.key});

  @override
  State<EnglishEntrydemocracy> createState() => _EnglishEntrydemocracyState();
}

class _EnglishEntrydemocracyState extends State<EnglishEntrydemocracy> {
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
    return const EntryTitle(word: "democracy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: democracy");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈmɒkrəsi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemocracy(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("democracy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdemocracy("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈmɒkrəsi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemocracy(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("democracy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdemocracy("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemocracys1(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government has promised to uphold the principles of democracy.");
  }

  Future<void> speakdemocracys2(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The early 1990s saw the spread of democracy in Eastern Europe.");
  }

  Future<void> speakdemocracys3(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I thought we were supposed to be living in a democracy.");
  }

  Future<void> speakdemocracys4(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We live in a multi-party democracy.");
  }

  Future<void> speakdemocracys20(String languageCode) async {
    // DOPSUM: CHANGE speakdemocracy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The early 1990s saw the spread of democracy in Eastern Europe.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی:
// """),
          const DefinitionKurdish(
              text:
                  "١. (ناو) سیستەمێکی حکومڕانی کە تێیدا خەڵکی دەنگ دەدەن بۆ ھەڵبژاردنی نوێنەرەکانیان"),
          SentencesRow(
            englishText:
                "The government has promised to uphold the principles of democracy.",
            kurdishText:
                "حکومەت بەڵێنی داوە ڕێز لە بنچینەکانی دیموکراسی بگرێت.", // democracy
            onPressedBritish: () => speakdemocracys1("en-GB"),
            onPressedAmerican: () => speakdemocracys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The early 1990s saw the spread of democracy in Eastern Europe.",
            kurdishText:
                "سەرەتای ١٩٩٠ ـەکان بڵاوبوونەوەی دیموکراسییان بە ڕۆژھەڵاتی ئەورووپادا بینی.",
            onPressedBritish: () => speakdemocracys2("en-GB"),
            onPressedAmerican: () => speakdemocracys2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) وڵاتێک کە سیستەمێکی حکومڕانیی دیموکراسی ھەیە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I thought we were supposed to be living in a democracy.",
            kurdishText: "وام بیردەکردەوە وابڕیاربوو لە دیموکراسییەکدا بژین.",
            onPressedBritish: () => speakdemocracys3("en-GB"),
            onPressedAmerican: () => speakdemocracys3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We live in a multi-party democracy.",
            kurdishText: "لە دیموکراسییەکی فرە پارتدا دەژین.",
            onPressedBritish: () => speakdemocracys4("en-GB"),
            onPressedAmerican: () => speakdemocracys4("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٣. (ناو) مامەڵەی دادپەروەرانە و یەکسان لە دامەزراوەیەکدا بەشێوەیەک کە ھەموان بەژداربن لە بڕیارداندا"),
          // // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // democracys500"),
          // speakdemocracys5
          // democracys5("en-US"),
          // democracys600"),
          // speakdemocracys6
          // democracys6("en-US"),
          // democracys700"),
          // speakdemocracys7
          // democracys7("en-US"),
          // democracys800"),
          // speakdemocracys8
          // democracys8("en-US"),
          // democracys900"),
          // speakdemocracys9
          // democracys9("en-US"),
          // democracys1000"),
          // speakdemocracys10
          // democracys10("en-US"),
          // democracys1100"),
          // speakdemocracys11
          // democracys11("en-US"),
          // democracys1200"),
          // speakdemocracys12
          // democracys12("en-US"),
          // democracys1300"),
          // speakdemocracys13
          // democracys13("en-US"),
          // democracys1400"),
          // speakdemocracys14
          // democracys14("en-US"),
          // democracys1500"),
          // speakdemocracys15
          // democracys15("en-US"),
          // democracys1600"),
          // speakdemocracys16
          // democracys16("en-US"),
          // democracys1700"),
          // speakdemocracys17
          // democracys17("en-US"),
          // democracys1800"),
          // speakdemocracys18
          // democracys18("en-US"),
          // democracys1900"),
          // speakdemocracys19
          // democracys19("en-US"),
          // "The early 1990s saw the spread of democracy in Eastern Europe.0"),
          // speakdemocracys20
          // democracys20("en-US"),
          // democracys2100"),
          // speakdemocracys21
          // democracys21("en-US"),
          // democracys2200"),
          // speakdemocracys22
          // democracys22("en-US"),
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
- Noun: democracy (derived forms: democracies)
1. A political system ruled by the people, either directly or through elected representatives
 
2. The doctrine that the numerical majority of an organized group can make decisions binding on the whole group (= majority rule)
 
3. A state under the direct or representative rule of its people
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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 142;

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

  final String _videoId = 'DHLRj1LaPiQ';
  final double _startSeconds = 1412;

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

  final String _videoId = 'LJNtfyq3TDE';
  final double _startSeconds = 576;

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

  final String _videoId = 'H7Quhnm-Z8A';
  final double _startSeconds = 614;

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

  final String _videoId = 'uijxor59CXc';
  final double _startSeconds = 50;

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

  final String _videoId = 'z56j06plUgs';
  final double _startSeconds = 33;

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

  final String _videoId = 'vGQQbulRUjY';
  final double _startSeconds = 340;

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
