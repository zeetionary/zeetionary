import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// Define the word "average" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

enum TtsState { playing }

class EnglishEntryaverage extends StatelessWidget {
  EnglishEntryaverage({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaverage(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("average");
  }

  Future<void> speakaverages1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The average age of participants was 52 years.");
  }

  Future<void> speakaverages2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "On an average day they sell more than £2 000 worth of vegetables.");
  }

  Future<void> speakaverages3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was just an average sort of student.");
  }

  Future<void> speakaverages4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Parents spend an average of £220 a year on toys.");
  }

  Future<void> speakaverages5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Temperatures are above average for the time of year.");
  }

  Future<void> speakaverages6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He has averaged 15 goals over the past two seasons.");
  }

  Future<void> speakaverages7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakAverages76");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "average"),
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈævərɪdʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakaverage("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈævərɪdʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakaverage("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const KurdishVocabulary(text: """
کوردی: نێوبڕ، مەیانەیی، ئەندازە، تێکڕا، ڕادەی نێوەڕاست، ناوەند، مابەین، (ماف) (بەشێ ھەر کەسێ لە دانی) زیانی کەشتی، ناوەند، مام‌ناوەند، نێوەڕاست، ئەندازە، نێوگیر، نێوەند، ئاسایی، ناتایبەتی، مام‌ناوەند
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ھاوەڵناو) تێکڕا؛ کۆی گشتی کۆمەڵە بڕێک و دابەشکردنی ئەنجامەکە بەسەر ژمارەی بڕەکان """),
                          SentencesRow(
                            englishText:
                                "The average age of participants was 52 years.",
                            kurdishText:
                                "تێکڕای تەمەنی بەژداربووان ٥٢ ساڵ بوو.",
                            onPressedBritish: () => speakaverages1("en-GB"),
                            onPressedAmerican: () => speakaverages1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ئەوەی کە ئاساییە و دەکرێت بکرێت بە پێوەر """),
                          SentencesRow(
                            englishText:
                                "On an average day they sell more than £2 000 worth of vegetables.",
                            kurdishText:
                                "لە ڕۆژێکی ئاساییدا بای ٢٠٠٠ پاوەند سەوزە دەفرۆشن.",
                            onPressedBritish: () => speakaverages2("en-GB"),
                            onPressedAmerican: () => speakaverages2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) شتێک کە لە ئاستێکی ئاساییە """),
                          SentencesRow(
                            englishText:
                                "I was just an average sort of student.",
                            kurdishText: "خوێندکارێکی مام‌ناوەند بووم.",
                            onPressedBritish: () => speakaverages3("en-GB"),
                            onPressedAmerican: () => speakaverages3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) تێکڕای کۆمەڵە ژمارەیەک """),
                          SentencesRow(
                            englishText:
                                "Parents spend an average of £220 a year on toys.",
                            kurdishText:
                                "دایکان و باوکان بە تێکڕا ٢٢٠ پاوەند لە کایەی منداڵان خەرج‌دەکەن",
                            onPressedBritish: () => speakaverages4("en-GB"),
                            onPressedAmerican: () => speakaverages4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ئاستێک کە ئاساییە """),
                          SentencesRow(
                            englishText:
                                "Temperatures are above average for the time of year.",
                            kurdishText:
                                "پلەی گەرمی لە سەروو ئاسایین بۆ ئەم کاتەی ساڵ.",
                            onPressedBritish: () => speakaverages5("en-GB"),
                            onPressedAmerican: () => speakaverages5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) ھەبوونی ژمارەیەک وەک تێکڕا """),
                          SentencesRow(
                            englishText:
                                "He has averaged 15 goals over the past two seasons.",
                            kurdishText:
                                "تێکڕای ١٥ گۆڵی ھەبووە لە دوو وەرزی ڕابردوودا.",
                            onPressedBritish: () => speakaverages6("en-GB"),
                            onPressedAmerican: () => speakaverages6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) دۆزینەوەی تێکڕا """),
                          SentencesRow(
                            englishText:
                                "Earnings are averaged over the whole period.",
                            kurdishText:
                                "قازانجەکان تێکڕای تەواوی ماوەکە دەکرێن",
                            onPressedBritish: () => speakaverages7("en-GB"),
                            onPressedAmerican: () => speakaverages7("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
- Noun: average (derived forms: averages)
1. An intermediate scale value regarded as normal or usual
"he is about average in height"; "the snowfall this month is below average"
 
2. (statistics) an average of n numbers computed by adding some function of the numbers and dividing by some function of n (= mean, mean value)
 
3. (statistics) the sum of the values of a random variable divided by the number of values (= arithmetic mean, first moment, expectation, expected value)
 
4. (sport) the ratio of successful performances to opportunities

- Adjective: average
1. (statistics) approximating the statistical norm, average or expected value (= mean)
"the average income in New England is below that of the nation"; "of average height for his age";
 
2. Lacking special distinction, rank, or status; commonly encountered (= ordinary)
"average people"; "the average man in the street";
 
3. Lacking exceptional quality or ability (= fair, mediocre, middling)
"a novel of average merit"; "the calibre of the students has gone from mediocre to above average";
 
4. Around the middle of a scale of evaluation (= intermediate, medium)
"an orange of average size";
 
5. (statistics) relating to or constituting the most frequent value in a distribution (= modal)
"the average age at which American novelists reach their peak is 30";
 
6. (statistics) relating to or constituting the middle value of an ordered set of values (or the average of the middle two in a set with an even number of values) ((= median))

- Verb: average (derived forms: averaged, averaging, averages)
1. Amount to or come to an average, without loss or gain (= average out)
"The number of hours I work per week averages out to 40";
 
2. Achieve or reach on average
"He averaged a C"
 
3. (arithmetic) compute the average of (= average out)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 134;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 464;

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

  final String _videoId = 'hEdRBpjpgz0';
  final double _startSeconds = 144;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 170;

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

  final String _videoId = 'h4CyhQqAPpk';
  final double _startSeconds = 483;

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

  final String _videoId = 'kHrjgWoy8qY';
  final double _startSeconds = 144;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 26;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'z4L2E6_Gmkk';
  final double _startSeconds = 225;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 1001;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 32;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 362;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 642;

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

// end

// end average
