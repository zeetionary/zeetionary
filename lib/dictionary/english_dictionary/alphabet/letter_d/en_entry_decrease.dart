import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydecrease extends StatefulWidget {
  const EnglishEntrydecrease({super.key});

  @override
  State<EnglishEntrydecrease> createState() => _EnglishEntrydecreaseState();
}

class _EnglishEntrydecreaseState extends State<EnglishEntrydecrease> {
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
    return const EntryTitle(word: "decrease");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: decrease");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈkriːs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecrease(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("decrease");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdecrease("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈkriːs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecrease(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("decrease");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdecrease("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecreases1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Donations have decreased significantly over the past few years.");
  }

  Future<void> speakdecreases2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The number of new students decreased from 210 to 160 this year.");
  }

  Future<void> speakdecreases3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The price of wheat has decreased by 5 per cent.");
  }

  Future<void> speakdecreases4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This species of bird is decreasing in numbers every year.");
  }

  Future<void> speakdecreases5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fertility decreases with age.");
  }

  Future<void> speakdecreases6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("People should decrease the amount of fat they eat.");
  }

  Future<void> speakdecreases7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sales for May show a decrease compared with the same month last year.");
  }

  Future<void> speakdecreases8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There has been a dramatic decrease in activity among our kids.");
  }

  Future<void> speakdecreases9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There has been a decrease of nearly 6 per cent in the number of visitors to the museum.");
  }

  Future<void> speakdecreases10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Marriage is still on the decrease.");
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
کوردی: کەم‌بوونەوە، داشکان، دابەزین، نیشتنەوە، نزم‌بوونەوە.	ڕێژە یان ڕادەی کەم‌بوونەوە
"""),
          const DefinitionKurdish(
              text: "١. (کردار) کەمبوون لە قەبارە، ژمارە، ھتد"),
          SentencesRow(
            englishText:
                "Donations have decreased significantly over the past few years.",
            kurdishText:
                "بەخشین لە چەند ساڵی ڕابردوودا کەمی کردووە.", // decrease
            onPressedBritish: () => speakdecreases1("en-GB"),
            onPressedAmerican: () => speakdecreases1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The number of new students decreased from 210 to 160 this year.",
            kurdishText:
                "ژمارەی خوێندکارە تازەکان لە ٢١٠ ـەوە بۆ ١٦٠ کەمی کرد ئەمساڵ.",
            onPressedBritish: () => speakdecreases2("en-GB"),
            onPressedAmerican: () => speakdecreases2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The price of wheat has decreased by 5 per cent.",
            kurdishText: "نرخی گەنم بە ڕێژەی ٥ لە سەد کەمی کردووە.",
            onPressedBritish: () => speakdecreases3("en-GB"),
            onPressedAmerican: () => speakdecreases3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This species of bird is decreasing in numbers every year.",
            kurdishText: "ئەم جۆرە باڵندەیە ھەموو ساڵێک لە ژمارەدا کەم دەکات.",
            onPressedBritish: () => speakdecreases4("en-GB"),
            onPressedAmerican: () => speakdecreases4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Fertility decreases with age.",
            kurdishText:
                "توانای منداڵبوون ھەموو ساڵێک کەم دەکات لەگەڵ تەمەندا.",
            onPressedBritish: () => speakdecreases5("en-GB"),
            onPressedAmerican: () => speakdecreases5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "People should decrease the amount of fat they eat.",
            kurdishText: "خەڵکی دەبێت بڕی ڕێژەی چەوری کە دەیخۆن کەم بکەنەوە.",
            onPressedBritish: () => speakdecreases6("en-GB"),
            onPressedAmerican: () => speakdecreases6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) پڕۆسەی کەمبوونی شتێک؛ ئەو بڕەی کە کەم دەبێتەوە"),
          SentencesRow(
            englishText:
                "Sales for May show a decrease compared with the same month last year.",
            kurdishText:
                "ڕێژەی فرۆش لە ئایاردا کەمبوونێک پیشان دەدات بە بەراورد بە ھەمان مانگ لە ساڵی ڕابردوودا.",
            onPressedBritish: () => speakdecreases7("en-GB"),
            onPressedAmerican: () => speakdecreases7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There has been some decrease in military spending this year.",
            kurdishText: "ئەمساڵ ھەندێک کەمبوون لە خەرجی سەربازیدا بووە.",
            onPressedBritish: () => speakdecreases7("en-GB"),
            onPressedAmerican: () => speakdecreases7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There has been a dramatic decrease in activity among our kids.",
            kurdishText:
                "کەمبوونێکی زۆر ڕوویداوە لە چالاکی لەنێوان منداڵەکانماندا.",
            onPressedBritish: () => speakdecreases8("en-GB"),
            onPressedAmerican: () => speakdecreases8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There has been a decrease of nearly 6 per cent in the number of visitors to the museum.",
            kurdishText:
                "ژمارەی سەردانیکەرانی مۆزەخانەکە بە نزیکەی لەسەدا ٦ کەمیکردووە.",
            onPressedBritish: () => speakdecreases9("en-GB"),
            onPressedAmerican: () => speakdecreases9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Marriage is still on the decrease (= decreasing).",
            kurdishText: "ھاوسەرگیری ھێشتا لە دابەزیندایە.",
            onPressedBritish: () => speakdecreases10("en-GB"),
            onPressedAmerican: () => speakdecreases10("en-US"),
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
- Verb: decrease (derived forms: decreased, decreases, decreasing)
1. Become smaller or less in size, extent, or range (= diminish, lessen, fall)
"The amount of homework decreased towards the end of the semester";
 
2. Make become smaller (= lessen, minify)
"He decreased his staff";

- Noun: decrease (derived forms: decreases)
1. A change downward (= lessening, drop-off)
"there was a decrease in his temperature as the fever subsided";
 
2. A process of becoming smaller or shorter (= decrement)
 
3. The amount by which something decreases (= decrement)
 
4. The act of decreasing or reducing something (= diminution, reduction, step-down)
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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 522;

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

  final String _videoId = 'W2hRTTTpmr8';
  final double _startSeconds = 1351;

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

  final String _videoId = 'CaaJyRvvaq8';
  final double _startSeconds = 399;

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

  final String _videoId = 'toVfvRhWbj8';
  final double _startSeconds = 212;

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

  final String _videoId = 'DxL2HoqLbyA';
  final double _startSeconds = 291;

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

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 37;

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

  final String _videoId = 'mRj1RKh4xyY';
  final double _startSeconds = 257;

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