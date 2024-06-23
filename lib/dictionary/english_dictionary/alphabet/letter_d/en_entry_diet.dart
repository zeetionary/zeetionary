import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiet extends StatefulWidget {
  const EnglishEntrydiet({super.key});

  @override
  State<EnglishEntrydiet> createState() => _EnglishEntrydietState();
}

class _EnglishEntrydietState extends State<EnglishEntrydiet> {
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
    return const EntryTitle(word: "diet");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: diet");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdaɪət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiet(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("diet");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiet("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdaɪət/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiet(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("diet");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiet("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiets1(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I loved the Japanese diet of rice, vegetables and fish.");
  }

  Future<void> speakdiets2(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The traditional Mediterranean diet is fairly high in fat.");
  }

  Future<void> speakdiets3(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is important to eat a balanced diet.");
  }

  Future<void> speakdiets4(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was told to change her diet and quit smoking.");
  }

  Future<void> speakdiets5(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The animal's diet consists mainly of grasses.");
  }

  Future<void> speakdiets6(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He followed a strict low-fat diet.");
  }

  Future<void> speakdiets7(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I decided to go on a diet before my holiday.");
  }

  Future<void> speakdiets8(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is trying to lose weight through diet and exercise.");
  }

  Future<void> speakdiets9(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Children today are brought up on a diet of video games and TV on demand.");
  }

  Future<void> speakdiets10(String languageCode) async {
    // DOPSUM: CHANGE speakdiet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's always dieting but she never seems to lose any weight.");
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
کوردی: نان، چێشت، خۆراک (ی ڕۆژانە)،	پارێز، خۆراکی تایبەتی،	زۆری، زەبەندی، لە ئەنداز (پێویست) بەدەر
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ئەو خواردن و خواردنەوانەی کە بەردەوام دەیانخۆیت"),
          SentencesRow(
            englishText:
                "I loved the Japanese diet of rice, vegetables and fish.",
            kurdishText:
                "حەزم بە خۆراکی ژاپۆنی برنج، سەوزە و ماسی بوو.", // diet
            onPressedBritish: () => speakdiets1("en-GB"),
            onPressedAmerican: () => speakdiets1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The traditional Mediterranean diet is fairly high in fat.",
            kurdishText:
                "خواردنی باوی ناوچەی دەریای ناوەڕاست تا ڕادەیەک بەرزە لە چەوری.",
            onPressedBritish: () => speakdiets2("en-GB"),
            onPressedAmerican: () => speakdiets2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It is important to eat a balanced diet.",
            kurdishText: "گرنگە کە سیستەمێکی خۆراکی ھاوسەنگت ھەبێت.",
            onPressedBritish: () => speakdiets3("en-GB"),
            onPressedAmerican: () => speakdiets3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was told to change her diet and quit smoking.",
            kurdishText:
                "پێی گوترا جۆری خۆراکی بگۆڕێت و واز لە جگەرەکێشان بھێنێت.",
            onPressedBritish: () => speakdiets4("en-GB"),
            onPressedAmerican: () => speakdiets4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The animal's diet consists mainly of grasses.",
            kurdishText:
                "خواردنی ڕۆژانەی ئاژەڵەکە بەشێوەیەکی گشتی پشت دەبەستێت بە گژووگیا.",
            onPressedBritish: () => speakdiets5("en-GB"),
            onPressedAmerican: () => speakdiets5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) کۆمەڵێکی سنووردار لە خواردن کە دەیانخۆیت بۆ ھۆکاری تەندرووستی یان کێش دابەزاندن"),
          SentencesRow(
            englishText: "He followed a strict low-fat diet.",
            kurdishText: "پابەندی پارێزێکی کەم چەوری توند بوو.",
            onPressedBritish: () => speakdiets6("en-GB"),
            onPressedAmerican: () => speakdiets6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I decided to go on a diet (= to lose weight) before my holiday.",
            kurdishText: "بڕیارمدا پێش پشووەکەم دەست بە پارێزێک بکەم.",
            onPressedBritish: () => speakdiets7("en-GB"),
            onPressedAmerican: () => speakdiets7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She is trying to lose weight through diet and exercise.",
            kurdishText: "ھەوڵ دەدات کێش دابەزێنێت بە پارێز و ڕاھێنان.",
            onPressedBritish: () => speakdiets8("en-GB"),
            onPressedAmerican: () => speakdiets8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ڕێژەیەکی زۆر لە ھەندێک چالاکیی سنووردار"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Children today are brought up on a diet of video games and TV on demand.",
            kurdishText:
                "ئەم سەردەمە منداڵان بە زەبەندییەکی زۆر لە یارییە ڤیدیۆییەکان و تەکەفیزیۆن لە بەردەستیان گەورە دەکرێن.",
            onPressedBritish: () => speakdiets9("en-GB"),
            onPressedAmerican: () => speakdiets9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) دەسکردن بە پارێز"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "She's always dieting but she never seems to lose any weight.",
            kurdishText:
                "ھەمیشە پارێز دەکات بەڵام ھەرگیز ھیچ کێش لەدەست نادات.",
            onPressedBritish: () => speakdiets10("en-GB"),
            onPressedAmerican: () => speakdiets10("en-US"),
          ),
          // diets1100"),
          // speakdiets11
          // diets11
          // diets1200"),
          // speakdiets12
          // diets12
          // diets1300"),
          // speakdiets13
          // diets13
          // diets1400"),
          // speakdiets14
          // diets14
          // diets1500"),
          // speakdiets15
          // diets15
          // diets1600"),
          // speakdiets16
          // diets16
          // diets1700"),
          // speakdiets17
          // diets17
          // diets1800"),
          // speakdiets18
          // diets18
          // diets1900"),
          // speakdiets19
          // diets19
          // diets_2000"),
          // speakdiets20
          // diets20
          // diets2100"),
          // speakdiets21
          // diets21
          // diets2200"),
          // speakdiets22
          // diets22("en-US"),
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
- Noun: diet (derived forms: dieted, dieting, diets)
1. A prescribed selection of foods
 
2. A legislative assembly in certain countries (e.g., Japan)
 
3. The usual food and drink consumed by an organism (person or animal)
 
4. The act of restricting your food intake (or your intake of particular foods) (= dieting)

- Verb: diet 
1. Follow a regimen or a diet, as for health reasons
"He has high blood pressure and must stick to a low-salt diet"
 
2. Eat sparingly, for health reasons or to lose weight
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

  final String _videoId = 'EdaXp5cC4Rk';
  final double _startSeconds = 4;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'xjEFo3a1AnI';
  final double _startSeconds = 101;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'XnbCSboujF4';
  final double _startSeconds = 120;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'huewQTcUcs8';
  final double _startSeconds = 7;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = '_tZAeaq3Vzo';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'ou2jcxJcKFQ';
  final double _startSeconds = 8;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '3Q7qRw9j_lQ';
  final double _startSeconds = 613;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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