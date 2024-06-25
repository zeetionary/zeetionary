import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiscreet extends StatefulWidget {
  const EnglishEntrydiscreet({super.key});

  @override
  State<EnglishEntrydiscreet> createState() => _EnglishEntrydiscreetState();
}

class _EnglishEntrydiscreetState extends State<EnglishEntrydiscreet> {
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
    return const EntryTitle(word: "discreet");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discreet");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈskriːt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscreet(String languageCode) async {
    // DOPSUM: CHANGE speakdiscreet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discreet");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiscreet("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈskriːt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscreet(String languageCode) async {
    // DOPSUM: CHANGE speakdiscreet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discreet");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiscreet("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscreets1(String languageCode) async {
    // DOPSUM: CHANGE speakdiscreet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was always very discreet about his love affairs.");
  }

  Future<void> speakdiscreets2(String languageCode) async {
    // DOPSUM: CHANGE speakdiscreet
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A discreet glance at the clock told me the interview had lasted an hour.");
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
کوردی: ھۆشیار، قایم‌کار، کارقایم، ئاگادار، ژیر، دووربین، تێگەیشتوو، بەفکر، بەبیر، ئاگادارانە، ژیرانە،	کەم‌قسە، دەم‌قورس، سڕپۆش،	نھێنی، پەنامەکی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) وریا لەوەی دەیڵێیت یان دەیکەیت، بۆ ئەوەی شتێک بە نھێنی بھێڵیتەوە یان دوور بکەویتەوە لە دروستکردنی کێشە بۆ کەسێک یان ئەوەی شەرمەزاری بکەیت"),
          SentencesRow(
            englishText: "He was always very discreet about his love affairs.",
            kurdishText:
                "ھەمیشە زۆر قایم‌کار بوو سەبارەت بە پەیوەندییە سۆزدارییەکانی.", // discreet
            onPressedBritish: () => speakdiscreets1("en-GB"),
            onPressedAmerican: () => speakdiscreets1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A discreet glance at the clock told me the interview had lasted an hour.",
            kurdishText:
                "نیگایەکی وریایانە لە کاتژمێرەکە پیشانی دام کە چاوپێکەوتنەکە یەک کاتژمێری خایاندبوو.",
            onPressedBritish: () => speakdiscreets2("en-GB"),
            onPressedAmerican: () => speakdiscreets2("en-US"),
          ),
          // discreets300"),
          // speakdiscreets3
          // discreets3("en-US"),
          // discreets400"),
          // speakdiscreets4
          // discreets4("en-US"),
          // discreets500"),
          // speakdiscreets5
          // discreets5("en-US"),
          // discreets600"),
          // speakdiscreets6
          // discreets6("en-US"),
          // discreets700"),
          // speakdiscreets7
          // discreets7("en-US"),
          // discreets800"),
          // speakdiscreets8
          // discreets8("en-US"),
          // discreets900"),
          // speakdiscreets9
          // discreets9("en-US"),
          // discreets_1000"),
          // speakdiscreets10
          // discreets10("en-US"),
          // discreets1100"),
          // speakdiscreets11
          // discreets11("en-US"),
          // discreets1200"),
          // speakdiscreets12
          // discreets12("en-US"),
          // discreets1300"),
          // speakdiscreets13
          // discreets13("en-US"),
          // discreets1400"),
          // speakdiscreets14
          // discreets14("en-US"),
          // discreets1500"),
          // speakdiscreets15
          // discreets15("en-US"),
          // discreets1600"),
          // speakdiscreets16
          // discreets16("en-US"),
          // discreets1700"),
          // speakdiscreets17
          // discreets17("en-US"),
          // discreets1800"),
          // speakdiscreets18
          // discreets18("en-US"),
          // discreets1900"),
          // speakdiscreets19
          // discreets19("en-US"),
          // discreets_2000"),
          // speakdiscreets20
          // discreets20("en-US"),
          // discreets2100"),
          // speakdiscreets21
          // discreets21("en-US"),
          // discreets2200"),
          // speakdiscreets22
          // discreets22("en-US"),
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
- Adjective: discreet (derived forms: discreeter, discreetest)
1. Marked by prudence or modesty and wise self-restraint
"his trusted discreet aide"; "a discreet, finely wrought gold necklace"
 
2. Unobtrusively perceptive and sympathetic (= discerning)
"a discreet silence";
 
3. Heedful of potential consequences (= circumspect)
"a discreet investor";
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

  final String _videoId = 'lex6USTugUU';
  final double _startSeconds = 1280;

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
  final double _startSeconds = 247;

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

  final String _videoId = 'PmlRbfSavbI';
  final double _startSeconds = 729;

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

  final String _videoId = 'VgYm5fpMBYo';
  final double _startSeconds = 44;

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

  final String _videoId = 'qdph7XaOUL8';
  final double _startSeconds = 177;

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

  final String _videoId = 'rdt5-S5ZaYo';
  final double _startSeconds = 329;

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

  final String _videoId = '3yFujN0G28o';
  final double _startSeconds = 685;

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