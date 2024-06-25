import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefile extends StatefulWidget {
  const EnglishEntrydefile({super.key});

  @override
  State<EnglishEntrydefile> createState() => _EnglishEntrydefileState();
}

class _EnglishEntrydefileState extends State<EnglishEntrydefile> {
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
    return const EntryTitle(word: "defile");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defile");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfaɪl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefile(String languageCode) async {
    // DOPSUM: CHANGE speakdefile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defile");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefile("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfaɪl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefile(String languageCode) async {
    // DOPSUM: CHANGE speakdefile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defile");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefile("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefiles1(String languageCode) async {
    // DOPSUM: CHANGE speakdefile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Many victims of burglary feel their homes have been defiled.");
  }

  Future<void> speakdefiles2(String languageCode) async {
    // DOPSUM: CHANGE speakdefile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The soldiers deliberately defiled all the holy places.");
  }

  Future<void> speakdefiles3(String languageCode) async {
    // DOPSUM: CHANGE speakdefile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The hikers followed a rocky defile that wound through the mountains.");
  }

  Future<void> speakdefiles20(String languageCode) async {
    // DOPSUM: CHANGE speakdefile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The soldiers deliberately defiled all the holy places.0");
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
کوردی: گەروو، تەنگ، تەنگەڵان، باریکەڵان، دەربەند، دەرتەنگ،	ڕێگا یان دەربەندی ڕیزڕەو، ڕیزەڕێ
"""),
          const DefinitionKurdish(
              text: "١. (کردار) پیسکردنی شتێک، بەتایبەتی شتێکی گرنگ یان پیرۆز"),
          SentencesRow(
            englishText:
                "Many victims of burglary feel their homes have been defiled.",
            kurdishText:
                "زۆرێک لە قوربانیانی دزی وا ھەست ماڵەکانیان پیسکراون.", // defile
            onPressedBritish: () => speakdefiles1("en-GB"),
            onPressedAmerican: () => speakdefiles1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The soldiers deliberately defiled all the holy places.",
            kurdishText:
                "سەربازەکان بە ئەنقەست سوکایەتییان بر شوێنە پیرۆزەکانیان دەکرد.",
            onPressedBritish: () => speakdefiles2("en-GB"),
            onPressedAmerican: () => speakdefiles2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) ڕێگایەکی تەسک بە نێوان سوو چیادا"),
          SentencesRow(
            englishText:
                "The hikers followed a rocky defile that wound through the mountains.",
            kurdishText:
                "شاخەوانان بە تەنگەڵانێکی بەرداویدا چوون کە بە دەوری شاخەکاندا دەچوو.",
            onPressedBritish: () => speakdefiles3("en-GB"),
            onPressedAmerican: () => speakdefiles3("en-US"),
          ),
          // defiles400"),
          // speakdefiles4
          // defiles4("en-US"),
          // defiles500"),
          // speakdefiles5
          // defiles5("en-US"),
          // defiles600"),
          // speakdefiles6
          // defiles6("en-US"),
          // defiles700"),
          // speakdefiles7
          // defiles7("en-US"),
          // defiles800"),
          // speakdefiles8
          // defiles8("en-US"),
          // defiles900"),
          // speakdefiles9
          // defiles9("en-US"),
          // defiles1000"),
          // speakdefiles10
          // defiles10("en-US"),
          // defiles1100"),
          // speakdefiles11
          // defiles11("en-US"),
          // defiles1200"),
          // speakdefiles12
          // defiles12("en-US"),
          // defiles1300"),
          // speakdefiles13
          // defiles13("en-US"),
          // defiles1400"),
          // speakdefiles14
          // defiles14("en-US"),
          // defiles1500"),
          // speakdefiles15
          // defiles15("en-US"),
          // defiles1600"),
          // speakdefiles16
          // defiles16("en-US"),
          // defiles1700"),
          // speakdefiles17
          // defiles17("en-US"),
          // defiles1800"),
          // speakdefiles18
          // defiles18("en-US"),
          // defiles1900"),
          // speakdefiles19
          // defiles19("en-US"),
          // "The soldiers deliberately defiled all the holy places.0"),
          // speakdefiles20
          // defiles20("en-US"),
          // defiles2100"),
          // speakdefiles21
          // defiles21("en-US"),
          // defiles2200"),
          // speakdefiles22
          // defiles22("en-US"),
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
- Verb: defile (derived forms: defiled, defiles, defiling)
1. Spoil, spot, stain, or pollute (= foul, befoul, maculate [literary])
"The townspeople defiled the river by emptying raw sewage into it";
 
2. Disregard the sacred character of a place or language (= desecrate, profane, outrage, violate)
"defile a cemetery";
 
3. (of someone's image or good reputation) damage, place under suspicion or cast doubt upon (= sully, corrupt, taint, cloud, tarnish, soil, stain)
"defile someone's reputation";
 
4. Make dirty or spotty, as by exposure to air (= tarnish, stain, maculate [literary], sully, soil)
"The silver was defiled by the long exposure to the air";

- Noun: defile (derived forms: defiles)
1. A narrow pass (especially one between mountains) (= gorge)
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

  final String _videoId = 'LJ0Hfc8hvpE';
  final double _startSeconds = 6;

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

  final String _videoId = 'qz3J_hGZqrU';
  final double _startSeconds = 0;

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

  final String _videoId = 'w1iGQHQGA2o';
  final double _startSeconds = 595;

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

  final String _videoId = 'GgtMz6ZVFE0';
  final double _startSeconds = 241;

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

  final String _videoId = '67cWZ8c2Tbw';
  final double _startSeconds = 200;

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

  final String _videoId = 'gpS5BecjlD8';
  final double _startSeconds = 3041;

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

  final String _videoId = '4IBegL_V6AA';
  final double _startSeconds = 1049;

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