import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycurse extends StatefulWidget {
  const EnglishEntrycurse({super.key});

  @override
  State<EnglishEntrycurse> createState() => _EnglishEntrycurseState();
}

class _EnglishEntrycurseState extends State<EnglishEntrycurse> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "curse");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: curse");
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
    return const IPAofEnglish(text: "IpaUK: /kɜːs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("curse");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcurse("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kɜːrs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("curse");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcurse("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurses1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He muttered a curse at the other driver.");
  }

  Future<void> speakcurses2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The family thought that they were under a curse.");
  }

  Future<void> speakcurses3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The witch is supposed to have put a curse on the house.");
  }

  Future<void> speakcurses4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Noise is a curse of modern city life.");
  }

  Future<void> speakcurses5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He hit his head as he stood up and cursed loudly.");
  }

  Future<void> speakcurses6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was cursing and screaming at me just because I was late.");
  }

  Future<void> speakcurses7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She cursed her bad luck.");
  }

  Future<void> speakcurses8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He cursed himself for his stupidity.");
  }

  Future<void> speakcurses9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Legend has it that the whole village had been cursed by a witch.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: دۆعالێ‌کردن، نەفرەت، خوداگیری، لەعنەت،	جنێو، جوێن، سخێف، دژوێن، دەم‌چەفتی،	بەڵا، ئاسێو، تەڵەزگە،	بێ‌نوێژی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) وشەیەکی ناشرین یان  کە ھەندێک کەس بەکاریدێنن کە تووڕەن"),
          SentencesRow(
            englishText: "He muttered a curse at the other driver.",
            kurdishText: "جنێوێکی دا بە شۆفێرەکەی دیکە.",
            onPressedBritish: () => speakcurses1("en-GB"),
            onPressedAmerican: () => speakcurses1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) وشەیەک یان دەستەواژەیەک کە ھێزی سیحری ھەیە بۆ ئەوەی شتێکی خراپ ڕووبدات"),
          SentencesRow(
            englishText: "The family thought that they were under a curse.",
            kurdishText: "خێزانەکە وایان دەزانی لەژێر نەفرەتدان.",
            onPressedBritish: () => speakcurses2("en-GB"),
            onPressedAmerican: () => speakcurses2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The witch is supposed to have put a curse on the house.",
            kurdishText:
                "سیحربازەکە وابیردەکرێتەوە کە نەفرەتی لە ماڵەکە کردبێت.",
            onPressedBritish: () => speakcurses3("en-GB"),
            onPressedAmerican: () => speakcurses3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) شتێک کە خراپەی لێدەکەوێتەوە"),
          SentencesRow(
            englishText: "Noise is a curse of modern city life.",
            kurdishText: "ژاوەژاو بەڵایەکی ژیانی سەردەمییانەی شارە.",
            onPressedBritish: () => speakcurses4("en-GB"),
            onPressedAmerican: () => speakcurses4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) جنێودان"),
          SentencesRow(
            englishText: "He hit his head as he stood up and cursed loudly.",
            kurdishText:
                "کە ھەستا ئێشی بە سەری گەیاند و بە دەنگی بەرز دەستی بە جنێودان کرد.",
            onPressedBritish: () => speakcurses5("en-GB"),
            onPressedAmerican: () => speakcurses5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She was cursing and screaming at me just because I was late.",
            kurdishText:
                "ھاواری دەکرد بە سەرمدا و جنێوی پێم دەدا تەنھا بەھۆی ئەوەی درەنگ کەوتبووم.",
            onPressedBritish: () => speakcurses6("en-GB"),
            onPressedAmerican: () => speakcurses6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) گوتنی قسەی بێ‌ڕێزانە بە خەڵکی یان بیرکردنەوە  بە خراپی دەربارەیان"),
          SentencesRow(
            englishText: "She cursed her bad luck.",
            kurdishText: "نەفرەتی لە بەختە خراپەکەی کرد.",
            onPressedBritish: () => speakcurses7("en-GB"),
            onPressedAmerican: () => speakcurses7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He cursed himself for his stupidity.",
            kurdishText: "نەفرەتی لەخۆی کرد بۆ گەمژەییەکەی.",
            onPressedBritish: () => speakcurses8("en-GB"),
            onPressedAmerican: () => speakcurses8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بەکارھێنانی سیحر بۆ زیان گەیاندن "),
          SentencesRow(
            englishText:
                "Legend has it that the whole village had been cursed by a witch.",
            kurdishText:
                "بەپێی ئەفسانەکان تەواوی گوندەکە لەلایەن ساحیرێکەوە نەفرەتی لێکراوە.",
            onPressedBritish: () => speakcurses9("en-GB"),
            onPressedAmerican: () => speakcurses9("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: curse (derived forms: cursing, cursed, curses)
1. Utter obscenities or profanities (= cuss [informal], blaspheme, swear, imprecate, eff [Brit, informal], eff and blind [Brit])
"The drunken men were cursing loudly in the street";
 
2. Heap obscenities upon
"The taxi driver who felt he didn't get a high enough tip cursed the passenger"
 
3. Wish harm upon; invoke evil upon (= beshrew [archaic], damn, bedamn [archaic], anathemize, anathemise [Brit], imprecate, maledict [archaic], doggone [N. Amer, informal], dang [N. Amer, informal])
"The bad witch cursed the child";
 
4. Exclude from a church or a religious community (= excommunicate, unchurch)
"The gay priest was cursed when he married his partner";

- Noun: curse (derived forms: curses)
1. Profane or obscene expression usually of surprise or anger (= curse word, expletive, oath, swearing, swearword, cuss [informal], cussword [N. Amer, informal])
"curses were deleted";
 
2. An appeal to some supernatural power to inflict evil on some individual or group (= execration, condemnation)
 
3. An evil spell (= hex, jinx, whammy, mozz [Austral, informal])
"a witch put a curse on his whole family";
 
4. Something causing misery or death (= bane, scourge, nemesis)
"the curse of my life";
 
5. A severe affliction (= torment)
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

  final String _videoId = 'D0x2dgpBDzc';
  final double _startSeconds = 1339;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 992;

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

  final String _videoId = 'lsFPbgK1v9I';
  final double _startSeconds = 45;

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

  final String _videoId = 'CzaJoyxRETQ';
  final double _startSeconds = 76;

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

  final String _videoId = 'qjqh9UVfNNk';
  final double _startSeconds = 705;

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

  final String _videoId = '4eGtKyc68Qw';
  final double _startSeconds = 605;

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

  final String _videoId = 'f7QWMUCMYOE';
  final double _startSeconds = 499;

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