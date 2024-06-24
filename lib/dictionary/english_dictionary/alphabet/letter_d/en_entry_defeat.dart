import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefeat extends StatefulWidget {
  const EnglishEntrydefeat({super.key});

  @override
  State<EnglishEntrydefeat> createState() => _EnglishEntrydefeatState();
}

class _EnglishEntrydefeatState extends State<EnglishEntrydefeat> {
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
    return const EntryTitle(word: "defeat");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defeat");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfiːt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefeat(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defeat");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefeat("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfiːt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefeat(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defeat");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefeat("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefeats1(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He defeated the champion in three sets.");
  }

  Future<void> speakdefeats2(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The goal is to defeat the enemy by whatever means possible.");
  }

  Future<void> speakdefeats3(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Garibaldi defeated the Neapolitan army.");
  }

  Future<void> speakdefeats4(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was said that he could not be defeated in battle.");
  }

  Future<void> speakdefeats5(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They are united in their determination to defeat global terrorism.");
  }

  Future<void> speakdefeats6(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The proposed bill was decisively defeated in Parliament.");
  }

  Future<void> speakdefeats7(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The motion was defeated by 19 votes.");
  }

  Future<void> speakdefeats8(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Writing down your password so you remember it defeats the purpose of having a password.");
  }

  Future<void> speakdefeats9(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Question 6 defeated us.");
  }

  Future<void> speakdefeats10(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The party faces defeat in the election.");
  }

  Future<void> speakdefeats11(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The world champion has only had two defeats in 20 fights.");
  }

  Future<void> speakdefeats12(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They finally had to admit defeat.");
  }

  Future<void> speakdefeats13(String languageCode) async {
    // DOPSUM: CHANGE speakdefeat
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The army inflicted a heavy defeat on rebel forces.");
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
کوردی: تێ‌شکان، شکان، شکست، ترۆقە، تێک‌شکان، بەزین، بۆڕ، دانان، دۆڕاندن
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بردنەوە دژ بە کەسێک لە جەنگ، ڕکابەری، یاری وەرزشی، ھتد"),
          SentencesRow(
            englishText: "He defeated the champion in three sets.",
            kurdishText: "پاڵەوانەکەی لە سێ قۆناغدا تێکشکاند.", // defeat
            onPressedBritish: () => speakdefeats1("en-GB"),
            onPressedAmerican: () => speakdefeats1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The goal is to defeat the enemy by whatever means possible.",
            kurdishText:
                "ئامانجەکە تێکشکاندنی دوژمنە بە ھەر ڕێگایەک پێویست بکات.",
            onPressedBritish: () => speakdefeats2("en-GB"),
            onPressedAmerican: () => speakdefeats2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Garibaldi defeated the Neapolitan army.",
            kurdishText: "گاریباڵدی سوپای ناپۆلیۆنی تێکشکاند.",
            onPressedBritish: () => speakdefeats3("en-GB"),
            onPressedAmerican: () => speakdefeats3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It was said that he could not be defeated in battle.",
            kurdishText: "دەگوترا کە نەدەکرا لە شەڕدا تێکنشکێنرێت.",
            onPressedBritish: () => speakdefeats4("en-GB"),
            onPressedAmerican: () => speakdefeats4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) وەستاندنی کەسێک لە سەرکەوتن"),
          SentencesRow(
            englishText:
                "They are united in their determination to defeat global terrorism.",
            kurdishText: "یەکگرتوون لە شێلگیرییان بۆ لەناوبردنی تیرۆریزم.",
            onPressedBritish: () => speakdefeats5("en-GB"),
            onPressedAmerican: () => speakdefeats5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The proposed bill was decisively defeated in Parliament.",
            kurdishText:
                "پڕۆژە پێشنیارکراوەکە بە توندی لە پەرلەماندا ڕەتکرایەوە.",
            onPressedBritish: () => speakdefeats6("en-GB"),
            onPressedAmerican: () => speakdefeats6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The motion was defeated by 19 votes.",
            kurdishText: "پڕۆژە یاساکە بە ١٩ دەنگ ڕەتکرایەوە.",
            onPressedBritish: () => speakdefeats7("en-GB"),
            onPressedAmerican: () => speakdefeats7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Writing down your password so you remember it defeats the purpose of having a password.",
            kurdishText:
                "نووسینی تێپەڕەوشەیەک بۆ ئەوەی بەبیرت بێتەوە مەبەستی ھەبوونی تێپەڕەوشە ناھێڵێت.",
            onPressedBritish: () => speakdefeats8("en-GB"),
            onPressedAmerican: () => speakdefeats8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) نەبوونی توانای تێگەشتن"),
          SentencesRow(
            englishText: "Question 6 defeated us.",
            kurdishText: "پرسیاری شەش شکستی پێ ھێناین.",
            onPressedBritish: () => speakdefeats9("en-GB"),
            onPressedAmerican: () => speakdefeats9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شکستھێنان لە بردنەوە یان سەرکەوتن"),
          SentencesRow(
            englishText: "The party faces defeat in the election.",
            kurdishText: "پارتەکە لە ھەڵبژاردنەکەدا ڕووبەڕووی شکست دەبێتەوە.",
            onPressedBritish: () => speakdefeats10("en-GB"),
            onPressedAmerican: () => speakdefeats10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The world champion has only had two defeats in 20 fights.",
            kurdishText:
                "پاڵەوانە نێودەوڵەتییەکە تەنھا دوو شکستی ھەبووە لە ٢٠ ڕووبەڕووبوونەوەدا.",
            onPressedBritish: () => speakdefeats11("en-GB"),
            onPressedAmerican: () => speakdefeats11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They finally had to admit defeat (= stop trying to be successful).",
            kurdishText: "لە کۆتاییدا ناچاربوون دان بە شکستدا بنێن.",
            onPressedBritish: () => speakdefeats12("en-GB"),
            onPressedAmerican: () => speakdefeats12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) تێکشکاندنی کەسێک/شتێک"),
          SentencesRow(
            englishText: "The army inflicted a heavy defeat on rebel forces.",
            kurdishText: "سوپا شکستێکی گەورەی ھێنا بەسەر ھێزە یاخیبووەکاندا.",
            onPressedBritish: () => speakdefeats13("en-GB"),
            onPressedAmerican: () => speakdefeats13("en-US"),
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
- Verb: defeat (derived forms: defeats, defeated, defeating)
1. Win a victory over (= get the better of, overcome)
"defeat your enemies";
 
2. Thwart the passage of (= kill, shoot down, vote down, vote out)
"defeat a motion";

- Noun: defeat (derived forms: defeats)
1. An unsuccessful ending to a struggle or contest (= licking)
"it was a narrow defeat"; "the army's only defeat";
 
2. The feeling that accompanies an experience of being thwarted in attaining your goals (= frustration)
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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 34;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1219;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 1073;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'HB0CZ_5sPPw';
  final double _startSeconds = 101;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 579;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1547;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 766;

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