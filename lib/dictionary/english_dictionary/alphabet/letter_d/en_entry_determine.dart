import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydetermine extends StatefulWidget {
  const EnglishEntrydetermine({super.key});

  @override
  State<EnglishEntrydetermine> createState() => _EnglishEntrydetermineState();
}

class _EnglishEntrydetermineState extends State<EnglishEntrydetermine> {
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
    return const EntryTitle(word: "determine");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: determine");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈtɜːmɪn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdetermine(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("determine");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdetermine("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈtɜːrmɪn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdetermine(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("determine");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdetermine("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdetermines1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("An inquiry was set up to determine the cause of the accident.");
  }

  Future<void> speakdetermines2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Try to determine the extent of the problem.");
  }

  Future<void> speakdetermines3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is difficult to determine when drama first appeared in India.");
  }

  Future<void> speakdetermines4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was determined that she had died of natural causes.");
  }

  Future<void> speakdetermines5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Rural voters in key states will determine the outcome of the election.");
  }

  Future<void> speakdetermines6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Upbringing plays an important part in determining a person's character.");
  }

  Future<void> speakdetermines7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Age and experience will be determining factors in our choice of candidate.");
  }

  Future<void> speakdetermines8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A date for the meeting has yet to be determined.");
  }

  Future<void> speakdetermines9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The court determined (that) the defendant should pay the legal costs.");
  }

  Future<void> speakdetermines10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They determined to start early.");
  }

  Future<void> speakdetermines11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The government determined on a change of policy.");
  }

  Future<void> speakdetermines20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Try to determine the extent of the problem.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دیاری کردن، بڕیاردان، حوکم دان، دانان، بەرتەسک کردن
"""),
          const DefinitionKurdish(
              text: "١. (کردار)دۆزینەوەی ڕاستییەکان سەبارەت بە شتێک"),
          SentencesRow(
            englishText:
                "An inquiry was set up to determine the cause of the accident.",
            kurdishText:
                "لێکۆڵینەوەیەک دەستپێکرا بۆ دیاریکردنی ھۆکاری ڕووداوەکە.", // determine
            onPressedBritish: () => speakdetermines1("en-GB"),
            onPressedAmerican: () => speakdetermines1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Try to determine the extent of the problem.",
            kurdishText: "ھەوڵ بدە قووڵی ڕووداوەکە دیاری بکە.",
            onPressedBritish: () => speakdetermines2("en-GB"),
            onPressedAmerican: () => speakdetermines2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It is difficult to determine when drama first appeared in India.",
            kurdishText:
                "سەختە دیاری بکرێت کەی دراما بۆ یەکەمجار لە ھندستان دەرکەوت.",
            onPressedBritish: () => speakdetermines3("en-GB"),
            onPressedAmerican: () => speakdetermines3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It was determined that she had died of natural causes.",
            kurdishText: "ئەوە دیاریکرا کە بە ھۆکاری سرووشتی گیانی لەدەستدا.",
            onPressedBritish: () => speakdetermines4("en-GB"),
            onPressedAmerican: () => speakdetermines4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) واکردنی ئەوەی شتێک بە ڕێگایەک یان شێوازێکی دیاریکراو ڕووبدات"),
          SentencesRow(
            englishText:
                "Rural voters in key states will determine the outcome of the election.",
            kurdishText:
                "دەنگدەرە گوندنشینەکان لە ویلایەتە گرنگەکان ئەنجامی ھەڵبژاردنەکە دیاری دەکەن.",
            onPressedBritish: () => speakdetermines5("en-GB"),
            onPressedAmerican: () => speakdetermines5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Upbringing plays an important part in determining a person's character.",
            kurdishText: "پێگەیاندن بەشێکی گرنگی کەسایەتی کەسێک پێکدێنێت.",
            onPressedBritish: () => speakdetermines6("en-GB"),
            onPressedAmerican: () => speakdetermines6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Age and experience will be determining factors in our choice of candidate.",
            kurdishText:
                "تەمەن و ئەزموون فاکتەری دیاریکەر دەبن لە ھەڵبژاردنمان بۆ بەربژێر.",
            onPressedBritish: () => speakdetermines7("en-GB"),
            onPressedAmerican: () => speakdetermines7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) بە فەرمی بڕیاردان یان دیاریکردنی شتێک"),
          SentencesRow(
            englishText: "A date for the meeting has yet to be determined.",
            kurdishText:
                "ڕێکەوتێک بۆ چاوپێکەوتنەکە ھێشتا ماوە بڕیاری لێ بدرێت.",
            onPressedBritish: () => speakdetermines8("en-GB"),
            onPressedAmerican: () => speakdetermines8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The court determined (that) the defendant should pay the legal costs.",
            kurdishText:
                "دادگا بڕیاریدا تاوانبارکراو دەبێت خەرجییە یاساییەکان بدات.",
            onPressedBritish: () => speakdetermines9("en-GB"),
            onPressedAmerican: () => speakdetermines9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) بە تەواوی بڕیاردان بۆ کردنی شتێک"),
          SentencesRow(
            englishText: "They determined to start early.",
            kurdishText: "بڕیاریاندا زوو دەستپێ بکەن.",
            onPressedBritish: () => speakdetermines10("en-GB"),
            onPressedAmerican: () => speakdetermines10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The government determined on a change of policy.",
            kurdishText: "حکومەت بڕیاری گۆڕانی سیاسەتی دا.",
            onPressedBritish: () => speakdetermines11("en-GB"),
            onPressedAmerican: () => speakdetermines11("en-US"),
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
- Verb: determine (derived forms: determined, determining, determines)
1. Establish after a calculation, investigation, experiment, survey, or study (= find, find out, ascertain)
"determine the product of two numbers";
 
2. Give direction to; be an influence on (= shape, mold [N. Amer], influence, regulate, mould [Brit, Cdn])
"experience often determines ability";
 
3. Fix conclusively or authoritatively (= set)
"determine the rules";
 
4. Decide upon definitely; give a value (= specify, set, define, fix, limit)
"determine the parameters";
 
5. Reach, make, or come to a decision about something (= decide, make up one's mind)
"We finally determined after lengthy deliberations";
 
6. Fix in scope; fix the boundaries of
"the tree determines the border of the property"
 
7. Settle conclusively; come to terms (= settle, square off, square up)
"We finally determined the argument";
 
8. Find out, learn, or determine with certainty, usually by making an inquiry or other effort (= check, find out, see, ascertain, watch, learn)
"determine whether the train leaves on time";
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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 308;

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
  final double _startSeconds = 544;

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
  final double _startSeconds = 809;

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

  final String _videoId = 'CaaJyRvvaq8';
  final double _startSeconds = 199;

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

  final String _videoId = 'fZJGTevM3QI';
  final double _startSeconds = 330;

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

  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 642;

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

  final String _videoId = 'EFkyxzJtiv4';
  final double _startSeconds = 421;

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