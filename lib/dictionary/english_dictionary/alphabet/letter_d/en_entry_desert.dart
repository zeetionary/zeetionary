import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydesert extends StatefulWidget {
  const EnglishEntrydesert({super.key});

  @override
  State<EnglishEntrydesert> createState() => _EnglishEntrydesertState();
}

class _EnglishEntrydesertState extends State<EnglishEntrydesert> {
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
    return const EntryTitle(word: "desert");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: desert");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdezət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesert(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("desert");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdesert("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdezərt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesert(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("desert");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdesert("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeserts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Somalia is mostly desert.");
  }

  Future<void> speakdeserts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They travelled many miles across burning desert sands.");
  }

  Future<void> speakdeserts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was deserted by her husband.");
  }

  Future<void> speakdeserts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don’t worry—I won’t desert you.");
  }

  Future<void> speakdeserts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The villages had been deserted.");
  }

  Future<void> speakdeserts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Large numbers of soldiers deserted as defeat became inevitable.");
  }

  Future<void> speakdeserts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The soldiers had deserted the US army to fight for Mexico.");
  }

  Future<void> speakdeserts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Millions of voters are deserting the party.");
  }

  Future<void> speakdeserts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why did you desert teaching for politics?");
  }

  Future<void> speakdeserts20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They travelled many miles across burning desert sands.0");
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
کوردی: بیابان، دەشت، چۆڵگە، چۆڵەوانی، ئاران، چۆڵەوار، ئیشکارۆ،	(خوازە) شوێنی کە ھیچ چالاکی‌یەکی لێ‌نەبێ، وێرانە، چۆڵگە،	بیابانی، دەشتی، وشک، بێ‌شیناوەرد، بێ‌ئاو و گیا،	چۆڵ، چۆڵ‌وھۆڵ
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بیابان؛ ناوچەیەکی گەورە کە ئاو و ڕووەکی لێ نییە یان کەمی لێیە"),
          SentencesRow(
            englishText: "Somalia is mostly desert.",
            kurdishText: "وڵاتی سۆماڵ زۆری بیابانە.", // desert
            onPressedBritish: () => speakdeserts1("en-GB"),
            onPressedAmerican: () => speakdeserts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They travelled many miles across burning desert sands.",
            kurdishText: "چەندین میل بە خاکی بیابانی گەرمدا گەشتیان کرد.",
            onPressedBritish: () => speakdeserts2("en-GB"),
            onPressedAmerican: () => speakdeserts2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) جێھێشتنی کەسێک بەبێ یارمەتی و پشتگیری"),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was deserted by her husband.",
            kurdishText: "ھاوسەرەکەی جێیھێشت.",
            onPressedBritish: () => speakdeserts3("en-GB"),
            onPressedAmerican: () => speakdeserts3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Don’t worry—I won’t desert you.",
            kurdishText: "نیگەران مەبە ـ بەجێت ناھێڵم.",
            onPressedBritish: () => speakdeserts4("en-GB"),
            onPressedAmerican: () => speakdeserts4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) ڕۆشتن لە شوێنێک و جێھێشتنی بە بەتاڵی"),
          SentencesRow(
            englishText: "The villages had been deserted.",
            kurdishText: "گوندەکان چۆڵکراون.",
            onPressedBritish: () => speakdeserts5("en-GB"),
            onPressedAmerican: () => speakdeserts5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) جێھێشتنی سوپا بەبێ مۆڵەت"),
          SentencesRow(
            englishText:
                "Large numbers of soldiers deserted as defeat became inevitable.",
            kurdishText:
                "ژمارەیەکی زۆر سەرباز ھەڵھاتن لە شکست تەواو ڕوون بوویەوە.",
            onPressedBritish: () => speakdeserts6("en-GB"),
            onPressedAmerican: () => speakdeserts6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The soldiers had deserted the US army to fight for Mexico.",
            kurdishText:
                "سەربازەکان سوپای ئەمریکایان جێھێشت بۆ شەڕکردن بۆ مەکسیک.",
            onPressedBritish: () => speakdeserts7("en-GB"),
            onPressedAmerican: () => speakdeserts7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) جێھێشتنی دامەزراوەیەک یان وەستان لە چالاکییەک"),
          SentencesRow(
            englishText: "Millions of voters are deserting the party.",
            kurdishText: "ملیۆنان دەنگدەر پارتەکە جێدێڵن.",
            onPressedBritish: () => speakdeserts8("en-GB"),
            onPressedAmerican: () => speakdeserts8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Why did you desert teaching for politics?",
            kurdishText: "بۆچی وازت لە مامۆستایەتی ھێنا لە پێناو سیاسەتدا؟",
            onPressedBritish: () => speakdeserts9("en-GB"),
            onPressedAmerican: () => speakdeserts9("en-US"),
          ),
          // deserts1000"),
          // speakdeserts10
          // deserts10("en-US"),
          // deserts1100"),
          // speakdeserts11
          // deserts11("en-US"),
          // deserts1200"),
          // speakdeserts12
          // deserts12("en-US"),
          // deserts1300"),
          // speakdeserts13
          // deserts13("en-US"),
          // deserts1400"),
          // speakdeserts14
          // deserts14("en-US"),
          // deserts1500"),
          // speakdeserts15
          // deserts15("en-US"),
          // deserts1600"),
          // speakdeserts16
          // deserts16("en-US"),
          // deserts1700"),
          // speakdeserts17
          // deserts17("en-US"),
          // deserts1800"),
          // speakdeserts18
          // deserts18("en-US"),
          // deserts1900"),
          // speakdeserts19
          // deserts19("en-US"),
          // "They travelled many miles across burning desert sands.0"),
          // speakdeserts20
          // deserts20("en-US"),
          // deserts2100"),
          // speakdeserts21
          // deserts21("en-US"),
          // deserts2200"),
          // speakdeserts22
          // deserts22("en-US"),
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
- Verb: desert (derived forms: deserts, deserted, deserting)
1. Leave someone who needs or counts on you; leave in the lurch (= abandon, forsake [literary], desolate)
"The mother deserted her children";
 
2. Leave (a cause, a country or an army), often in order to join the opposing cause, country, or army (= defect)
"If soldiers deserted Hitler's army, they were shot";
 
3. Leave behind
"the students deserted the campus after the end of exam period"

- Noun: desert (derived forms: deserts
1. (usually plural) a person's deservingness of or entitlement to reward or punishment
 
2. Arid land with little or no vegetation
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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 1250;

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

  final String _videoId = 'MnExgQ81fhU';
  final double _startSeconds = 855;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1720;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1485;

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

  final String _videoId = 'dJzTse9Dsaw';
  final double _startSeconds = 160;

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

  final String _videoId = 'XKqWnOtbSr8';
  final double _startSeconds = 93;

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

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 140;

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