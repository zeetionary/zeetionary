import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeclaration extends StatefulWidget {
  const EnglishEntrydeclaration({super.key});

  @override
  State<EnglishEntrydeclaration> createState() =>
      _EnglishEntrydeclarationState();
}

class _EnglishEntrydeclarationState extends State<EnglishEntrydeclaration> {
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
    return const EntryTitle(word: "declaration");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: declaration");
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
    return const IPAofEnglish(text: "IpaUK: /ˌdekləˈreɪʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclaration(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declaration");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeclaration("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˌdekləˈreɪʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclaration(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declaration");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeclaration("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclarations1(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The declaration asked governments to consider introducing new environmental taxes.");
  }

  Future<void> speakdeclarations2(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The government will issue a formal declaration tomorrow.");
  }

  Future<void> speakdeclarations3(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All four countries have adopted the declaration against hunting these rare animals.");
  }

  Future<void> speakdeclarations4(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had been waiting for him to make a declaration of love.");
  }

  Future<void> speakdeclarations5(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Russian leader received a ringing declaration of support yesterday.");
  }

  Future<void> speakdeclarations6(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We were asked to sign a declaration to the effect that we were UK citizens.");
  }

  Future<void> speakdeclarations7(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("False declaration of hours worked may lead to dismissal.");
  }

  Future<void> speakdeclarations8(String languageCode) async {
    // DOPSUM: CHANGE speakdeclaration
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The declaration of the poll will take place tomorrow morning.");
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
کوردی: ڕاگەیاندن، ڕاگەھاندن، بانگ، بانگ‌ڕاھێشتن، دانەزانین، ئاگادارکردنەوە، بانگەواز،	دەربڕین، ئاشکراکردن، وتن، ڕاگەیاندن‌نامە، ئاگاداری، داخویانی، بەیان‌نامە،	ئاگانامە، ڕاگەیاندن‌نامە (باج و ھتد)
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بەیاننامەیەکی فەرمی، بەتایبەتی سەبارەت بە کاری حلومەت یان دامەزراوەیەک"),
          SentencesRow(
            englishText:
                "The declaration asked governments to consider introducing new environmental taxes.",
            kurdishText:
                "بەیاننامەکە داوای لە حکومەتەکان کرد کە باجی ژینگەیی تازە لەبەرچاو بگرن.", // declaration
            onPressedBritish: () => speakdeclarations1("en-GB"),
            onPressedAmerican: () => speakdeclarations1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The government will issue a formal declaration tomorrow.",
            kurdishText: "حکومەت سبەی بەیانامەیەکی فەرمی ڕادەگەیەنێت.",
            onPressedBritish: () => speakdeclarations2("en-GB"),
            onPressedAmerican: () => speakdeclarations2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "All four countries have adopted the declaration against hunting these rare animals.",
            kurdishText:
                "ھەر چوار وڵاتەکە ڕازی بوونە بە بەیاننامەیەک دژ بە ڕاوکردنی ئەم ئاژەڵە دەگمەنانە.",
            onPressedBritish: () => speakdeclarations3("en-GB"),
            onPressedAmerican: () => speakdeclarations3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) لێدوانێکی نووسراو یان گوتراو، بەتایبەتی سەبارەت بەوەی کە خەڵکی ھەست یان باوەڕیان چۆنە"),
          SentencesRow(
            englishText:
                "She had been waiting for him to make a declaration of love.",
            kurdishText: "چاوەڕوانی بوو کە خۆشەویستیی بۆ بەیان بکات.",
            onPressedBritish: () => speakdeclarations4("en-GB"),
            onPressedAmerican: () => speakdeclarations4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The Russian leader received a ringing declaration of support yesterday.",
            kurdishText: "سەرۆکی ڕووسیا دوێنێ بەیانێکی بەھێزی پشتیوانی پێگەشت.",
            onPressedBritish: () => speakdeclarations5("en-GB"),
            onPressedAmerican: () => speakdeclarations5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) لێدوانێکی فەرمی نووسراو کە زانیاری دەدات"),
          SentencesRow(
            englishText:
                "We were asked to sign a declaration to the effect that we were UK citizens.",
            kurdishText:
                "داوامان لێکرا ڕاگەیاندنامەیەک واژۆ بکەین بەو واتایەی کە ھاوڵاتی بەریتانیاین.",
            onPressedBritish: () => speakdeclarations6("en-GB"),
            onPressedAmerican: () => speakdeclarations6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "False declaration of hours worked may lead to dismissal.",
            kurdishText:
                "بە ھەڵە ڕاگەیاندنی کاتژمێرەکانی کارکردن ڕەنگە ببێتە ھۆکاری دەرکردن.",
            onPressedBritish: () => speakdeclarations7("en-GB"),
            onPressedAmerican: () => speakdeclarations7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ڕاگەیاندنی ئەنجامی ھەڵبژاردن"),
          SentencesRow(
            englishText:
                "The declaration of the poll will take place tomorrow morning.",
            kurdishText: "ڕاگەیاندنی سەرژمێرییەکە بەیانی سبەی دەبێت.",
            onPressedBritish: () => speakdeclarations8("en-GB"),
            onPressedAmerican: () => speakdeclarations8("en-US"),
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
- Noun: declaration (derived forms: declarations)
1. A statement that is emphatic and explicit (spoken or written)
 
2. (law) unsworn statement that can be admitted in evidence in a legal transaction
"his declaration of innocence"
 
3. A statement of taxable goods or of dutiable properties
 
4. (contract bridge) the highest bid becomes the contract setting the number of tricks that the bidder must make (= contract)
 
5. A formal public statement (= announcement, proclamation, annunciation)
"a declaration of independence";
 
6. A formal expression by a meeting; agreed to by a vote (= resolution, resolve)
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

  final String _videoId = 'gdgPAetNY5U';
  final double _startSeconds = 798;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 147;

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

  final String _videoId = 'hA95iw4B2jg';
  final double _startSeconds = 162;

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

  final String _videoId = 'pzvbUpKU4eE';
  final double _startSeconds = 201;

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

  final String _videoId = '0lGvBynSCQQ';
  final double _startSeconds = 47;

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

  final String _videoId = 'ElQdUHSXkME';
  final double _startSeconds = 197;

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

  final String _videoId = 'ZnEIEtNuSpM';
  final double _startSeconds = 801;

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