import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrazy extends StatefulWidget {
  const EnglishEntrycrazy({super.key});

  @override
  State<EnglishEntrycrazy> createState() => _EnglishEntrycrazyState();
}

class _EnglishEntrycrazyState extends State<EnglishEntrycrazy> {
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
    return const EntryTitle(word: "crazy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crazy");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkreɪzi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrazy(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crazy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrazy("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkreɪzi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrazy(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crazy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrazy("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrazys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you crazy? We could get killed doing that.");
  }

  Future<void> speakcrazys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I'd never do anything like that. That's just crazy.");
  }

  Future<void> speakcrazys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What a crazy idea!");
  }

  Future<void> speakcrazys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Love makes you do crazy things.");
  }

  Future<void> speakcrazys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I know it sounds crazy but it just might work.");
  }

  Future<void> speakcrazys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Marie says he went crazy, and smashed the room up.");
  }

  Future<void> speakcrazys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That noise is driving me crazy.");
  }

  Future<void> speakcrazys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Doesn't it make you crazy when people don't reply to your emails?");
  }

  Future<void> speakcrazys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The crowd went crazy when the band came on stage.");
  }

  Future<void> speakcrazys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's football-crazy.");
  }

  Future<void> speakcrazys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I've been crazy about him since the first time I saw him.");
  }

  Future<void> speakcrazys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'd go crazy if I lived here.");
  }

  Future<void> speakcrazys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are a lot of crazies out there.");
  }

  Future<void> speakcrazys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My job continues to be crazy busy.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: شێت، دەلوو،	سوورەوەبوو، تووڕە،	کەر، نەفام، گەوجانە،	سەوداسەر، مردووی، کوشتەی،	سەیروسەمەرە، مرۆی شێت
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) گەمژانە"),
          SentencesRow(
            englishText: "Are you crazy? We could get killed doing that.",
            kurdishText: "شێت بوویتە؟ دەکرێت بمرین ئەوە بکەین.",
            onPressedBritish: () => speakcrazys1("en-GB"),
            onPressedAmerican: () => speakcrazys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'd never do anything like that. That's just crazy.",
            kurdishText: "ھەرگیز شتێکی وەھا ناکەم. شێتانەیە.",
            onPressedBritish: () => speakcrazys2("en-GB"),
            onPressedAmerican: () => speakcrazys2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(text: "What a crazy idea!"),
                            ExampleSentenceKurdish(
                                text: "چی بیرۆکەیەکی شێتانەیە!"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrazys3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrazys3("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: "Love makes you do crazy things."),
                            ExampleSentenceKurdish(
                                text:
                                    "خۆشەویستی وات لێ دەکات کاری شێتانە بکەیت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrazys4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrazys4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "I know it sounds crazy but it just might work."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەزانم شێتانە دیارە، بەڵام ئەگەری ھەیە کاربکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrazys5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrazys5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) زۆر تووڕە"),
          SentencesRow(
            englishText: "Marie says he went crazy, and smashed the room up.",
            kurdishText: "ماری دەڵێت زۆر تووڕە بوو و ژوورەکەی دا بەسەر یەکدا.",
            onPressedBritish: () => speakcrazys6("en-GB"),
            onPressedAmerican: () => speakcrazys6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "That noise is driving me crazy.",
            kurdishText: "ئەو ژاوەژاوە خەریکە شێتم دەکات.",
            onPressedBritish: () => speakcrazys7("en-GB"),
            onPressedAmerican: () => speakcrazys7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Doesn't it make you crazy when people don't reply to your emails?",
            kurdishText:
                "ئەوە تووڕەت ناکات کە خەڵکی وەڵامی ئیمەیڵەکانت نادەنەوە.",
            onPressedBritish: () => speakcrazys8("en-GB"),
            onPressedAmerican: () => speakcrazys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) زۆر بەجۆش سەبارەت بە شتێک"),
          SentencesRow(
            englishText: "The crowd went crazy when the band came on stage.",
            kurdishText: "جەماوەرەکە خرۆشان کە باندەکە ھاتنە سەر ستەیجەکە.",
            onPressedBritish: () => speakcrazys9("en-GB"),
            onPressedAmerican: () => speakcrazys9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's football-crazy.",
            kurdishText: "ئاشقێکی تۆپی‌پێیە.",
            onPressedBritish: () => speakcrazys10("en-GB"),
            onPressedAmerican: () => speakcrazys10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) حەزکردنی زۆر لە کەسێک"),
          SentencesRow(
            englishText:
                "I've been crazy about him since the first time I saw him.",
            kurdishText: "ئەوینداری بوومە لەوەتەی یەکەم جار دیم.",
            onPressedBritish: () => speakcrazys11("en-GB"),
            onPressedAmerican: () => speakcrazys11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) ھەبوونی نەخۆشی دەروونی کە کێشە بۆ بیرکردنەوەی ئاسایی درووست دەکات"),
          SentencesRow(
            englishText: "I'd go crazy if I lived here.",
            kurdishText: "شێت دەبووم ئەگەر لێرە ژیابام.",
            onPressedBritish: () => speakcrazys12("en-GB"),
            onPressedAmerican: () => speakcrazys12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) کەسێک کە بیرۆکەی نامۆی ھەیە یان لە ڕووی دەروونییەوە تەواو نییە"),
          SentencesRow(
            englishText: "There are a lot of crazies out there.",
            kurdishText: "ژمارەیەکی زۆر شێت (لەوێ) ھەن.",
            onPressedBritish: () => speakcrazys13("en-GB"),
            onPressedAmerican: () => speakcrazys13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵکار) ئێجگار زۆر"),
          SentencesRow(
            englishText: "My job continues to be crazy busy.",
            kurdishText: "کارەکەم بەردەوامە لەوەی تەواو لە سەرقاڵیدا بێت.",
            onPressedBritish: () => speakcrazys14("en-GB"),
            onPressedAmerican: () => speakcrazys14("en-US"),
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
- Adjective: crazy (derived forms: crazier, craziest)
1. Affected with madness or insanity (= brainsick, demented, disturbed, mad, sick, unbalanced, unhinged)
"a man who had gone crazy";
 
2. Foolish; totally unsound (= half-baked [informal], screwball [informal], softheaded, wiggy [US, informal], crackpot [informal], nutty [informal])
"a crazy scheme";
 
3. Possessed by inordinate excitement
"the crowd went crazy"; "was crazy to try his new bicycle"
 
4. Bizarre or fantastic
"had a crazy dream"; "wore a crazy hat"
 
5. Intensely enthusiastic about or preoccupied with (= wild, dotty [informal], gaga [informal])
"crazy about cars and racing";

- Noun: crazy (derived forms: crazies)
Usage: N. Amer, informal
1. An insane person (= lunatic, madman, maniac, loony [informal], looney [informal], nutcase [informal], headcase [informal])
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
  final double _startSeconds = 1012;

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
  final double _startSeconds = 296;

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

  final String _videoId = 'w98l2EFR6dE';
  final double _startSeconds = 28;

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

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 19;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 385;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 638;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 371;

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