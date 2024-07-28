import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydegree extends StatefulWidget {
  const EnglishEntrydegree({super.key});

  @override
  State<EnglishEntrydegree> createState() => _EnglishEntrydegreeState();
}

class _EnglishEntrydegreeState extends State<EnglishEntrydegree> {
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
    return const EntryTitle(word: "degree");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: degree");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈɡriː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdegree(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("degree");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdegree("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈɡriː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdegree(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("degree");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdegree("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdegrees1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Water freezes at 32 degrees Fahrenheit or zero/nought degrees Celsius.");
  }

  Future<void> speakdegrees2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Temperatures are expected to drop below 2 degrees.");
  }

  Future<void> speakdegrees3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Last weekend temperatures reached 40 degrees.");
  }

  Future<void> speakdegrees4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I turned the wheel 90 degrees,");
  }

  Future<void> speakdegrees5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Place the shelf at a 90 degree angle to the wall.");
  }

  Future<void> speakdegrees6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car had spun through 180 degrees on impact.");
  }

  Future<void> speakdegrees7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her job demands a high degree of skill.");
  }

  Future<void> speakdegrees8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I agree with you to a certain degree.");
  }

  Future<void> speakdegrees9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The reaction to his decision has been, to some degree, predictable.");
  }

  Future<void> speakdegrees10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These criticisms are, to a degree, well founded.");
  }

  Future<void> speakdegrees11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My brother has a master's degree from Harvard.");
  }

  Future<void> speakdegrees12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's pursuing a degree in biochemistry.");
  }

  Future<void> speakdegrees13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She earned a joint degree in Spanish and Psychology.");
  }

  Future<void> speakdegrees14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm hoping to do a chemistry degree.");
  }

  Future<void> speakdegrees15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He took a degree in law then joined a law firm.");
  }

  Future<void> speakdegrees20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Temperatures are expected to drop below 2 degrees.0");
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
کوردی: پلە (بە نیشانەی °)،	ڕێژە، ڕادە، دانگ، ئەندازە، ئاڤەند، ئاست، دۆخ، پەرەسە،	پلەوپایە، پایە، پۆست،	کۆن بایەخ یان پێگەی کۆمەڵایەتی،	بڕوانامە (ی زانکۆیی)،	(موسیقا)، پلە،	(ڕێزمان) پلە
"""),
          const DefinitionKurdish(text: "١. (ناو) یەکەی پێوانی گەرمی"),
          SentencesRow(
            englishText:
                "Water freezes at 32 degrees Fahrenheit (32°F) or zero/nought degrees Celsius (0°C).",
            kurdishText:
                "ئاو لە پلەی ٣٢ پلەی فەھرنایت یان سفری سیلیزی دەیبەستێت.", // degree
            onPressedBritish: () => speakdegrees1("en-GB"),
            onPressedAmerican: () => speakdegrees1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Temperatures are expected to drop below 2 degrees.",
            kurdishText: "پلەکانی گەرمی پێشبینی دەکرێن دابەزن بۆ خوار ٢ پلە.",
            onPressedBritish: () => speakdegrees2("en-GB"),
            onPressedAmerican: () => speakdegrees2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Last weekend temperatures reached 40 degrees.",
            kurdishText: "پلەکانی گەرمی ھەفتەی پێشوو گەشتن بە ٤٠ پلە.",
            onPressedBritish: () => speakdegrees3("en-GB"),
            onPressedAmerican: () => speakdegrees3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) یەکەی پێوانی گۆشە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I turned the wheel 90 degrees,",
            kurdishText: "ویلەکەم بە ٩٠ پلە بادایەوە.",
            onPressedBritish: () => speakdegrees4("en-GB"),
            onPressedAmerican: () => speakdegrees4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Place the shelf at a 90 degree angle to the wall.",
            kurdishText: "ڕەفەکە بە ٩٠ پلە لەگەڵ دیوارەکە دابنێ.",
            onPressedBritish: () => speakdegrees5("en-GB"),
            onPressedAmerican: () => speakdegrees5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The car had spun through 180 degrees on impact.",
            kurdishText: "ئۆۆتمبێلەکە ١٨٠ پلە خولابوویەوە لەگەڵ بەرکەوتندا.",
            onPressedBritish: () => speakdegrees6("en-GB"),
            onPressedAmerican: () => speakdegrees6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) بڕ یان ئاستی شتێک"),
          SentencesRow(
            englishText: "Her job demands a high degree of skill.",
            kurdishText: "کارەکەی پێویستی بە ئاستێکی زۆری شارەزایی ھەیە.",
            onPressedBritish: () => speakdegrees7("en-GB"),
            onPressedAmerican: () => speakdegrees7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I agree with you to a certain degree.",
            kurdishText: "بە ئاستی جیاواز لەگەڵت ھاوڕام.",
            onPressedBritish: () => speakdegrees8("en-GB"),
            onPressedAmerican: () => speakdegrees8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The reaction to his decision has been, to some degree, predictable.",
            kurdishText: "کاردانەوە بۆ بڕیارەکەی تا ئاستێک پێشبینیکراو بووە.",
            onPressedBritish: () => speakdegrees9("en-GB"),
            onPressedAmerican: () => speakdegrees9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "These criticisms are, to a degree (= to some extent), well founded.",
            kurdishText: "ئەم ڕەخنانە تا ئاستێک لە جێگای خۆیاندان.",
            onPressedBritish: () => speakdegrees10("en-GB"),
            onPressedAmerican: () => speakdegrees10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) بڕوانامەی خوێندکار لەکاتی تەواوکردنی زانکۆ یان کۆرسێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "My brother has a master's degree from Harvard.",
            kurdishText: "براکەم بڕوانامەی ماستەری ھەیە لە ھارڤارد.",
            onPressedBritish: () => speakdegrees11("en-GB"),
            onPressedAmerican: () => speakdegrees11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's pursuing a degree in biochemistry.",
            kurdishText: "ھەوڵ بۆ بڕوانامەیەک دەدات لە زیندە کیمیادا.",
            onPressedBritish: () => speakdegrees12("en-GB"),
            onPressedAmerican: () => speakdegrees12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She earned a joint degree in Spanish and Psychology.",
            kurdishText: "بڕوانامەیەکی ھاوبەشی لە ئیسپانی و دەروونناسی ھێنا.",
            onPressedBritish: () => speakdegrees13("en-GB"),
            onPressedAmerican: () => speakdegrees13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) کۆرسێکی کۆلێژ یان زانکۆ کە زۆرجار سێ ساڵ یان زیاتر دەخایەنێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I'm hoping to do a chemistry degree.",
            kurdishText: "ھیوادارم کۆرسێکی کیمیا بخوێنم.",
            onPressedBritish: () => speakdegrees14("en-GB"),
            onPressedAmerican: () => speakdegrees14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He took a degree in law then joined a law firm.",
            kurdishText:
                "کۆرسێکی لە یاسا ئەنجامدا و دواتر چووە کۆمپانیایەکی یاساییەوە.",
            onPressedBritish: () => speakdegrees15("en-GB"),
            onPressedAmerican: () => speakdegrees15("en-US"),
          ),
          // degrees1600"),
          // speakdegrees16
          // degrees16("en-US"),
          // degrees1700"),
          // speakdegrees17
          // degrees17("en-US"),
          // degrees1800"),
          // speakdegrees18
          // degrees18("en-US"),
          // degrees1900"),
          // speakdegrees19
          // degrees19("en-US"),
          // "Temperatures are expected to drop below 2 degrees.0"),
          // speakdegrees20
          // degrees20("en-US"),
          // degrees2100"),
          // speakdegrees21
          // degrees21("en-US"),
          // degrees2200"),
          // speakdegrees22
          // degrees22("en-US"),
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
- Noun: degree (derived forms: degrees)
1. A position on a scale of intensity, amount or quality (= grade, level)
"it is all a matter of degree";
 
2. A specific identifiable position in a continuum, series or especially in a process (= level, stage, point, phase, phasis)
"a remarkable degree of frankness";
 
3. An award conferred by a college or university signifying that the recipient has satisfactorily completed a course of study (= academic degree)
"he earned his degree at Princeton summa cum laude";
 
4. A measure for arcs and angles (= arcdegree)
"there are 360 degrees in a circle";
 
5. The highest power of a term or variable
 
6. A unit of temperature on a specified scale
"the game was played in spite of the 40-degree temperature"
 
7. The seriousness of something (e.g., a burn or crime)
"murder in the second degree"; "a second degree burn"
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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 425;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 382;

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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 127;

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

  final String _videoId = 'h4CyhQqAPpk';
  final double _startSeconds = 321;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 33;

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

  final String _videoId = 'z4L2E6_Gmkk';
  final double _startSeconds = 315;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 1207;

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