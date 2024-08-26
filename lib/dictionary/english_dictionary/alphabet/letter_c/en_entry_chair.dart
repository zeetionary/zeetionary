import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychair extends StatelessWidget {
  // blank divider
  EnglishEntrychair({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchair(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("chair");
  }

  Future<void> speakchairs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sit on your chair!");
  }

  Future<void> speakchairs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was sitting in her favourite chair.");
  }

  Future<void> speakchairs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He sighed and leaned back in his chair.");
  }

  Future<void> speakchairs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A cat was asleep on the chair.");
  }

  Future<void> speakchairs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A chair stood facing the window.");
  }

  Future<void> speakchairs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Come in and take a chair.");
  }

  Future<void> speakchairs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He gave her his chair.");
  }

  Future<void> speakchairs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Lisa heard a chair scraping the floor.");
  }

  Future<void> speakchairs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who is in the chair today?");
  }

  Future<void> speakchairs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She takes the chair in all our meetings.");
  }

  Future<void> speakchairs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He holds the chair of philosophy at Oxford.");
  }

  Future<void> speakchairs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The prisoner was placed in the chair for the execution.");
  }

  Future<void> speakchairs13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who's chairing the meeting?");
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
                            EntryTitle(word: "chair"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃeə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchair("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃer/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchair("en-US"),
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
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: سەندەڵی، کورسی، تەختەک، ئەسکەمل، پۆست یان کورسی مامۆستایی، پلەوپایەی مامۆستایی، سەرکۆڕ، سەرۆکی کۆبوونەوە، کورسی ئێلیکتریکی، سزای کوشتن
"""),
                          const DefinitionKurdish(text: "١. (ناو) کورسی"),
                          SentencesRow(
                            englishText: "Sit on your chair!",
                            kurdishText: "لەسەر کورسییەکەت دابنیشە!",
                            onPressedBritish: () => speakchairs1("en-GB"),
                            onPressedAmerican: () => speakchairs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was sitting in her favourite chair.",
                            kurdishText: "لەسەر کورسی دڵخوازی دانیشت بوو.",
                            onPressedBritish: () => speakchairs2("en-GB"),
                            onPressedAmerican: () => speakchairs2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He sighed and leaned back in his chair.",
                                    kurdishText:
                                        "ھەناسەیەکی ھەڵکێشا و پاڵیدا بە کورسییەکەیەوە.",
                                    onPressedBritish: () =>
                                        speakchairs3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchairs3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A cat was asleep on the chair.",
                                    kurdishText:
                                        "پشیلەیەک نووستبوو لەسەر کورسییەکە.",
                                    onPressedBritish: () =>
                                        speakchairs4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchairs4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A chair stood facing the window.",
                                    kurdishText:
                                        "کورسییەک ڕوو لە پەنجەرەکە دانرابوو.",
                                    onPressedBritish: () =>
                                        speakchairs5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchairs5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Come in and take a chair (= sit down).",
                                    kurdishText: "وەرە ژوورەوە و دابنیشە.",
                                    onPressedBritish: () =>
                                        speakchairs6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchairs6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "He gave her his chair.",
                                    kurdishText: "کورسییەکەیی پێدا.",
                                    onPressedBritish: () =>
                                        speakchairs7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchairs7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Lisa heard a chair scraping the floor.",
                                    kurdishText:
                                        "لیزا گوێی لە کورسییەک بوو بە زاوییەکەدا دەخشا.",
                                    onPressedBritish: () =>
                                        speakchairs8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchairs8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پۆستی ڕابەرایەتی کۆبوونەوەیەک یان لیژنەیەک"),
                          SentencesRow(
                            englishText: "Who is in the chair today?",
                            kurdishText: "کێ ئەمڕۆ سەرکۆڕە؟",
                            onPressedBritish: () => speakchairs9("en-GB"),
                            onPressedAmerican: () => speakchairs9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She takes the chair in all our meetings.",
                            kurdishText: "لە ھەموو کۆبوونەوەکانماندا سەرکۆڕە.",
                            onPressedBritish: () => speakchairs10("en-GB"),
                            onPressedAmerican: () => speakchairs10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) پۆستی سەرۆکایەتی بەشێکی زانکۆ"),
                          SentencesRow(
                            englishText:
                                "He holds the chair of philosophy at Oxford.",
                            kurdishText: "سەرۆکی بەشی فەلسەفەیە لە ئۆکسفۆرد.",
                            onPressedBritish: () => speakchairs11("en-GB"),
                            onPressedAmerican: () => speakchairs11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) کورسییەکی کارەبایی بەھێز، بە تایبەتی لە ئەمریکادا، کە بەکاردێت بۆ کوشتنی تاوانباران"),
                          SentencesRow(
                            englishText:
                                "The prisoner was placed in the chair for the execution.",
                            kurdishText:
                                "تاوانبارەکە لەسەر کورسییە کارەباییەکە دانرا بۆ کوشتنی.",
                            onPressedBritish: () => speakchairs12("en-GB"),
                            onPressedAmerican: () => speakchairs12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) سەرپەرشتیکردنی کۆبوونەوەیەک، چاوپێکەوتنێک، ھتد"),
                          SentencesRow(
                            englishText: "Who's chairing the meeting?",
                            kurdishText: "کێ سەرپەرشتی چاوپێکەوتنەکە دەکات؟",
                            onPressedBritish: () => speakchairs13("en-GB"),
                            onPressedAmerican: () => speakchairs13("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: chair (derived forms: chairs)
1. A seat for one person, with a support for the back
"he put his coat over the back of the chair and sat down"
 
2. The position of professor (= professorship)
"he was awarded an endowed chair in economics";
 
3. The officer who presides at the meetings of an organization (= president, chairman, chairwoman, chairperson, prez [informal])
"address your remarks to the chair";

4. An instrument of execution by electrocution; resembles an ordinary seat for one person (= electric chair, death chair, hot seat)
"the murderer was sentenced to die in the chair";

5. A particular seat in an orchestra
"he is second chair violin"

- Verb: chair (derived forms: chairs, chairing, chaired)
1. Act or preside as chair, as of an academic department in a university (= chairman)
"She chaired the department for many years";

2. Preside over (= moderate, lead, mod [informal])
"John chaired the discussion";
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'lrNcx2D_FZI';
  final double _startSeconds = 74;

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

  final String _videoId = 'zmEv7vTOQGE';
  final double _startSeconds = 1030;

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

  final String _videoId = 'Pto9L7kjuSM';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'PbMKc17EtGI';
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

  final String _videoId = 'yWmeBoVXwrE';
  final double _startSeconds = 69;

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

  final String _videoId = 'fXW-QjBsruE';
  final double _startSeconds = 40;

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

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 22;

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

  final String _videoId = '4qNMxjxr70s';
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

// end WORD_WEB
