import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydirectly extends StatefulWidget {
  const EnglishEntrydirectly({super.key});

  @override
  State<EnglishEntrydirectly> createState() => _EnglishEntrydirectlyState();
}

class _EnglishEntrydirectlyState extends State<EnglishEntrydirectly> {
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
    return const EntryTitle(word: "directly");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: directly");
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
    return const IPAofEnglish(text: "IpaUK: /dəˈrektli/,  /daɪˈrektli/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirectly(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("directly");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdirectly("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dəˈrektli/,  /daɪˈrektli/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirectly(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("directly");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdirectly("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirectlys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The path leads directly to the river.");
  }

  Future<void> speakdirectlys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The airline flies directly to Stockholm.");
  }

  Future<void> speakdirectlys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She speaks directly to camera.");
  }

  Future<void> speakdirectlys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She looked directly at us.");
  }

  Future<void> speakdirectlys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The president was not directly involved.");
  }

  Future<void> speakdirectlys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They remain directly opposed to these new plans.");
  }

  Future<void> speakdirectlys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She left directly after the show.");
  }

  Future<void> speakdirectlys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tell them I'll be there directly.");
  }

  Future<void> speakdirectlys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I went home directly I had finished work.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ڕاستەوخۆ، ڕاست، یەک‌سەرە، خۆحاست،	دروست، بە دروستی، دەسبەجێ، خێرا، زوو،	ڕێک‌وڕاست، ڕەپ‌وڕاست، بە ئاشکرایی، بێ‌پەردە، ھەرکە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵکار) بەبێ وەستان یان گۆڕینی ئاراستە"),
          SentencesRow(
            englishText: "The path leads directly to the river.",
            kurdishText: "ڕێگاکە ڕاستەوخۆ بۆ ڕووبارەکە دەچێت.", // directly
            onPressedBritish: () => speakdirectlys1("en-GB"),
            onPressedAmerican: () => speakdirectlys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The airline flies directly to Stockholm.",
            kurdishText:
                "کۆمپانیا گەشتوگوزارییەکە ڕاستەوخۆ گەشتی ستۆکھۆڵمی ھەیە.",
            onPressedBritish: () => speakdirectlys2("en-GB"),
            onPressedAmerican: () => speakdirectlys2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵکار) ڕاستەوخۆ بەبێ ئەوەی ھیچ کەس/شتێک لە نێواندا بێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She speaks directly to camera.",
            kurdishText: "ڕاستەوخۆ ڕوو لە کامێراکە قسە دەکات.",
            onPressedBritish: () => speakdirectlys3("en-GB"),
            onPressedAmerican: () => speakdirectlys3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She looked directly at us.",
            kurdishText: "ڕاستەوخۆ سەیری ئێمەی کرد.",
            onPressedBritish: () => speakdirectlys4("en-GB"),
            onPressedAmerican: () => speakdirectlys4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The president was not directly involved.",
            kurdishText: "سەرۆک ڕاستەوخۆ بەژدار نەبوو.",
            onPressedBritish: () => speakdirectlys5("en-GB"),
            onPressedAmerican: () => speakdirectlys5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵکار) ڕێک بە ئاراستەیەکدا"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They remain directly opposed to these new plans.",
            kurdishText: "تەواو دژ بەم پلانە تازانەن.",
            onPressedBritish: () => speakdirectlys6("en-GB"),
            onPressedAmerican: () => speakdirectlys6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵکار) دەستبەجێ"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She left directly after the show.",
            kurdishText: "دەستبەجێ دوای پڕۆگرامەکە چوو.",
            onPressedBritish: () => speakdirectlys7("en-GB"),
            onPressedAmerican: () => speakdirectlys7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵکار) بەزووی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Tell them I'll be there directly.",
            kurdishText: "پێیان بڵێ بەزووی لەوێ دەبم.",
            onPressedBritish: () => speakdirectlys8("en-GB"),
            onPressedAmerican: () => speakdirectlys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (لێکدەر) بە زووی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I went home directly I had finished work.",
            kurdishText: "چوومەوە ماڵەوە ھەرکە کارم تەواو تەواو کرد.",
            onPressedBritish: () => speakdirectlys9("en-GB"),
            onPressedAmerican: () => speakdirectlys9("en-US"),
          ),
          // directlys_1000"),
          // directlys10("en-US"),
          // directlys1100"),
          // directlys11("en-US"),
          // directlys1200"),
          // directlys12("en-US"),
          // directlys1300"),
          // directlys13("en-US"),
          // directlys1400"),
          // directlys14("en-US"),
          // directlys1500"),
          // directlys15("en-US"),
          // directlys1600"),
          // directlys16("en-US"),
          // directlys1700"),
          // directlys17("en-US"),
          // directlys1800"),
          // directlys18("en-US"),
          // directlys1900"),
          // directlys19("en-US"),
          // directlys_2000"),
          // directlys20("en-US"),
          // directlys2100"),
          // directlys21("en-US"),
          // directlys2200"),
          // directlys22("en-US"),
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
- Adverb: directly 
1. Without deviation (= straight, direct)
"the path leads directly to the lake";
 
2. Without anyone or anything intervening
"these two factors are directly related"; "he was directly responsible"; "measured the physical properties directly"
 
3. Without delay or hesitation; with no time intervening (= immediately, instantly, straightaway, straight off, now, right away, at once, forthwith, like a shot [informal], right off the bat [N. Amer, informal], instantaneously, outright, in a flash, tout de suite)
"he answered directly";
 
3. In a forthright manner; candidly or frankly (= flat, straight)
"he didn't answer directly";
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

  final String _videoId = 'DwsZggwPRKc';
  final double _startSeconds = 217;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 333;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1379;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 296;

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

  final String _videoId = 'z4L2E6_Gmkk';
  final double _startSeconds = 204;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 893;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 528;

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