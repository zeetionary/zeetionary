import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydesire extends StatefulWidget {
  const EnglishEntrydesire({super.key});

  @override
  State<EnglishEntrydesire> createState() => _EnglishEntrydesireState();
}

class _EnglishEntrydesireState extends State<EnglishEntrydesire> {
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
    return const EntryTitle(word: "desire");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: desire");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈzaɪə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesire(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("desire");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdesire("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈzaɪər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesire(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("desire");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdesire("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesires1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had enough money to satisfy all his desires.");
  }

  Future<void> speakdesires2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has a burning desire to be an artist.");
  }

  Future<void> speakdesires3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have no desire to discuss the matter further.");
  }

  Future<void> speakdesires4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has expressed a desire to see you.");
  }

  Future<void> speakdesires5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is filled with conflicting desires.");
  }

  Future<void> speakdesires6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She felt a surge of love and desire for him.");
  }

  Future<void> speakdesires7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When she agreed to marry him, he felt he had achieved his heart's desire.");
  }

  Future<void> speakdesires8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We all desire health and happiness.");
  }

  Future<void> speakdesires9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The house had everything you could desire.");
  }

  Future<void> speakdesires10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The dessert can be topped with cream, if desired.");
  }

  Future<void> speakdesires11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The medicine did not achieve the desired effect.");
  }

  Future<void> speakdesires12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Fewer people desire to live in the north of the country.");
  }

  Future<void> speakdesires13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He still desired her.");
  }

  Future<void> speakdesires20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has a burning desire to be an artist.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ھیوا، ئاوات، مراد، خۆزگە، ئارەزوو، ئیشتیا، مەگیز، کام، مەیل، تاسە، پەرۆش، گوڕ، تین‌وگوڕ، تین‌وتاو، تامەزرۆیی، ھۆگری، ویست، خوایشت، خۆستەک؛ ئیشتیا یان ئارەزووی بەھیزی سێکسی
"""),
          const DefinitionKurdish(
              text: "١. (ناو) حەزێکی زۆر بۆ ھەبوون یان کردنی شتێک"),
          SentencesRow(
            englishText: "He had enough money to satisfy all his desires.",
            kurdishText: "ھێندە پارەی ھەبوو کە ھەموو ئاواتەکانی بەدیبێنێت.",
            onPressedBritish: () => speakdesires1("en-GB"),
            onPressedAmerican: () => speakdesires1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She has a burning desire to be an artist.",
            kurdishText: "خولیایەکی زۆری ھەبوو بۆ بوون بە ھونەرکار.",
            onPressedBritish: () => speakdesires2("en-GB"),
            onPressedAmerican: () => speakdesires2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I have no desire (= I do not want) to discuss the matter further.",
            kurdishText: "ھیچ حەزێکم نییە بۆ زیاتر باسکردنی بابەتەک.",
            onPressedBritish: () => speakdesires3("en-GB"),
            onPressedAmerican: () => speakdesires3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He has expressed a desire to see you.",
            kurdishText: "حەزێکی دەربڕی بوو بۆ بینینت.",
            onPressedBritish: () => speakdesires4("en-GB"),
            onPressedAmerican: () => speakdesires4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He is filled with conflicting desires.",
            kurdishText: "پڕ لە خولیای دژبەیەکە.",
            onPressedBritish: () => speakdesires5("en-GB"),
            onPressedAmerican: () => speakdesires5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) حەزێکی زۆر بۆ ھەبوونی سێکس لەگەڵ کەسێکدا"),
          const DividerSentences(),
          SentencesRow(
            englishText: "She felt a surge of love and desire for him.",
            kurdishText:
                "ھەستی بە زۆربوونێکی خۆشەویستی و ئارەزووی سێکس کرد بۆی.",
            onPressedBritish: () => speakdesires6("en-GB"),
            onPressedAmerican: () => speakdesires6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) کەسێک یان شتێک کە زۆر ویستراوە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "When she agreed to marry him, he felt he had achieved his heart's desire.",
            kurdishText:
                "کە ڕازی بوو بە ھاوسەرگیری لەگەڵی، ھەستی کرد کە ھیوایەتی دڵی بەدەستھێنابوو.",
            onPressedBritish: () => speakdesires7("en-GB"),
            onPressedAmerican: () => speakdesires7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) ویستنی شتێک"),
          SentencesRow(
            englishText: "We all desire health and happiness.",
            kurdishText: "ھەموان تەندرووستی و خۆشبەختیمان دەوێت.",
            onPressedBritish: () => speakdesires8("en-GB"),
            onPressedAmerican: () => speakdesires8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The house had everything you could desire.",
            kurdishText: "خانووەکە ھەموو شتێکی ھەبوو کە حەزت پێی بێت.",
            onPressedBritish: () => speakdesires9("en-GB"),
            onPressedAmerican: () => speakdesires9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The dessert can be topped with cream, if desired (= if you like).",
            kurdishText: "شیرینییەکە دەکرێت کرێمی پێدا بکرێت ئەگەر حەز بکەیت.",
            onPressedBritish: () => speakdesires10("en-GB"),
            onPressedAmerican: () => speakdesires10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The medicine did not achieve the desired effect.",
            kurdishText: "دەرمانەکە کاریگەری ویستراوی بەدەستنەھێنا.",
            onPressedBritish: () => speakdesires11("en-GB"),
            onPressedAmerican: () => speakdesires11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Fewer people desire to live in the north of the country.",
            kurdishText:
                "خەڵکی کەمتر حەزی ئەوە دەکەن کە لە باکووری وڵاتەکە بژین.",
            onPressedBritish: () => speakdesires12("en-GB"),
            onPressedAmerican: () => speakdesires12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) ھەبوونی حەزی سێکسی بۆ کەسێک"),
          SentencesRow(
            englishText: "He still desired her.",
            kurdishText: "ھێشتا ئارەزووی سێکسی بۆی ھەبوو.",
            onPressedBritish: () => speakdesires13("en-GB"),
            onPressedAmerican: () => speakdesires13("en-US"),
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
- Noun: desire (derived forms: desires)
1. The feeling that accompanies an unsatisfied state
 
2. An inclination to want things
"a man of many desires"
 
3. Something that is desired

- Verb: desire (derived forms: desired, desiring, desires)
1. Have a wish for (= want)
"I desire to go home now";
 
2. Expect and wish (= hope, trust)
 
3. Express a desire for
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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 1287;

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

  final String _videoId = 'D0x2dgpBDzc';
  final double _startSeconds = 402;

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

  final String _videoId = 'lex6USTugUU';
  final double _startSeconds = 676;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 708;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 153;

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

  final String _videoId = 'Mx8JkGHaGUI';
  final double _startSeconds = 1264;

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

  final String _videoId = 'W2hRTTTpmr8';
  final double _startSeconds = 96;

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