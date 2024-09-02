import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisgrace extends StatefulWidget {
  const EnglishEntrydisgrace({super.key});

  @override
  State<EnglishEntrydisgrace> createState() => _EnglishEntrydisgraceState();
}

class _EnglishEntrydisgraceState extends State<EnglishEntrydisgrace> {
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
    return const EntryTitle(word: "disgrace");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disgrace");
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
    return const IPAofEnglish(text: "IpaUK: /dɪsˈɡreɪs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisgrace(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disgrace");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisgrace("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪsˈɡreɪs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisgrace(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disgrace");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisgrace("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisgraces1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her behaviour has brought disgrace on her family.");
  }

  Future<void> speakdisgraces2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The swimmer was sent home from the Olympics in disgrace.");
  }

  Future<void> speakdisgraces3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sam was in disgrace with his parents.");
  }

  Future<void> speakdisgraces4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There is no disgrace in being poor.");
  }

  Future<void> speakdisgraces5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Your homework is an absolute disgrace.");
  }

  Future<void> speakdisgraces6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The state of our roads is a national disgrace.");
  }

  Future<void> speakdisgraces7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("That sort of behaviour is a disgrace to the legal profession.");
  }

  Future<void> speakdisgraces8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You are a disgrace to this school.");
  }

  Future<void> speakdisgraces9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I disgraced myself by drinking far too much.");
  }

  Future<void> speakdisgraces10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had disgraced the family name.");
  }

  Future<void> speakdisgraces11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was publicly disgraced and sent into exile.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: بێ‌ئابڕوویی، ئابڕووچوویی، شوورەیی، ناوزڕاوی، سووکی، ڕووڕەشی، ڕووسیاباری، شوورەیی، نەنگ، عەیب، مایەی ئابڕووچوون، مایەی شوورەیی یا شەرم،	بێ‌مەیلی، ساردوسڕ، تووڕەیی، ڕق‌ھەستاوی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) لەدەستدانی ڕێز و پەسەندبوون لای کەسانی دیکە بەھۆی خراۆی ڕەفتار"),
          SentencesRow(
            englishText: "Her behaviour has brought disgrace on her family.",
            kurdishText: "ھەڵسوکەوتی شەرمی ھێناوە بۆ خانەوادەکەی.",
            onPressedBritish: () => speakdisgraces1("en-GB"),
            onPressedAmerican: () => speakdisgraces1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The swimmer was sent home from the Olympics in disgrace.",
            kurdishText:
                "مەلەوانەکە بە شەرمەوە لە ئۆڵۆمپیاد نێردرایەوە ماڵەوە-.",
            onPressedBritish: () => speakdisgraces2("en-GB"),
            onPressedAmerican: () => speakdisgraces2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Sam was in disgrace with his parents.",
            kurdishText: "سام شەرمەزاری دایک و باوکی بوو.",
            onPressedBritish: () => speakdisgraces3("en-GB"),
            onPressedAmerican: () => speakdisgraces3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There is no disgrace in being poor.",
            kurdishText: "ھیچ شەرمێک نییە لە ھەژاربووندا.",
            onPressedBritish: () => speakdisgraces4("en-GB"),
            onPressedAmerican: () => speakdisgraces4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) شتێک کە ھێندە خراپە کە کەسانی پەیوەندیدار پێوەی دەبێت ھەست بە شەرم بکەن"),
          SentencesRow(
            englishText: "Your homework is an absolute disgrace.",
            kurdishText:
                "ئەرکی ماڵەوەت جێگەی شەرمەزارییە (زۆر خراپ ئەنجامت داوە).",
            onPressedBritish: () => speakdisgraces5("en-GB"),
            onPressedAmerican: () => speakdisgraces5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The state of our roads is a national disgrace.",
            kurdishText: "دۆخی ڕێگاکانمان ئابڕووچوونێکی نیشتیمانییە.",
            onPressedBritish: () => speakdisgraces6("en-GB"),
            onPressedAmerican: () => speakdisgraces6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "That sort of behaviour is a disgrace to the legal profession.",
            kurdishText: "ھەڵسوکەوتی وەھا شەرمە بۆ کاری یاسایی.",
            onPressedBritish: () => speakdisgraces7("en-GB"),
            onPressedAmerican: () => speakdisgraces7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You are a disgrace to this school.",
            kurdishText: "جێگەی شەرمی بۆ ئەم قوتابخانەیە.",
            onPressedBritish: () => speakdisgraces8("en-GB"),
            onPressedAmerican: () => speakdisgraces8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ڕەفتارکردن بە شێوەیەک کە شەرمەزاری لێدەکەوێتەوە"),
          SentencesRow(
            englishText: "I disgraced myself by drinking far too much.",
            kurdishText: "خۆم شەرمەزار کرد بە خواردنەوەی ئێجگار زۆر.",
            onPressedBritish: () => speakdisgraces9("en-GB"),
            onPressedAmerican: () => speakdisgraces9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He had disgraced the family name.",
            kurdishText: "ناوی خێزانەکەی شەرمەزار کردبوو.",
            onPressedBritish: () => speakdisgraces10("en-GB"),
            onPressedAmerican: () => speakdisgraces10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) لەدەستدانی ڕێزی کەسانی دیکە بە شێوەیەک کە پێگەیەکی دەسەڵات لەدەست دەدەیت"),
          SentencesRow(
            englishText: "He was publicly disgraced and sent into exile.",
            kurdishText: "بە شێوەیەکی گشتی بێڕێز کرا و دوورخرایەوە.",
            onPressedBritish: () => speakdisgraces11("en-GB"),
            onPressedAmerican: () => speakdisgraces11("en-US"),
          ),
          // disgraces12disgraces12
          // disgraces13disgraces13
          // disgraces14disgraces14
          // disgraces15disgraces15
          // disgraces16disgraces16
          // disgraces17disgraces17
          // disgraces18disgraces18
          // disgraces19disgraces19
          // disgraces_20disgraces20
          // disgraces21disgraces21
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
- Noun: disgrace (derived forms: disgraces)
1. A state of dishonour (= shame, ignominy)
"one mistake brought disgrace to all his family";
 
2. That which brings dishonour; a cause of shame or reproach
"he's a disgrace"

- Verb: disgrace (derived forms: disgraced, disgraces, disgracing)
1. Bring shame or dishonour upon (= dishonor [US], dishonour [Brit, Cdn], attaint [archaic], shame)
"he disgraced his family by committing a serious crime";
 
2. Reduce in worth or character, usually verbally (= take down, degrade, demean, put down)
"She tends to disgrace younger women colleagues";
 
3. Damage the reputation of (= discredit)
"This newspaper story disgraces the politicians";
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

  final String _videoId = 'lYu1ysDULwA';
  final double _startSeconds = 1204;

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

  final String _videoId = '5G0j_Huv2Fg';
  final double _startSeconds = 1627;

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

  final String _videoId = 'hkO8qXCFYWA';
  final double _startSeconds = 960;

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

  final String _videoId = 'LJUl77rsFEw';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'zFCFQcvceb0';
  final double _startSeconds = 168;

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

  final String _videoId = 'czrM_1gxcxA';
  final double _startSeconds = 73;

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

  final String _videoId = 'j4kI2h3iotA';
  final double _startSeconds = 1201;

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