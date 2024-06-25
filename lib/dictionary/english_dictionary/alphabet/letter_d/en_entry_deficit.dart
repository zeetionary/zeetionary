import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeficit extends StatefulWidget {
  const EnglishEntrydeficit({super.key});

  @override
  State<EnglishEntrydeficit> createState() => _EnglishEntrydeficitState();
}

class _EnglishEntrydeficitState extends State<EnglishEntrydeficit> {
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
    return const EntryTitle(word: "deficit");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deficit");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdefɪsɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeficit(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deficit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeficit("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdefɪsɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeficit(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deficit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeficit("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeficits1(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We are facing a substantial trade deficit.");
  }

  Future<void> speakdeficits3(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The presidential candidate claims that he can cut the deficit in half within five years.");
  }

  Future<void> speakdeficits4(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The company has run up a deficit of £30 000.");
  }

  Future<void> speakdeficits5(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a deficit of £3 million in the total needed to complete the project.");
  }

  Future<void> speakdeficits6(String languageCode) async {
    // DOPSUM: CHANGE speakdeficit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We will find it hard to make up this deficit.");
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
کوردی: کەمی، ناتەواوی، کورت‌ھێنان، بەش‌نەکردوویی،	کەمی، کێماسی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) تەواوی ئەو بڕەی جیاوازەی کە ھەیە کاتێک پارەی خەرجکراو زیاترە لە قازانجکراو لە ماوەیەکی دیاریکراودا"),
          SentencesRow(
            englishText: "We are facing a substantial trade deficit.",
            kurdishText:
                "ڕووبەڕووی کورتھێنانێکی گەورەی پیشەسازی بووینە.", // deficit
            onPressedBritish: () => speakdeficits1("en-GB"),
            onPressedAmerican: () => speakdeficits1("en-US"),
          ),
          // "speakdeficits200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdeficits2("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdeficits2("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The presidential candidate claims that he can cut the deficit in half within five years.",
            kurdishText:
                "بەربژێرە سەرۆکایەتییەکە بانگەشەی ئەوە دەکات کە دەتوانێت کورتھێنان بۆ نیوە کەم بکاتەوە لە ماوەی پێنج ساڵدا.",
            onPressedBritish: () => speakdeficits3("en-GB"),
            onPressedAmerican: () => speakdeficits3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The company has run up a deficit of £30 000.",
            kurdishText: "کۆمپانیاکە ڕووبەڕووی کورتھێنانی ٣٠٠٠٠ پاوەند بووە.",
            onPressedBritish: () => speakdeficits4("en-GB"),
            onPressedAmerican: () => speakdeficits4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ئەو بڕەی کە ھەیە کاتێک شتێک زۆر کەمە یان کەمترە لە شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "There's a deficit of £3 million in the total needed to complete the project.",
            kurdishText:
                "کورتھێنانی ٣ ملیۆن پاوەند ھەیە بە گشتی کە پێویستە بۆ تەواوکردنی پڕۆژەکە.",
            onPressedBritish: () => speakdeficits5("en-GB"),
            onPressedAmerican: () => speakdeficits5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We will find it hard to make up this deficit.",
            kurdishText: "بە سەختی دەبینین کە ئەم کورتھێنانە پڕبکەینەوە.",
            onPressedBritish: () => speakdeficits6("en-GB"),
            onPressedAmerican: () => speakdeficits6("en-US"),
          ),
          // deficits700"),
          // speakdeficits7
          // deficits7("en-US"),
          // deficits800"),
          // speakdeficits8
          // deficits8("en-US"),
          // deficits900"),
          // speakdeficits9
          // deficits9("en-US"),
          // deficits1000"),
          // speakdeficits10
          // deficits10("en-US"),
          // deficits1100"),
          // speakdeficits11
          // deficits11("en-US"),
          // deficits1200"),
          // speakdeficits12
          // deficits12("en-US"),
          // deficits1300"),
          // speakdeficits13
          // deficits13("en-US"),
          // deficits1400"),
          // speakdeficits14
          // deficits14("en-US"),
          // deficits1500"),
          // speakdeficits15
          // deficits15("en-US"),
          // deficits1600"),
          // speakdeficits16
          // deficits16("en-US"),
          // deficits1700"),
          // speakdeficits17
          // deficits17("en-US"),
          // deficits1800"),
          // speakdeficits18
          // deficits18("en-US"),
          // deficits1900"),
          // speakdeficits19
          // deficits19("en-US"),
          // deficits2000"),
          // speakdeficits20
          // deficits20("en-US"),
          // deficits2100"),
          // speakdeficits21
          // deficits21("en-US"),
          // deficits2200"),
          // speakdeficits22
          // deficits22("en-US"),
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
- Noun: deficit (derived forms: deficits)
1. An excess of liabilities over assets (usually over a certain period)
"last year there was a serious budgetary deficit"
 
2. The amount by which something is less than expected or required (= shortage, shortfall)
"new blood vessels bud out from the already dilated vascular bed to make up the nutritional deficit";
 
3. A deficiency or failure in neurological or mental functioning
"the people concerned have a deficit in verbal memory"; "they have serious linguistic deficits"
 
4. (sport) the score by which a team or individual is losing
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

  final String _videoId = 'Sbp_EeBk-As';
  final double _startSeconds = 610;

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

  final String _videoId = 'NNnIGh9g6fA';
  final double _startSeconds = 2150;

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

  final String _videoId = '8bshv_9HWw4';
  final double _startSeconds = 206;

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

  final String _videoId = 'DBG1Wgg32Ok';
  final double _startSeconds = 46;

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

  final String _videoId = '9strDISIg3s';
  final double _startSeconds = 190;

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

  final String _videoId = 'cWZRyKGL6dI';
  final double _startSeconds = 165;

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

  final String _videoId = 'KXRtNwUju5g';
  final double _startSeconds = 474;

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