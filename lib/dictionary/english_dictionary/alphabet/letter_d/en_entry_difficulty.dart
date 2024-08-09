import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydifficulty extends StatefulWidget {
  const EnglishEntrydifficulty({super.key});

  @override
  State<EnglishEntrydifficulty> createState() => _EnglishEntrydifficultyState();
}

class _EnglishEntrydifficultyState extends State<EnglishEntrydifficulty> {
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
    return const EntryTitle(word: "difficulty");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: difficulty");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪfɪkəlti/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficulty(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("difficulty");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdifficulty("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪfɪkəlti/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficulty(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("difficulty");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdifficulty("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficultys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They encountered numerous difficulties while making the film.");
  }

  Future<void> speakdifficultys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had been experiencing technical difficulties.");
  }

  Future<void> speakdifficultys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I know the kinds of difficulties faced by parents and teachers.");
  }

  Future<void> speakdifficultys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've run into difficulties with the new project.");
  }

  Future<void> speakdifficultys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm having difficulty with the engine.");
  }

  Future<void> speakdifficultys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I had considerable difficulty (in) persuading her to leave.");
  }

  Future<void> speakdifficultys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I had no difficulty (in) making myself understood.");
  }

  Future<void> speakdifficultys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He spoke slowly and with great difficulty.");
  }

  Future<void> speakdifficultys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We found the house without difficulty.");
  }

  Future<void> speakdifficultys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The games have varying levels of difficulty.");
  }

  Future<void> speakdifficultys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Both roles had a high degree of difficulty.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: گرفت، گیر، گیروگرفت،	سەختی، تەنگی، گرانی، دژواری، چەتوونی، ئاستەنگی، پڕئەرکی، زەحمەت، کاری سەخت،	ئیراد، گێرەوکێشە، دەرد، گێچەڵ، قۆرت، کێشە، دەردەسەری،	تەنگانە، زۆربۆھاتن، گیر (پارە)
"""),
          const DefinitionKurdish(
              text: "١. (ناو) کێشەیەک؛ شتێک کە دەبێتە ھۆکاری کێشە"),
          SentencesRow(
            englishText:
                "They encountered numerous difficulties while making the film.",
            kurdishText:
                "تووشی ژمارەیەک سەختی بوو لە کاتی بەرھەمھێنانی فیلمەکە.", // difficulty
            onPressedBritish: () => speakdifficultys1("en-GB"),
            onPressedAmerican: () => speakdifficultys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She had been experiencing technical difficulties.",
            kurdishText: "تووشی کێشەی تەکنیکی بووبوو.",
            onPressedBritish: () => speakdifficultys2("en-GB"),
            onPressedAmerican: () => speakdifficultys2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I know the kinds of difficulties faced by parents and teachers.",
            kurdishText:
                "ئەو سەختییانە دەزانم کە تووشی دایبابان و مامۆستایان دەبێتەوە .",
            onPressedBritish: () => speakdifficultys3("en-GB"),
            onPressedAmerican: () => speakdifficultys3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We've run into difficulties with the new project.",
            kurdishText: "تووشی کێشە بووینە لە پڕۆژە تازەکەدا.",
            onPressedBritish: () => speakdifficultys4("en-GB"),
            onPressedAmerican: () => speakdifficultys4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'm having difficulty with the engine.",
            kurdishText: "کێشەم لە بزوێنەرەکەدا ھەیە.",
            onPressedBritish: () => speakdifficultys5("en-GB"),
            onPressedAmerican: () => speakdifficultys5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) سەختی کردن یان تێگەشتن"),
          SentencesRow(
            englishText:
                "I had considerable difficulty (in) persuading her to leave.",
            kurdishText: "ناڕەحەتی زۆرم ھەبوو لە ڕازیکردنی کە بچێت.",
            onPressedBritish: () => speakdifficultys6("en-GB"),
            onPressedAmerican: () => speakdifficultys6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I had no difficulty (in) making myself understood.",
            kurdishText: "ھیچ سەختیم نەبوو لەوەی خۆم تێ بگەیەنم.",
            onPressedBritish: () => speakdifficultys7("en-GB"),
            onPressedAmerican: () => speakdifficultys7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He spoke slowly and with great difficulty.",
            kurdishText: "بە ھێواشی و ناڕەحەتیی زۆرەوە قسەی کرد.",
            onPressedBritish: () => speakdifficultys8("en-GB"),
            onPressedAmerican: () => speakdifficultys8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We found the house without difficulty.",
            kurdishText: "بەبێ ناڕەحەتی خانووەکەمان دۆزییەوە.",
            onPressedBritish: () => speakdifficultys9("en-GB"),
            onPressedAmerican: () => speakdifficultys9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) ئاستی سەختی شتێک"),
          SentencesRow(
            englishText: "The games have varying levels of difficulty.",
            kurdishText: "یارییەکان ئاستی جیاواز لە سەختییان ھەیە.",
            onPressedBritish: () => speakdifficultys10("en-GB"),
            onPressedAmerican: () => speakdifficultys10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Both roles had a high degree of difficulty.",
            kurdishText: "ھەردوو ئەرکەکە ئاستێکی بەرز لە سەختییان ھەبوو.",
            onPressedBritish: () => speakdifficultys11("en-GB"),
            onPressedAmerican: () => speakdifficultys11("en-US"),
          ),
          // difficultys12difficultys12
          // difficultys13difficultys13
          // difficultys14difficultys14
          // difficultys15difficultys15
          // difficultys16difficultys16
          // difficultys17difficultys17
          // difficultys18difficultys18
          // difficultys19difficultys19
          // difficultys_20difficultys20
          // difficultys21difficultys21
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
- Noun: difficulty (derived forms: difficulties)
1. An effort that is inconvenient (= trouble)
"had difficulty walking"; "finished the test only with great difficulty";
 
2. The quality of being almost beyond one's ability to deal with and requiring a great effort to achieve a positive result (= difficultness, fix [informal], hole [informal], jam [informal], mess [informal], muddle [informal], pickle [informal], kettle of fish [informal])
"they agreed about the difficulty of the climb";
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

  final String _videoId = 'BZbChKzedEk';
  final double _startSeconds = 381;

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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 2613;

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

  final String _videoId = 'JmWfY4nb6oM';
  final double _startSeconds = 492;

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

  final String _videoId = '05gCLHlpzTU';
  final double _startSeconds = 222;

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

  final String _videoId = 'OOg-4mtA3Zo';
  final double _startSeconds = 693;

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

  final String _videoId = 'VRJzvJ5XPQI';
  final double _startSeconds = 34;

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

  final String _videoId = 'oI_X2cMHNe0';
  final double _startSeconds = 1428;

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