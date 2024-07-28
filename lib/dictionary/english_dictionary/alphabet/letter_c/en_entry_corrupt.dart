import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycorrupt extends StatefulWidget {
  const EnglishEntrycorrupt({super.key});

  @override
  State<EnglishEntrycorrupt> createState() => _EnglishEntrycorruptState();
}

class _EnglishEntrycorruptState extends State<EnglishEntrycorrupt> {
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
    return const EntryTitle(word: "corrupt");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: corrupt");
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
    return const IPAofEnglish(text: "IpaUK: /kəˈrʌpt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrupt(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corrupt");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcorrupt("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kəˈrʌpt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrupt(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corrupt");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcorrupt("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrupts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was seen as the only way to overthrow a corrupt regime.");
  }

  Future<void> speakcorrupts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They promised to seek out the corrupt officials who had accepted the bribes.");
  }

  Future<void> speakcorrupts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They had been engaged in corrupt practices.");
  }

  Future<void> speakcorrupts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The whole system is inefficient and corrupt.");
  }

  Future<void> speakcorrupts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The file on the disk seems to be corrupt.");
  }

  Future<void> speakcorrupts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was corrupted by power and ambition.");
  }

  Future<void> speakcorrupts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The study claimed that violence on television corrupts the minds of children.");
  }

  Future<void> speakcorrupts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sect was criticized for promoting a corrupted form of Buddhism.");
  }

  Future<void> speakcorrupts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The program has somehow corrupted the system files.");
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
کوردی: خراپ، گەندەڵ، بەرتیل‌خۆر،	ھەرزە، جڵف، شپرزە،	گۆڕاو، دەسکاری‌کراو، پڕ لە ھەڵە، ھەڵاوی، پڕخەوش (زمان، دەق و ھتد
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) گەندەڵ؛ ھەبوونی ئامادەیی بۆ بەکارھێنانی دەسەڵاتی خۆیان بۆ ئەنجامدانی کاری خراپ یان نایاسایی لە بۆ پارە یان بۆ بەدەستھێنانی سوود"),
          SentencesRow(
            englishText:
                "It was seen as the only way to overthrow a corrupt regime.",
            kurdishText:
                "بە تەنھا ڕێگا بینرا بۆ کۆتایی ھێنان بە ڕژێمێکی گەندەڵ.", // corrupt", please follow LX instructions
            onPressedBritish: () => speakcorrupts1("en-GB"),
            onPressedAmerican: () => speakcorrupts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They promised to seek out the corrupt officials who had accepted the bribes.",
            kurdishText:
                "بەڵێنیان دا ئەو بەرپرسە گەندەڵانە بدۆزنەوە کە بەرتیلیان وەرگرتبوو.",
            onPressedBritish: () => speakcorrupts2("en-GB"),
            onPressedAmerican: () => speakcorrupts2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) ڕەفتاری نائەخلاقی یان خراپ"),
          SentencesRow(
            englishText: "They had been engaged in corrupt practices.",
            kurdishText: "لە کاری نائەخلاقی تێوەگلابوون.",
            onPressedBritish: () => speakcorrupts3("en-GB"),
            onPressedAmerican: () => speakcorrupts3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The whole system is inefficient and corrupt.",
            kurdishText: "تەواوی سیستەمەکە ناکارامە و خراپە.",
            onPressedBritish: () => speakcorrupts4("en-GB"),
            onPressedAmerican: () => speakcorrupts4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) فایلێکی کۆمپیوتەری کە کارناکات"),
          SentencesRow(
            englishText: "The file on the disk seems to be corrupt.",
            kurdishText: "فایلی ناو دیسکەکە تێکچووە.",
            onPressedBritish: () => speakcorrupts5("en-GB"),
            onPressedAmerican: () => speakcorrupts5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ھەبوونی کاریگەری خراپ لەسەر کەسێک و بردنی بە لای کاری نائەخلاقی و خراپدا"),
          SentencesRow(
            englishText: "He was corrupted by power and ambition.",
            kurdishText: "بە دەسەڵات و تەماح چاوی کوێر بوو.",
            onPressedBritish: () => speakcorrupts6("en-GB"),
            onPressedAmerican: () => speakcorrupts6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The study claimed that violence on television corrupts the minds of children.",
            kurdishText:
                "لێکۆڵینەوەکە توندوتیژی لەسەر تەلەفیزیۆن مێشکی منداڵان تێکدەدات.",
            onPressedBritish: () => speakcorrupts7("en-GB"),
            onPressedAmerican: () => speakcorrupts7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) گۆڕینی شێوازی سەرەتای شتێک بەشێوەیەک کە خراپ بووە"),
          SentencesRow(
            englishText:
                "The sect was criticized for promoting a corrupted form of Buddhism.",
            kurdishText:
                "گرووپەکە ڕەخنەی لێ گیردرا بۆ بانگەشە بۆ جۆرێکی تێکدراوی بودیزم.",
            onPressedBritish: () => speakcorrupts8("en-GB"),
            onPressedAmerican: () => speakcorrupts8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) تێکدانی فایلی کۆمپیوتەری بە درووستکردنی ھەڵە تێیدا"),
          SentencesRow(
            englishText: "The program has somehow corrupted the system files.",
            kurdishText: "پڕۆگرامەکە بەشێوەیەک فایلەکانی سیستەمەکەی تێکداوە.",
            onPressedBritish: () => speakcorrupts9("en-GB"),
            onPressedAmerican: () => speakcorrupts9("en-US"),
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
- Adjective: corrupt (derived forms: corrupter, corruptest)
1. Tending to act dishonestly in exchange for money or other personal gain (= crooked [informal], bent [Brit, informal])
 
2. Lacking in integrity
"humanity they knew to be corrupt...from the day of Adam's creation"; "a corrupt and incompetent city government"
 
3. Containing errors or alterations (= corrupted)
"a corrupt text";
 
4. [archaic] Touched by rot or decay (= tainted)
"corrupt bacon";

- Verb: corrupt (derived forms: corrupted, corrupting, corrupts)
1. Alter from the original to become worse or broken (= spoil)
 
2. Corrupt morally or by intemperance or sensuality (= pervert, subvert, demoralize, demoralise [Brit], debauch, debase, profane, vitiate, deprave, misdirect)
"Socrates was accused of corrupting young men"; "corrupt the morals";
 
3. (crime) make illegal payments to in exchange for favours or influence (= bribe, buy, grease the palm of)
"This judge can be corrupted";
 
4. (of someone's image or good reputation) damage, place under suspicion or cast doubt upon (= defile, sully, taint, cloud, tarnish, soil, stain)
"corrupt someone's reputation";
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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1039;

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

  final String _videoId = 'SY3y6zNTiLs';
  final double _startSeconds = 42;

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

  final String _videoId = 'USL6P8haroY';
  final double _startSeconds = 663;

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

  final String _videoId = 'Ggs_FTrwnGk';
  final double _startSeconds = 1312;

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

  final String _videoId = 'JcpboMScfIY';
  final double _startSeconds = 2875;

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

  final String _videoId = 'YCnFYvL17v4';
  final double _startSeconds = 1309;

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

  final String _videoId = 'TEFqEr7HGX4';
  final double _startSeconds = 237;

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