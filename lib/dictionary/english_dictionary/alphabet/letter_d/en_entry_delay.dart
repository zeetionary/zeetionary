import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydelay extends StatefulWidget {
  const EnglishEntrydelay({super.key});

  @override
  State<EnglishEntrydelay> createState() => _EnglishEntrydelayState();
}

class _EnglishEntrydelayState extends State<EnglishEntrydelay> {
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
    return const EntryTitle(word: "delay");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: delay");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈleɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelay(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("delay");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdelay("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈleɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelay(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("delay");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdelay("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelays1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Commuters will face long delays on the roads today.");
  }

  Future<void> speakdelays2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Increased congestion and traffic delays are expected.");
  }

  Future<void> speakdelays3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The strike has led to some delays in train services.");
  }

  Future<void> speakdelays4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Report it to the police without delay.");
  }

  Future<void> speakdelays5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Thousands of commuters were delayed for over an hour.");
  }

  Future<void> speakdelays6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My flight was delayed.");
  }

  Future<void> speakdelays7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What could have delayed him?");
  }

  Future<void> speakdelays8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Don't delay—call us today!");
  }

  Future<void> speakdelays9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We can't delay much longer.");
  }

  Future<void> speakdelays10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He delayed telling her the news, waiting for the right moment.");
  }

  Future<void> speakdelays20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Increased congestion and traffic delays are expected.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: درەنگی، ڕاوەستان، (بە)جێمان، بەدرەنگ‌کەوتن، دێرکردن، دێرکرد، دواکەوتن، پاش‌کەوتن، خڵافان، درێژە
"""),
          const DefinitionKurdish(text: "١. (ناو) دواکەوتن"),
          SentencesRow(
            englishText: "Commuters will face long delays on the roads today.",
            kurdishText:
                "گەشتیاران ئەمڕۆ ڕووبەڕووی دواکەوتنی زۆر دەبنەوە لەسەر ڕێگاکان.",
            onPressedBritish: () => speakdelays1("en-GB"),
            onPressedAmerican: () => speakdelays1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Increased congestion and traffic delays are expected.",
            kurdishText: "قەرەباڵغی زۆر و دواکەوتنی ھاتووچۆ چاوەڕوان دەکرێت.",
            onPressedBritish: () => speakdelays2("en-GB"),
            onPressedAmerican: () => speakdelays2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The strike has led to some delays in train services.",
            kurdishText:
                "مانگرتنەکە بووە بە ھۆکاری ھەندێک دواکەوتن لە خزمەتگوزاری شەمەندەفەردا.",
            onPressedBritish: () => speakdelays3("en-GB"),
            onPressedAmerican: () => speakdelays3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) شکستھێنان لەوەی شتێک لەکاتی خۆیدا بکەیت"),
          SentencesRow(
            englishText:
                "Report it to the police without delay (= immediately).",
            kurdishText: "بە پۆلیس بڵێ بەبێ دواکەوتن.",
            onPressedBritish: () => speakdelays4("en-GB"),
            onPressedAmerican: () => speakdelays4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) دواخستنی کەسێک/شتێک"),
          SentencesRow(
            englishText:
                "Thousands of commuters were delayed for over an hour.",
            kurdishText: "ھەزاران گەشتیار دواخران بۆ سەروو کاتژمێرێک.",
            onPressedBritish: () => speakdelays5("en-GB"),
            onPressedAmerican: () => speakdelays5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "My flight was delayed.",
            kurdishText: "گەشتەکەم دواخرا.",
            onPressedBritish: () => speakdelays6("en-GB"),
            onPressedAmerican: () => speakdelays6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What could have delayed him?",
            kurdishText: "دەکرێت چی دوایخستبێت؟",
            onPressedBritish: () => speakdelays7("en-GB"),
            onPressedAmerican: () => speakdelays7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) دواخستنی کردنی شتێک"),
          SentencesRow(
            englishText: "Don't delay—call us today!",
            kurdishText: "دوای مەخە ـ ئەمڕۆ پەیوەندیمان پێوە بکە!",
            onPressedBritish: () => speakdelays8("en-GB"),
            onPressedAmerican: () => speakdelays8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We can't delay much longer.",
            kurdishText: "ناتوانین چی دیکە دواخستن بکەین.",
            onPressedBritish: () => speakdelays9("en-GB"),
            onPressedAmerican: () => speakdelays9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He delayed telling her the news, waiting for the right moment.",
            kurdishText: "گوتنی ھەواڵەکەی پێی دواخست و وەستا بۆ ساتی درووست.",
            onPressedBritish: () => speakdelays10("en-GB"),
            onPressedAmerican: () => speakdelays10("en-US"),
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
- Verb: delay (derived forms: delays, delaying, delayed)
1. Cause to be slowed down or delayed (= detain, hold up)
"Traffic was delayed by the bad weather"; "she delayed the work that she didn't want to perform";
 
2. Act later than planned, scheduled, or required
"Don't delay your application to graduate school or else it won't be considered"
 
3. Stop or halt (= stay, detain)
 
4. Slow the growth or development of (= check, retard)
"The brain damage will delay the child's language development";

- Noun: delay (derived forms: delays)
1. Time during which some action is awaited (= hold, time lag, postponement, wait)
"instant replay caused too long a delay";
 
2. The act of delaying; inactivity resulting in something being put off until a later time (= holdup)
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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 896;

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

  final String _videoId = 'QiKZYt9070U';
  final double _startSeconds = 427;

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

  final String _videoId = '-L7o6HtX8Vg';
  final double _startSeconds = 261;

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

  final String _videoId = 'jUodZ6HqvnY';
  final double _startSeconds = 106;

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

  final String _videoId = 'Pon4Zux5MaQ';
  final double _startSeconds = 515;

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

  final String _videoId = 'gjySnrspD7E';
  final double _startSeconds = 2801;

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

  final String _videoId = '9yjZpBq1XBE';
  final double _startSeconds = 1879;

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