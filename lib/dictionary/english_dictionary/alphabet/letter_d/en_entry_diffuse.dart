import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiffuse extends StatefulWidget {
  const EnglishEntrydiffuse({super.key});

  @override
  State<EnglishEntrydiffuse> createState() => _EnglishEntrydiffuseState();
}

class _EnglishEntrydiffuseState extends State<EnglishEntrydiffuse> {
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
    return const EntryTitle(word: "diffuse");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: diffuse");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfjuːs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiffuse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("diffuse");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiffuse("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfjuːs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiffuse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("diffuse");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiffuse("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiffuses1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The company has become large and diffuse.");
  }

  Future<void> speakdiffuses2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His diffuse style of writing filled pages with unnecessary details.");
  }

  Future<void> speakdiffuses3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Technologies diffuse rapidly.");
  }

  Future<void> speakdiffuses4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The problem is how to diffuse power without creating anarchy.");
  }

  Future<void> speakdiffuses5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Oxygen diffuses from the lungs into the bloodstream.");
  }

  Future<void> speakdiffuses6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The drop of red dye diffused slowly in the water.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: پەل‌ھاویشتوو، بڵاوەبوو، تەنیوە، داگرتوو،	(نووسراوە) درێژدادڕانە، دوورودرێژ،	پەل‌ھاویشتوو، بڵاوەبوو، تەنیوە، داگرتوو،	(فیزیک، ڕووناکی) بڵاوەبوو
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بڵاوبووەوە بە ناوچەیەکی زۆردا"),
          SentencesRow(
            englishText: "The company has become large and diffuse.",
            kurdishText: "کۆمپانیاکە گەورە و پەرش بووە.", // diffuse
            onPressedBritish: () => speakdiffuses1("en-GB"),
            onPressedAmerican: () => speakdiffuses1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) کە ڕوون و ئاسان نییە بۆ تێگەشتن"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "His diffuse style of writing filled pages with unnecessary details.",
            kurdishText:
                "شێوازی درێژدادڕانەی نووسینی پەڕەکانی پڕ دەکرد بە وردەکاریی ناپێویست.",
            onPressedBritish: () => speakdiffuses2("en-GB"),
            onPressedAmerican: () => speakdiffuses2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بڵاوکردنەوەی شتێک یان بڵاوبوونەوە بە ھەموو لایەکدا"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Technologies diffuse rapidly.",
            kurdishText: "تەکنەلۆژیا بەخێرایی بڵاودەبێتەوە.",
            onPressedBritish: () => speakdiffuses3("en-GB"),
            onPressedAmerican: () => speakdiffuses3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The problem is how to diffuse power without creating anarchy.",
            kurdishText:
                "کێشەکە ئەوەیە چۆن دەسەڵات دابەش بکرێت بەبێ درووستکردنی پاشاگەردانی.",
            onPressedBritish: () => speakdiffuses4("en-GB"),
            onPressedAmerican: () => speakdiffuses4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) واکردنی ئەوەی کە گاز یان شلە بڵاوبێتەوە بە ناو شتێک یان بە مادەی دەورووبەری بە تێکەڵبوون لەگەڵی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Oxygen diffuses from the lungs into the bloodstream.",
            kurdishText:
                "ئۆکسجین لە سینەکانەوە بۆ ناو سووڕی خوێن بڵاودەبێتەوە.",
            onPressedBritish: () => speakdiffuses5("en-GB"),
            onPressedAmerican: () => speakdiffuses5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The drop of red dye diffused slowly in the water.",
            kurdishText:
                "قەترە بۆیە سوورەکە بە ھێواشی بە ئاوەکەدا بڵاوبوویەوە.",
            onPressedBritish: () => speakdiffuses6("en-GB"),
            onPressedAmerican: () => speakdiffuses6("en-US"),
          ),
          // diffuses700"),
          // diffuses7("en-US"),
          // diffuses800"),
          // diffuses8("en-US"),
          // diffuses900"),
          // diffuses9("en-US"),
          // diffuses_1000"),
          // diffuses10("en-US"),
          // diffuses1100"),
          // diffuses11("en-US"),
          // diffuses1200"),
          // diffuses12("en-US"),
          // diffuses1300"),
          // diffuses13("en-US"),
          // diffuses1400"),
          // diffuses14("en-US"),
          // diffuses1500"),
          // diffuses15("en-US"),
          // diffuses1600"),
          // diffuses16("en-US"),
          // diffuses1700"),
          // diffuses17("en-US"),
          // diffuses1800"),
          // diffuses18("en-US"),
          // diffuses1900"),
          // diffuses19("en-US"),
          // diffuses_2000"),
          // diffuses20("en-US"),
          // diffuses2100"),
          // diffuses21("en-US"),
          // diffuses2200"),
          // diffuses22("en-US"),
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
- Adjective: diffuse 
1. (of light) transmitted from a broad light source or reflected (= soft, diffused)
 
2. Spread over a wide area, not concentrated in one place (= spread-out)
"a large diffuse organization";
 
3. Lacking conciseness
"a diffuse historical novel"

- Verb: diffuse (derived forms: diffused, diffuses, diffusing)
1. Move outward (= spread, spread out, fan out)
"The soldiers diffused";
 
2. Spread or diffuse through (= permeate, pervade, penetrate, interpenetrate, imbue, riddle)
"An atmosphere of distrust has diffused this administration";
 
3. Cause to become widely known (= circulate, circularize, circularise [Brit], distribute, disseminate, propagate, broadcast, spread, disperse, pass around)
"diffuse a rumour";
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 393;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 471;

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

  final String _videoId = 'pTysrwci0pU';
  final double _startSeconds = 1269;

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

  final String _videoId = 'SwQhKFMxmDY';
  final double _startSeconds = 2356;

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

  final String _videoId = 'ao2Jfm35XeE';
  final double _startSeconds = 943;

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

  final String _videoId = 'PZYWzsB_yfA';
  final double _startSeconds = 136;

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

  final String _videoId = 'knjliFs3gR8';
  final double _startSeconds = 319;

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