import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefinite extends StatefulWidget {
  const EnglishEntrydefinite({super.key});

  @override
  State<EnglishEntrydefinite> createState() => _EnglishEntrydefiniteState();
}

class _EnglishEntrydefiniteState extends State<EnglishEntrydefinite> {
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
    return const EntryTitle(word: "definite");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: definite");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdefɪnət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefinite(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("definite");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefinite("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdefɪnət/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefinite(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("definite");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefinite("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefinites1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can you give me a definite answer by tomorrow?");
  }

  Future<void> speakdefinites2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("No definite conclusions can be drawn from this study.");
  }

  Future<void> speakdefinites3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is it definite that he's leaving?");
  }

  Future<void> speakdefinites4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've heard rumours, but nothing definite.");
  }

  Future<void> speakdefinites5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was a definite improvement in the sound");
  }

  Future<void> speakdefinites6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The look on her face was a definite sign that something was wrong.");
  }

  Future<void> speakdefinites7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There was a definite feeling that things were getting worse.");
  }

  Future<void> speakdefinites8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was pretty definite about the price.");
  }

  Future<void> speakdefinites9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was definite that they weren't coming till next week.");
  }

  Future<void> speakdefinites10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm definite about this.");
  }

  Future<void> speakdefinites20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("No definite conclusions can be drawn from this study.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ئاشکرا، دیار، بەرچاو، دیاری‌کراو.	مسۆگەر، یەکلایی‌یەوەبوو، بێ‌ئەملاوئەولا، بێ‌چەندوچۆن، سوور، گومان‌لێ‌نەکراو، بێ‌ئەملاوئەولا، دڵنیا
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بەدڵنیایی؛ بەبێ ئەگەری گۆڕان"),
          SentencesRow(
            englishText: "Can you give me a definite answer by tomorrow?",
            kurdishText:
                "دەتوانیت تاوەکو سبەی وەڵامێکی دڵنیایم پێ بدەیت؟", // definite
            onPressedBritish: () => speakdefinites1("en-GB"),
            onPressedAmerican: () => speakdefinites1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "No definite conclusions can be drawn from this study.",
            kurdishText:
                "ھیچ دەرەنجامێکی تەواو ناکرێت لەم توێژینەوەوە درووست بکرێت.",
            onPressedBritish: () => speakdefinites2("en-GB"),
            onPressedAmerican: () => speakdefinites2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Is it definite that he's leaving?",
            kurdishText: "ئەوە یەکلایی بووە کە دەچێت؟",
            onPressedBritish: () => speakdefinites3("en-GB"),
            onPressedAmerican: () => speakdefinites3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I've heard rumours, but nothing definite.",
            kurdishText: "دەنگۆم بیستووە، بەڵام ھیچی دڵنیایی نا.",
            onPressedBritish: () => speakdefinites4("en-GB"),
            onPressedAmerican: () => speakdefinites4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) ئاشکرا؛ کە بە ئاسانی دەبینرێت یان تێگەشتنی بۆ دەکرێت"),
          SentencesRow(
            englishText: "There was a definite improvement in the sound",
            kurdishText: "باشبوونێکی ئاشکرا ھەبوو لە دەنگەکەدا.",
            onPressedBritish: () => speakdefinites5("en-GB"),
            onPressedAmerican: () => speakdefinites5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The look on her face was a definite sign that something was wrong.",
            kurdishText:
                "نیگای سەر ڕووخساری ئاماژەیەکی رون بوو کە شتێک ھەڵە بوو.",
            onPressedBritish: () => speakdefinites6("en-GB"),
            onPressedAmerican: () => speakdefinites6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There was a definite feeling that things were getting worse.",
            kurdishText:
                "ئاماژەیەکی ئاشکرا ھەبوو کە شتەکان بەرەو خراپبوون دەچوون.",
            onPressedBritish: () => speakdefinites7("en-GB"),
            onPressedAmerican: () => speakdefinites7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) دڵنیا لەوەی شتیک ڕوودەدات یان ئەوەی کە شتێک ڕاستە"),
          SentencesRow(
            englishText: "He was pretty definite about the price.",
            kurdishText: "تەواو دڵنیابوو سەبارەت بە نرخەکە.",
            onPressedBritish: () => speakdefinites8("en-GB"),
            onPressedAmerican: () => speakdefinites8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She was definite that they weren't coming till next week.",
            kurdishText: "دڵنیابوو لەوەی تاوەکو ھەفتەی داھاتوو نایەن.",
            onPressedBritish: () => speakdefinites9("en-GB"),
            onPressedAmerican: () => speakdefinites9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'm definite about this.",
            kurdishText: "دڵنیام سەبارەت بەمە.",
            onPressedBritish: () => speakdefinites10("en-GB"),
            onPressedAmerican: () => speakdefinites10("en-US"),
          ),
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
- Adjective: definite 
1. Precise; explicit and clearly defined
"I want a definite answer"; "a definite statement of the terms of the will"; "a definite amount"; "definite restrictions on the sale of alcohol"; "the wedding date is now definite"; "a definite drop in attendance"
 
2. Known for certain
"it is definite that they have won"
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

  final String _videoId = 'a9m3GD0DbPY';
  final double _startSeconds = 2219;

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

  final String _videoId = 'gMfMppm5jvY';
  final double _startSeconds = 580;

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

  final String _videoId = '58XEfDtU0Z4';
  final double _startSeconds = 906;

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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 3079;

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

  final String _videoId = 'YLmDE_JYUNU';
  final double _startSeconds = 1196;

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

  final String _videoId = 'C1oxhniG_Fc';
  final double _startSeconds = 1263;

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

  final String _videoId = 'Uhh_An7FGek';
  final double _startSeconds = 223;

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