import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiscrimination extends StatefulWidget {
  const EnglishEntrydiscrimination({super.key});

  @override
  State<EnglishEntrydiscrimination> createState() =>
      _EnglishEntrydiscriminationState();
}

class _EnglishEntrydiscriminationState
    extends State<EnglishEntrydiscrimination> {
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
    return const EntryTitle(word: "discrimination");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discrimination");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˌskrɪmɪˈneɪʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscrimination(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discrimination");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiscrimination("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˌskrɪmɪˈneɪʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscrimination(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discrimination");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiscrimination("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscriminations1(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They alleged discrimination by the authorities.");
  }

  Future<void> speakdiscriminations2(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They examined racial discrimination in the workplace.");
  }

  Future<void> speakdiscriminations3(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Many disabled people face discrimination at work.");
  }

  Future<void> speakdiscriminations4(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The law now prohibits racial and ethnic discrimination.");
  }

  Future<void> speakdiscriminations5(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He showed great discrimination in his choice of friends.");
  }

  Future<void> speakdiscriminations6(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She showed great discrimination in rejecting the poor quality teas.");
  }

  Future<void> speakdiscriminations7(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Young children find it difficult to make fine discriminations.");
  }

  Future<void> speakdiscriminations8(String languageCode) async {
    // DOPSUM: CHANGE speakdiscrimination
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It takes a lot of experience to make such fine discriminations.");
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
کوردی: تێگەیشتن، لێک‌کردنەوە، جیاکردنەوە، ناسینەوە، زانین، ناسین،	جیاوازی‌دانان، ھەڵاواردن، فەرق‌خستن
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) جیاکاری لە نێوان خەڵکی یان گرووپێک بە دادپەروەری کەمترەوە"),
          SentencesRow(
            englishText: "They alleged discrimination by the authorities.",
            kurdishText:
                "بانگەشەی جیاکاریان لەلایەن بەرپرسانەوە کرد.", // discrimination
            onPressedBritish: () => speakdiscriminations1("en-GB"),
            onPressedAmerican: () => speakdiscriminations1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They examined racial discrimination in the workplace.",
            kurdishText: "لێکۆڵینەوەیان لە جیاکاری ڕەگەزی لە شوێنی کار کرد.",
            onPressedBritish: () => speakdiscriminations2("en-GB"),
            onPressedAmerican: () => speakdiscriminations2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "Many disabled people face discrimination at work.",
            kurdishText:
                "زۆرێک لە کەمئەندامان ڕووبەڕووی جیاکاری دەبنەوە لە کار.",
            onPressedBritish: () => speakdiscriminations3("en-GB"),
            onPressedAmerican: () => speakdiscriminations3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The law now prohibits racial and ethnic discrimination.",
            kurdishText: "یاساکە ئێستا جیاکاریی ڕەگەزی ئیتنیکی قەدەغە دەکات.",
            onPressedBritish: () => speakdiscriminations4("en-GB"),
            onPressedAmerican: () => speakdiscriminations4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) توانای بڕیاردانی ئەوەی چی باشە، درووستە، ھتد"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "He showed great discrimination in his choice of friends.",
            kurdishText: "تێگەشتنی زۆری پیشاندا لە ھەڵبژاردنی ھاوڕێکانی.",
            onPressedBritish: () => speakdiscriminations5("en-GB"),
            onPressedAmerican: () => speakdiscriminations5("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She showed great discrimination in rejecting the poor quality teas.",
            kurdishText:
                "تێگەیشتوویی زۆری پیشان دەدات لە ڕەتکردنەوەی چا کوالێتی خراپەکان.",
            onPressedBritish: () => speakdiscriminations6("en-GB"),
            onPressedAmerican: () => speakdiscriminations6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) توانای ناسینەوەی جیاوازی نێوان شتێک لەگەڵ شتێکی دیکە"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Young children find it difficult to make fine discriminations.",
            kurdishText: "منداڵانی گەنج بە سەختی دەبینن ھەڵاواردنی باش بکەن.",
            onPressedBritish: () => speakdiscriminations7("en-GB"),
            onPressedAmerican: () => speakdiscriminations7("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It takes a lot of experience to make such fine discriminations.",
            kurdishText: "ئەزموونی دەوێت جیاکردنەوەی وەھا باش بکەیت.",
            onPressedBritish: () => speakdiscriminations8("en-GB"),
            onPressedAmerican: () => speakdiscriminations8("en-US"),
          ),
          // discriminations900"),
          // speakdiscriminations9
          // discriminations9("en-US"),
          // discriminations_1000"),
          // speakdiscriminations10
          // discriminations10("en-US"),
          // discriminations1100"),
          // speakdiscriminations11
          // discriminations11("en-US"),
          // discriminations1200"),
          // speakdiscriminations12
          // discriminations12("en-US"),
          // discriminations1300"),
          // speakdiscriminations13
          // discriminations13("en-US"),
          // discriminations1400"),
          // speakdiscriminations14
          // discriminations14("en-US"),
          // discriminations1500"),
          // speakdiscriminations15
          // discriminations15("en-US"),
          // discriminations1600"),
          // speakdiscriminations16
          // discriminations16("en-US"),
          // discriminations1700"),
          // speakdiscriminations17
          // discriminations17("en-US"),
          // discriminations1800"),
          // speakdiscriminations18
          // discriminations18("en-US"),
          // discriminations1900"),
          // speakdiscriminations19
          // discriminations19("en-US"),
          // discriminations_2000"),
          // speakdiscriminations20
          // discriminations20("en-US"),
          // discriminations2100"),
          // speakdiscriminations21
          // discriminations21("en-US"),
          // discriminations2200"),
          // speakdiscriminations22
          // discriminations22("en-US"),
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
- Noun: discrimination (derived forms: discriminations)
1. Unfair treatment of a person or group on the basis of prejudice (= favoritism [US], favouritism [Brit, Cdn])
 
2. The cognitive process whereby two or more stimuli are distinguished (= secernment)
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

  final String _videoId = 'hOUGNGWmN0k';
  final double _startSeconds = 97;

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

  final String _videoId = '5R65skWdg7Y';
  final double _startSeconds = 2108;

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

  final String _videoId = 'G0SpzIIHEaE';
  final double _startSeconds = 879;

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

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 4677;

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

  final String _videoId = '3PX2d3Zwutg';
  final double _startSeconds = 227;

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

  final String _videoId = '4qjHYf7MZOM';
  final double _startSeconds = 184;

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

  final String _videoId = 'kzgFwZEAHZQ';
  final double _startSeconds = 3748;

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