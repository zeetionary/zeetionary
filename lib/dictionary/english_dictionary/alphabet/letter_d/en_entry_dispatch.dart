import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydispatch extends StatefulWidget {
  const EnglishEntrydispatch({super.key});

  @override
  State<EnglishEntrydispatch> createState() => _EnglishEntrydispatchState();
}

class _EnglishEntrydispatchState extends State<EnglishEntrydispatch> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: CustomTabBarNew(
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
    return const EntryTitle(word: "dispatch");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dispatch");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈspætʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdispatch(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dispatch");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdispatch("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈspætʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdispatch(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dispatch");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdispatch("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdispatchs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Troops have been dispatched to the area.");
  }

  Future<void> speakdispatchs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Goods are dispatched within 24 hours of your order reaching us.");
  }

  Future<void> speakdispatchs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He dispatched the younger player in straight sets.");
  }

  Future<void> speakdispatchs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Our handsome hero manages to dispatch another five villains.");
  }

  Future<void> speakdispatchs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("More food supplies are ready for immediate dispatch.");
  }

  Future<void> speakdispatchs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In her latest dispatch, Clare Duggan, our war correspondent, reported an increase in fighting.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: بەڕێ‌کردن، ناردن، شاندن، ڕێخستن، خستنەڕێ، ڕەوانە(کردن)، فڕێ،	ڕاپۆر، ھەواڵ، پەیامی نووسراو، نامە،	خێرایی، توندی، تاو، تاڵووکە، پەلە،	جێبەجێ‌کردن یان کردنی خێرا، ڕاپەڕاندنی دەم‌ودەست،	کوشتن
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) ناردنی کەسێک/شتێک بۆ شوێنێک، بەتایبەتی بۆ مەبەستێکی دیاریکراو"),
          SentencesRow(
            englishText: "Troops have been dispatched to the area.",
            kurdishText: "ھێز بۆ ناوچەکە نێردراون.",
            onPressedBritish: () => speakdispatchs1("en-GB"),
            onPressedAmerican: () => speakdispatchs1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) ناردنی نامەیەک نامەیەک یان پاکێجێک بۆ شوێنێک"),
          SentencesRow(
            englishText:
                "Goods are dispatched within 24 hours of your order reaching us.",
            kurdishText:
                "کەلوپەل دەگەیەندرێت لە ماوەی ٢٤ کاتژمێردا کە داواکەت دەگاتە دەستمان.",
            onPressedBritish: () => speakdispatchs2("en-GB"),
            onPressedAmerican: () => speakdispatchs2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) مامەڵەکردن لەگەڵ کەسێک/شتێک بە خێرایی و تەواوی"),
          SentencesRow(
            englishText: "He dispatched the younger player in straight sets.",
            kurdishText:
                "یاریزانە گەنجەکەی بە دوو کۆمەڵەی یەک بەدوای یەکدا دەرکرد.",
            onPressedBritish: () => speakdispatchs3("en-GB"),
            onPressedAmerican: () => speakdispatchs3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) کوشتن"),
          SentencesRow(
            englishText:
                "Our handsome hero manages to dispatch another five villains.",
            kurdishText:
                "پاڵەوانە جوانەکەمان دەتوانێت پێنج تاوان‌کاری دیکە بکوژێت.",
            onPressedBritish: () => speakdispatchs4("en-GB"),
            onPressedAmerican: () => speakdispatchs4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) ناردنی کەسێک/شتێک بۆ شوێنێک"),
          SentencesRow(
            englishText: "More food supplies are ready for immediate dispatch.",
            kurdishText: "پاشەکەوتی زیاتری خواردن ئامادەیە بۆ ناردنی دەستبەجێ.",
            onPressedBritish: () => speakdispatchs5("en-GB"),
            onPressedAmerican: () => speakdispatchs5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) پەیامێک یان ڕاپۆرتێک کە لە نێوان دوو ئەفسەری سەربازی یان بەرپرسی حکومی ئاڵوگۆڕ دەکرێت، یان ڕاپۆرتی ڕۆژنامەنووسێک کە لە دەرەوەی وڵات کار دەکات"),
          SentencesRow(
            englishText:
                "In her latest dispatch, Clare Duggan, our war correspondent, reported an increase in fighting.",
            kurdishText:
                "لە کۆتا پەیامیدا، کلێر دوگان، پەیامنێری جەنگیمان، ئاماژە بە زیادبوونی شەڕ دەکات.",
            onPressedBritish: () => speakdispatchs6("en-GB"),
            onPressedAmerican: () => speakdispatchs6("en-US"),
          ),
          // dispatchs7dispatchs7
          // dispatchs8dispatchs8
          // dispatchs9dispatchs9
          // dispatchs_10dispatchs10
          // dispatchs11dispatchs11
          // dispatchs12dispatchs12
          // dispatchs13dispatchs13
          // dispatchs14dispatchs14
          // dispatchs15dispatchs15
          // dispatchs16dispatchs16
          // dispatchs17dispatchs17
          // dispatchs18dispatchs18
          // dispatchs19dispatchs19
          // dispatchs_20dispatchs20
          // dispatchs21dispatchs21
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: dispatch (derived forms: dispatched, dispatches, dispatching)
1. Send away towards a designated goal (= despatch [Brit], send off)
 
2. Carry out, fulfil (= discharge, complete)
"dispatch one's duties";
 
3. Kill intentionally and with premeditation (= murder, slay [literary], hit, bump off [informal], off [N. Amer, informal], polish off [informal], remove, croak)
"The mafia boss ordered his enemies dispatched";
 
4. Dispose of rapidly and without delay and efficiently
"He dispatched the task he was assigned"
 
5. Kill without delay
"the traitor was dispatched by the conspirators"

- Noun: dispatch (derived forms: dispatches)
1. An official report (usually sent in haste) (= despatch [Brit], communiqué)
 
2. The act of sending off something (= despatch [Brit], shipment)
 
3. The property of being prompt and efficient (= despatch [Brit], expedition, expeditiousness)
"it was done with dispatch";
 
4. Killing a person or animal (= despatch [Brit])
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = 'mCwbWie5WVc';
  final double _startSeconds = 171;

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

  final String _videoId = 'z56j06plUgs';
  final double _startSeconds = 129;

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

  final String _videoId = 'H7Quhnm-Z8A';
  final double _startSeconds = 153;

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

  final String _videoId = 'OIo2Ie1HwHY';
  final double _startSeconds = 1129;

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

  final String _videoId = 'bPwnDyW26gk';
  final double _startSeconds = 365;

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

  final String _videoId = 'h31p4OLbqSc';
  final double _startSeconds = 327;

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

  final String _videoId = 'aoXJfuPaFF8';
  final double _startSeconds = 84;

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