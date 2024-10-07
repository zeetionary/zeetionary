import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydifferent extends StatefulWidget {
  const EnglishEntrydifferent({super.key});

  @override
  State<EnglishEntrydifferent> createState() => _EnglishEntrydifferentState();
}

class _EnglishEntrydifferentState extends State<EnglishEntrydifferent> {
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
    return const EntryTitle(word: "different");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: different");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪfrənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifferent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("different");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdifferent("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪfrənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifferent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("different");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdifferent("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifferents1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "American English is significantly different from British English.");
  }

  Future<void> speakdifferents2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's slightly different to what I'm used to.");
  }

  Future<void> speakdifferents3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's different than the rest.");
  }

  Future<void> speakdifferents4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("People often give very different accounts of the same event.");
  }

  Future<void> speakdifferents5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room looks different without the furniture.");
  }

  Future<void> speakdifferents6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's try a different approach.");
  }

  Future<void> speakdifferents7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Each chapter deals with a different type of business.");
  }

  Future<void> speakdifferents8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She offered us five different kinds of cake.");
  }

  Future<void> speakdifferents9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're helping society in many different ways.");
  }

  Future<void> speakdifferents10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They are sold in many different colours.");
  }

  Future<void> speakdifferents11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The programme was about customs in different parts of the country.");
  }

  Future<void> speakdifferents12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I looked it up in three different dictionaries.");
  }

  Future<void> speakdifferents13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We come from different worlds.");
  }

  Future<void> speakdifferents14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her methods are different, but no less effective for that.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: جیاواز، جیا، جۆربەجۆر، لێک‌جیا،	جۆراوجۆر،	دیکە، بێجگە، دی، تر،	تازە، نەو، نوێ
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) جیاواز لە کەسێک/شتێک"),
          SentencesRow(
            englishText:
                "American English is significantly different from British English.",
            kurdishText: "ئینگلیزی ئەمریکی تەواو جیاوازە لە ئینگلیزی بەریتانی.",
            onPressedBritish: () => speakdifferents1("en-GB"),
            onPressedAmerican: () => speakdifferents1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It's slightly different to what I'm used to.",
            kurdishText: "کەمێکی جیاوازە لەوەی پێی ڕاھاتووم.",
            onPressedBritish: () => speakdifferents2("en-GB"),
            onPressedAmerican: () => speakdifferents2("en-US"),
          ),
          SentencesRow(
            englishText: "He's different than the rest.",
            kurdishText: "جیاوازە لەوانی دیکە.",
            onPressedBritish: () => speakdifferents3("en-GB"),
            onPressedAmerican: () => speakdifferents3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "People often give very different accounts of the same event.",
            kurdishText: "خەڵکی زۆرجار گێڕانەوەی جیاوازی ھەمان ڕووداو دەدەن.",
            onPressedBritish: () => speakdifferents4("en-GB"),
            onPressedAmerican: () => speakdifferents4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The room looks different without the furniture.",
            kurdishText: "ژوورەکە تەواو جیاوازە بەبێ کەلوپەلەکان.",
            onPressedBritish: () => speakdifferents5("en-GB"),
            onPressedAmerican: () => speakdifferents5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Let's try a different approach.",
            kurdishText: "با ڕێگایەکی تازە تاقیبکەینەوە.",
            onPressedBritish: () => speakdifferents6("en-GB"),
            onPressedAmerican: () => speakdifferents6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) کە لە پێش ناوەوە بەکاردێت واتا جیاواز و تاک بە تاک"),
          SentencesRow(
            englishText:
                "Each chapter deals with a different type of business.",
            kurdishText: "ھەر بەشێک باس لە جۆرێکی جیاوازی بازرگانی دەکات.",
            onPressedBritish: () => speakdifferents7("en-GB"),
            onPressedAmerican: () => speakdifferents7("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "She offered us five different kinds of cake.",
                    kurdishText: "جۆری جیاوازی کێکیان پێداین.",
                    onPressedBritish: () => speakdifferents8("en-GB"),
                    onPressedAmerican: () => speakdifferents8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "We're helping society in many different ways.",
                    kurdishText: "بەشێوەی جیاواز یارمەتی کۆمەڵگا دەدەین.",
                    onPressedBritish: () => speakdifferents9("en-GB"),
                    onPressedAmerican: () => speakdifferents9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "They are sold in many different colours.",
                    kurdishText: "بەزۆر ڕەنگی جیاواز دەفرۆشرێت.",
                    onPressedBritish: () => speakdifferents10("en-GB"),
                    onPressedAmerican: () => speakdifferents10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The programme was about customs in different parts of the country.",
                    kurdishText:
                        "پڕۆگرامەکە سەبارەت بە نەریتە جیاوازەکانی وڵاتەکە بوو.",
                    onPressedBritish: () => speakdifferents11("en-GB"),
                    onPressedAmerican: () => speakdifferents11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "I looked it up in three different dictionaries.",
                    kurdishText: "لە سێ فەرھەنگی جیاواز بۆی گەڕام.",
                    onPressedBritish: () => speakdifferents12("en-GB"),
                    onPressedAmerican: () => speakdifferents12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "We come from different worlds.",
                    kurdishText: "سەر بە جیھانی جیاوازین.",
                    onPressedBritish: () => speakdifferents13("en-GB"),
                    onPressedAmerican: () => speakdifferents13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) نامۆ؛ نەک وەک کەس یان شتانی دیکە"),
          SentencesRow(
            englishText:
                "Her methods are different, but no less effective for that.",
            kurdishText:
                "ڕێگاکانی نامۆن، بەڵام بەھۆی ئەوە ھیچ کەمتر کاریگەر نین.",
            onPressedBritish: () => speakdifferents14("en-GB"),
            onPressedAmerican: () => speakdifferents14("en-US"),
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
- Adjective: different 
1. Unlike in nature, quality, form or degree
"took different approaches to the problem"; "came to a different conclusion"; "different parts of the country"; "on different sides of the issue"; "this meeting was different from the earlier one"
 
2. Distinctly separate from the first
"that's another (or different) issue altogether"
 
3. Differing from all others; not ordinary
"advertising that strives continually to be different"; "this new music is certainly different but I don't really like it"
 
4. Distinct or separate
"each interviewed different members of the community"
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 112;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 99;

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

  final String _videoId = '9sRQQRiltrE';
  final double _startSeconds = 12;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 197;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 951;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 652;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 713;

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