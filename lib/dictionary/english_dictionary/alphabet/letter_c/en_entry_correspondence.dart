import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycorrespondence extends StatefulWidget {
  const EnglishEntrycorrespondence({super.key});

  @override
  State<EnglishEntrycorrespondence> createState() =>
      _EnglishEntrycorrespondenceState();
}

class _EnglishEntrycorrespondenceState
    extends State<EnglishEntrycorrespondence> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
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
    return const EntryTitle(word: "correspondence");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: correspondence");
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
    return const IPAofEnglish(text: "IpaUK: /ˌkɒrəˈspɒndəns/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrespondence(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("correspondence");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcorrespondence("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: IpaUS: /ˌkɔːrəˈspɑːndəns/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrespondence(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("correspondence");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcorrespondence("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrespondences1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The editor welcomes correspondence from readers on any subject.");
  }

  Future<void> speakcorrespondences2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Jane Austen's correspondence with her sister provides insights into her life and thoughts.");
  }

  Future<void> speakcorrespondences3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The secretary deals with all the correspondence.");
  }

  Future<void> speakcorrespondences4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I refused to enter into any correspondence with him about it.");
  }

  Future<void> speakcorrespondences5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We have been in correspondence for months.");
  }

  Future<void> speakcorrespondences6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We kept up a correspondence for many years.");
  }

  Future<void> speakcorrespondences7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The survey found no correspondence between crime and unemployment rates.");
  }

  Future<void> speakcorrespondences8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Here, the correspondency between the two situations ends.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: (پێکەوە) گونجان، سازان، بەرامبەری، پێک‌خواردن، لێک‌ھاتن، جووت‌بوون، یەک‌کەوتن، پێکھاتن، ڕێک‌کەوتن، یەک‌گرتنەوە، یەکان‌گیری،	لێک‌چوون، ھاوشێوەیی، شێوەی یەک‌دان، وەک‌یەکی،	نامەنووسی، نامەگۆڕینەوە، نامەکان،	(بیرکاری) ھاوتایی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) نامە، ئیمەیڵ، ھتد کە دەینێریت بۆ کەسێک و پێت دەگات"),
          SentencesRow(
            englishText:
                "The editor welcomes correspondence from readers on any subject.",
            kurdishText:
                "ڕۆژنامەنووسەکە پێشوازی لە نامەی خوێنەران لەسەر ھەر بابەتێک دەگات.",
            onPressedBritish: () => speakcorrespondences1("en-GB"),
            onPressedAmerican: () => speakcorrespondences1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Jane Austen's correspondence with her sister provides insights into her life and thoughts.",
            kurdishText:
                "نامەگۆڕینەوەی خەین ئۆستن لەگەڵ خوشکەکەی تێگەشتن دەدات بەدەستەوە لەسەر ژیان و بیرکردنەوەی.",
            onPressedBritish: () => speakcorrespondences2("en-GB"),
            onPressedAmerican: () => speakcorrespondences2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The secretary deals with all the correspondence.",
            kurdishText: "سکرتێرەکە مامەڵە لەگەڵ ھەموو ئیمەیڵەکان دەکات.",
            onPressedBritish: () => speakcorrespondences3("en-GB"),
            onPressedAmerican: () => speakcorrespondences3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) نامەنووسی"),
          SentencesRow(
            englishText:
                "I refused to enter into any correspondence (= to exchange letters) with him about it.",
            kurdishText:
                "ڕەتم کردەوە بەژدار بم لە ھیچ کارێکی نامەنووسی لەگەڵی.",
            onPressedBritish: () => speakcorrespondences4("en-GB"),
            onPressedAmerican: () => speakcorrespondences4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We have been in correspondence for months.",
            kurdishText: "بۆ چەندین مانگ دەبێت لە پەیوەندیداین (بە نامە).",
            onPressedBritish: () => speakcorrespondences5("en-GB"),
            onPressedAmerican: () => speakcorrespondences5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We kept up a correspondence for many years.",
            kurdishText: "بۆ چەندین ساڵ پەیوەندیمان ڕاگرت.",
            onPressedBritish: () => speakcorrespondences6("en-GB"),
            onPressedAmerican: () => speakcorrespondences6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) پەیوەندی یان لێکچوونی دوو شت"),
          const AlsoEnglishckb(word: "ھەروەھا: correspondency"),
          SentencesRow(
            englishText:
                "The survey found no correspondence between crime and unemployment rates.",
            kurdishText:
                "ڕاپرسییەکە ھیچ پەیوەندی لە نێوان ڕێژەی تاوان و بێ‌کاریدا نەدۆزییەوە.",
            onPressedBritish: () => speakcorrespondences7("en-GB"),
            onPressedAmerican: () => speakcorrespondences7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Here, the correspondency between the two situations ends.",
            kurdishText: "لێرەدا، پەیوەندی نێوان دوو دۆخەکە کۆتایی دێت.",
            onPressedBritish: () => speakcorrespondences8("en-GB"),
            onPressedAmerican: () => speakcorrespondences8("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: correspondence (derived forms: correspondences)
1. Communication by the exchange of messages (letters, e-mails, etc.)
 
2. Compatibility of observations (= agreement)
"the results of two tests were in correspondence";
 
3. The relation of corresponding in degree, size or amount (= commensurateness, proportionateness)
 
4. (mathematics) an attribute of a shape or relation; exact reflection of form on opposite sides of a dividing line or plane (= symmetry, symmetricalness, balance)
 
5. Similarity by virtue of corresponding (= parallelism)
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

  final String _videoId = 'QVoleJYgdM8';
  final double _startSeconds = 341;

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

  final String _videoId = '0sazcZ8wwZc';
  final double _startSeconds = 245;

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

  final String _videoId = 'IBRBO7KkFTo';
  final double _startSeconds = 743;

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

  final String _videoId = 'pXWyeg2GFBc';
  final double _startSeconds = 1388;

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

  final String _videoId = '4IaOeVgZ-wc';
  final double _startSeconds = 5622;

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

  final String _videoId = 'GsK5NaSCkho';
  final double _startSeconds = 88;

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

  final String _videoId = 'WwhyZUlmaWA';
  final double _startSeconds = 3291;

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