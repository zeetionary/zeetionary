import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydelight extends StatefulWidget {
  const EnglishEntrydelight({super.key});

  @override
  State<EnglishEntrydelight> createState() => _EnglishEntrydelightState();
}

class _EnglishEntrydelightState extends State<EnglishEntrydelight> {
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
    return const EntryTitle(word: "delight");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: delight");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈlaɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelight(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("delight");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdelight("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈlaɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelight(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("delight");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdelight("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelights1(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children squealed with delight when they saw the puppy.");
  }

  Future<void> speakdelights2(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She won the game easily, to the delight of all her fans.");
  }

  Future<void> speakdelights3(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He takes (great) delight in proving others wrong.");
  }

  Future<void> speakdelights4(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She couldn't hide her delight at the news.");
  }

  Future<void> speakdelights5(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This guitar is a delight to play.");
  }

  Future<void> speakdelights6(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sample the culinary delights of Morocco.");
  }

  Future<void> speakdelights7(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He became deeply religious and turned away from earthly delights.");
  }

  Future<void> speakdelights8(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This news will delight his fans all over the world.");
  }

  Future<void> speakdelights9(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had a limitless capacity to astonish and delight.");
  }

  Future<void> speakdelights20(String languageCode) async {
    // DOPSUM: CHANGE speakdelight
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She won the game easily, to the delight of all her fans.0");
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
کوردی: شادی، خۆشی، گەشی، سەرخۆشی، خۆشحاڵی، دڵشادی، دڵخۆشی، بەکەیفی، کەیف‌خۆشی،	دڵ‌خۆشکەرە، مایەی خۆشحاڵی
"""),
          const DefinitionKurdish(text: "١. (ناو) ھەستێکی خۆشی گەورە"),
          SentencesRow(
            englishText:
                "The children squealed with delight when they saw the puppy.",
            kurdishText:
                "منداڵەکان لە خۆشیدا قیژاندیان کە توولەکەیان بینی.", // delight
            onPressedBritish: () => speakdelights1("en-GB"),
            onPressedAmerican: () => speakdelights1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She won the game easily, to the delight of all her fans.",
            kurdishText:
                "یارییەکەی بە ئاسانی بردەوە بە خۆشی بە ھەموو ھەوادارانی.",
            onPressedBritish: () => speakdelights2("en-GB"),
            onPressedAmerican: () => speakdelights2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He takes (great) delight in (= enjoys) proving others wrong.",
            kurdishText: "چێژی زۆر دەبینێت لەوەی بیسەلمێنێت کەسانی دیکە ھەڵەن.",
            onPressedBritish: () => speakdelights3("en-GB"),
            onPressedAmerican: () => speakdelights3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "She couldn't hide her delight at the news.",
            kurdishText: "نەیدەتوانی خۆشی خۆی بۆ ھەواڵەکە بشارێتەوە.",
            onPressedBritish: () => speakdelights4("en-GB"),
            onPressedAmerican: () => speakdelights4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) شتێک کە چێژی زۆرت پێدەدات"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "This guitar is a delight to play.",
            kurdishText: "گیتارەکە خۆشە بۆ لێدان.",
            onPressedBritish: () => speakdelights5("en-GB"),
            onPressedAmerican: () => speakdelights5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Sample the culinary delights of Morocco.",
            kurdishText: "خۆشییەکانی خواردنی مۆناکۆ تاقیبکەرەوە.",
            onPressedBritish: () => speakdelights6("en-GB"),
            onPressedAmerican: () => speakdelights6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He became deeply religious and turned away from earthly delights.",
            kurdishText:
                "بە تەواوی بووە بە ئایینی و خۆی لە خۆشییەکانی ژیان دوورخستووەتەوە.",
            onPressedBritish: () => speakdelights7("en-GB"),
            onPressedAmerican: () => speakdelights7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) پێدانی خۆشی زۆر بە کەسێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "This news will delight his fans all over the world.",
            kurdishText:
                "ئەم ھەواڵە ھەوادارەکانی لە ھەموو جیھاندا دڵخۆش دەکات.",
            onPressedBritish: () => speakdelights8("en-GB"),
            onPressedAmerican: () => speakdelights8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She had a limitless capacity to astonish and delight.",
            kurdishText:
                "توانایەکی بێسنووری ھەبوو بۆ سەرسامکردن و خۆشی بەخشین.",
            onPressedBritish: () => speakdelights9("en-GB"),
            onPressedAmerican: () => speakdelights9("en-US"),
          ),
          // delights1000"),
          // speakdelights10
          // delights10("en-US"),
          // delights1100"),
          // speakdelights11
          // delights11("en-US"),
          // delights1200"),
          // speakdelights12
          // delights12("en-US"),
          // delights1300"),
          // speakdelights13
          // delights13("en-US"),
          // delights1400"),
          // speakdelights14
          // delights14("en-US"),
          // delights1500"),
          // speakdelights15
          // delights15("en-US"),
          // delights1600"),
          // speakdelights16
          // delights16("en-US"),
          // delights1700"),
          // speakdelights17
          // delights17("en-US"),
          // delights1800"),
          // speakdelights18
          // delights18("en-US"),
          // delights1900"),
          // speakdelights19
          // delights19("en-US"),
          // "She won the game easily, to the delight of all her fans.0"),
          // speakdelights20
          // delights20("en-US"),
          // delights2100"),
          // speakdelights21
          // delights21("en-US"),
          // delights2200"),
          // speakdelights22
          // delights22("en-US"),
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
- Noun: delight (derived forms: delights)
1. A feeling of extreme pleasure or satisfaction (= delectation)
"his delight to see her was obvious to all";
 
2. Something or someone that provides a source of happiness (= joy, pleasure)
"the new car is a delight";

- Verb: delight (derived forms: delights, delighting, delighted)
1. Give pleasure to or be pleasing to (= please)
"These colours delight the senses";
 
2. Take delight in and make the most of (= enjoy, revel)
"he delights in his granddaughter";
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 774;

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

  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 1373;

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

  final String _videoId = 'HxRUuGqqMG4';
  final double _startSeconds = 532;

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

  final String _videoId = 'NpBPm0b9deQ';
  final double _startSeconds = 102;

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

  final String _videoId = 'Pck5JcnkYYs';
  final double _startSeconds = 1032;

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

  final String _videoId = 'gjySnrspD7E';
  final double _startSeconds = 622;

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

  final String _videoId = 'r0GMwLBXTmg';
  final double _startSeconds = 551;

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