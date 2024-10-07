import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisorder extends StatefulWidget {
  const EnglishEntrydisorder({super.key});

  @override
  State<EnglishEntrydisorder> createState() => _EnglishEntrydisorderState();
}

class _EnglishEntrydisorderState extends State<EnglishEntrydisorder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
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
    return const EntryTitle(word: "disorder");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disorder");
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
    return const IPAofEnglish(text: "IpaUK: /dɪsˈɔːdə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisorder(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disorder");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisorder("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪsˈɔːrdər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisorder(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disorder");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisorder("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisorders1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was diagnosed with an anxiety disorder.");
  }

  Future<void> speakdisorders2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This is a rare disorder of the liver.");
  }

  Future<void> speakdisorders3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has a rare blood disorder.");
  }

  Future<void> speakdisorders4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room was in a state of disorder.");
  }

  Future<void> speakdisorders5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His financial affairs were in complete disorder.");
  }

  Future<void> speakdisorders6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Everyone began shouting at once and the meeting broke up in disorder.");
  }

  Future<void> speakdisorders7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Twenty people were arrested after a night of civil disorder.");
  }

  Future<void> speakdisorders8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The initiative aims to tackle alcohol-related disorder in towns.");
  }

  Future<void> speakdisorders9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Troops were sent in to quell the disorder.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: شێواوی، ئاڵۆزی، شپرزەیی، شڵەژاوی، ناڕێک‌وپێکی، تێکەولێکەیی، ناڕێکی،، پشێوی، شێواوی، نائارامی، شلوقی، ئاژاوە، سەرھەڵدان، گەڕەلاوژە، پاشاگەردانی، ئاخۆران‌وباخۆران،	نەخۆشی، ناڕەحەتی، ناسازی، تێکچوون
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) دۆخێک یان نەخۆشییەک کە کاریگەری لەسەر شێوازی کارکردنی بەشێکی جەستە دەبێت"),
          SentencesRow(
            englishText: "He was diagnosed with an anxiety disorder.",
            kurdishText: "بەوە ناسێنرا کە کێشەی خەمۆکی ھەیە.",
            onPressedBritish: () => speakdisorders1("en-GB"),
            onPressedAmerican: () => speakdisorders1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This is a rare disorder of the liver.",
            kurdishText: "ئەمە ناتەواوییەکی دەگمەنی جگەرە.",
            onPressedBritish: () => speakdisorders2("en-GB"),
            onPressedAmerican: () => speakdisorders2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She has a rare blood disorder.",
            kurdishText: "ناڕێکییەکی دەگمەنی خوێنی ھەیە.",
            onPressedBritish: () => speakdisorders3("en-GB"),
            onPressedAmerican: () => speakdisorders3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) دۆخێکی شێواو"),
          SentencesRow(
            englishText: "The room was in a state of disorder.",
            kurdishText: "دۆخەکە لە شپرزاییدا بوو.",
            onPressedBritish: () => speakdisorders4("en-GB"),
            onPressedAmerican: () => speakdisorders4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His financial affairs were in complete disorder.",
            kurdishText: "دۆخی داراییان تەواو لە خراپیدا بوو.",
            onPressedBritish: () => speakdisorders5("en-GB"),
            onPressedAmerican: () => speakdisorders5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Everyone began shouting at once and the meeting broke up in disorder.",
            kurdishText:
                "ھەموان دەستیان بە ھاوارکردن کرد کە کۆبوونەوەکە بە شلۆقی کۆتایی ھات.",
            onPressedBritish: () => speakdisorders6("en-GB"),
            onPressedAmerican: () => speakdisorders6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ڕەفتاری توندوتیژی گرووپێکی گەورە لە خەڵکی"),
          SentencesRow(
            englishText:
                "Twenty people were arrested after a night of civil disorder.",
            kurdishText: "بیست کەس دەستگیرکران لە دوای شەوێک لە ئاڵۆزی.",
            onPressedBritish: () => speakdisorders7("en-GB"),
            onPressedAmerican: () => speakdisorders7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The initiative aims to tackle alcohol-related disorder in towns.",
            kurdishText:
                "ھەنگاوەکە ئامانجیەتی مامەڵە لەگەڵ پشێویی پەیوەندیدار بە مادە کحوولییەکان بکات.",
            onPressedBritish: () => speakdisorders8("en-GB"),
            onPressedAmerican: () => speakdisorders8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Troops were sent in to quell the disorder.",
            kurdishText: "ھێزەکان نێردران بۆ ئەوەی ئاڵۆزییەکە دابمرکێننەوە.",
            onPressedBritish: () => speakdisorders9("en-GB"),
            onPressedAmerican: () => speakdisorders9("en-US"),
          ),
          // disorders_10disorders10
          // disorders11disorders11
          // disorders12disorders12
          // disorders13disorders13
          // disorders14disorders14
          // disorders15disorders15
          // disorders16disorders16
          // disorders17disorders17
          // disorders18disorders18
          // disorders19disorders19
          // disorders_20disorders20
          // disorders21disorders21
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
- Noun: disorder (derived forms: disorders)
1. A physical condition in which there is a disturbance of normal functioning (= upset)
"the doctor prescribed some medicine for the disorder";
 
2. A condition in which things are not in their expected places (= disorderliness)
"the files are in complete disorder";
 
3. A disturbance of the peace or of public order

- Verb: disorder (derived forms: disorders, disordering, disordered)
1. Disturb in mind or make uneasy or cause to be worried or alarmed (= perturb, unhinge, disquiet, trouble, cark, distract)
 
2. Bring disorder to (= disarray)
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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1186;

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

  final String _videoId = 'dNKQYjsxgPU';
  final double _startSeconds = 157;

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

  final String _videoId = 'Sbp_EeBk-As';
  final double _startSeconds = 82;

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

  final String _videoId = 'e-or_D-qNqM';
  final double _startSeconds = 107;

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

  final String _videoId = 'n7WH7A2v7OU';
  final double _startSeconds = 0;

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

  final String _videoId = 'T-_HKFjxVl0';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'Hw1X5oFPgro';
  final double _startSeconds = 1724;

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