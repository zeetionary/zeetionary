import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeadly extends StatefulWidget {
  const EnglishEntrydeadly({super.key});

  @override
  State<EnglishEntrydeadly> createState() => _EnglishEntrydeadlyState();
}

class _EnglishEntrydeadlyState extends State<EnglishEntrydeadly> {
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
    return const EntryTitle(word: "deadly");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deadly");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdedli/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeadly(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deadly");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeadly("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdedli/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeadly(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deadly");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeadly("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeadlys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was charged with possession of a deadly weapon.");
  }

  Future<void> speakdeadlys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The cobra is one of the world's deadliest snakes.");
  }

  Future<void> speakdeadlys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The terrorists have chosen to play a deadly game with the civilian population.");
  }

  Future<void> speakdeadlys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We sat in deadly silence.");
  }

  Future<void> speakdeadlys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They are deadly enemies.");
  }

  Future<void> speakdeadlys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The missile found its target with deadly accuracy.");
  }

  Future<void> speakdeadlys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His aim is deadly.");
  }

  Future<void> speakdeadlys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The man possessed an absolutely deadly charm.");
  }

  Future<void> speakdeadlys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The lecture was absolutely deadly.");
  }

  Future<void> speakdeadlys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I thought she was joking but she was deadly serious.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: کوشندە، مەرگاوی، قڕتێخەر، تیابەر، مەرگ‌بار،	(دوژمنایەتی) خوێنی، قەستەسەر، ئاشتەوەنەبوو، قیناوی، ڕقاوی، توندوتیژ،	کاریگەر، پرباندۆر، کارا،	وەکوو مردوو، مردووئاسا،	ماندووکەر، وەڕەس‌کەر، ناخۆش،	یەکجار،	(گوناھـ) گەورە، یەکجار، وەکوو مردوو
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) کوشندە؛ کە مردنی لێدەکەوێتەوە ئان ئەگەری ھەیە"),
          SentencesRow(
            englishText: "He was charged with possession of a deadly weapon.",
            kurdishText: "تاوانبارکرا بە ھەڵگرتنی چەکی کوشندە.",
            onPressedBritish: () => speakdeadlys1("en-GB"),
            onPressedAmerican: () => speakdeadlys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The cobra is one of the world's deadliest snakes.",
            kurdishText: "کوبرا یەکێکە لە ھەرە کوشندەترین مارەکانی جیھان.",
            onPressedBritish: () => speakdeadlys2("en-GB"),
            onPressedAmerican: () => speakdeadlys2("en-US"),
          ),
          SentencesRow(
            englishText:
                "The terrorists have chosen to play a deadly game with the civilian population.",
            kurdishText:
                "تیرۆریستەکان بڕیاریان داوە یارییەکی کوشندە لەگەڵ دانیشتووانە مەدەنییەکە بکەن.",
            onPressedBritish: () => speakdeadlys3("en-GB"),
            onPressedAmerican: () => speakdeadlys3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) بە ئاستێکی زۆر"),
          SentencesRow(
            englishText: "We sat in deadly silence.",
            kurdishText: "لە بێ دەنگییەکی تەواودا دانیشتین.",
            onPressedBritish: () => speakdeadlys4("en-GB"),
            onPressedAmerican: () => speakdeadlys4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They are deadly enemies (= are full of hatred for each other).",
            kurdishText: "دووژمنی سەرسەختن.",
            onPressedBritish: () => speakdeadlys5("en-GB"),
            onPressedAmerican: () => speakdeadlys5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The missile found its target with deadly accuracy.",
            kurdishText: "مووشەکەکە گەشت ئامانجەکەی بە وردیی تەواوەوە.",
            onPressedBritish: () => speakdeadlys6("en-GB"),
            onPressedAmerican: () => speakdeadlys6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) تەواو کاریگەر؛ بەشێوەیەک کە بەرگری بەرامبەری ناکرێت"),
          SentencesRow(
            englishText:
                "His aim is deadly (= so accurate that he can kill easily).",
            kurdishText: "ئامانجەکەی کوشندەیە.",
            onPressedBritish: () => speakdeadlys7("en-GB"),
            onPressedAmerican: () => speakdeadlys7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The man possessed an absolutely deadly charm.",
            kurdishText: "پیاوەکە خاوەنی جوانییەکی تەواو بێ ھاوتا بوو.",
            onPressedBritish: () => speakdeadlys8("en-GB"),
            onPressedAmerican: () => speakdeadlys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) زۆر بێزارکەر"),
          SentencesRow(
            englishText: "The lecture was absolutely deadly.",
            kurdishText: "وانەکە تەواو بێزارکەر بوو.",
            onPressedBritish: () => speakdeadlys9("en-GB"),
            onPressedAmerican: () => speakdeadlys9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵکار) تا ئاستێکی زۆر"),
          SentencesRow(
            englishText: "I thought she was joking but she was deadly serious.",
            kurdishText: "وام بیرکردەوە کە گاڵتە دەکات بەڵام تەواو جدی بوو.",
            onPressedBritish: () => speakdeadlys10("en-GB"),
            onPressedAmerican: () => speakdeadlys10("en-US"),
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
- Adjective: deadly (derived forms: deadliest, deadlier)
1. Causing or capable of causing death (= deathly, mortal)
"a deadly enemy";
 
2. Of an instrument of certain death (= lethal)
"deadly poisons";
 
3. Extremely poisonous or injurious; producing venom (= venomous, virulent)
"deadly snakes";
 
4. (theology) involving loss of divine grace or spiritual death (= mortal)
"the seven deadly sins";
 
5. Exceedingly harmful (= baneful, pernicious, pestilent)
 
6. (of a disease) having a rapid course and violent effect
 
7. [informal] So lacking in interest as to cause mental weariness (= boring, deadening, dull, ho-hum [informal], irksome, slow, tedious, tiresome, wearisome, unamusing, draggy [informal], mind-numbing)

- Adverb: deadly 
1. As if dead (= lifelessly)
 
2. (used as intensives) excessively (= madly, insanely, deucedly, devilishly)
"deadly dull"; "deadly earnest"; 
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

  final String _videoId = 'fZJGTevM3QI';
  final double _startSeconds = 21;

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

  final String _videoId = 'wir7jmefyec';
  final double _startSeconds = 126;

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

  final String _videoId = 'HgbxUMx3JWA';
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

  final String _videoId = 'Gv4Af83KFrE';
  final double _startSeconds = 1146;

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

  final String _videoId = 'NeZ4yXyzUG0';
  final double _startSeconds = 63;

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

  final String _videoId = 'lsbcN9-jU1Y';
  final double _startSeconds = 1512;

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

  final String _videoId = 'Xzv84ZdtlE0';
  final double _startSeconds = 285;

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