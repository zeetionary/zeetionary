import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bare" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace bare - replace EnglishEntrybare

// replace speakBare - /beə(r)/

enum TtsState { playing }

class EnglishEntrybare extends StatelessWidget {
  EnglishEntrybare({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbare(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("bare");
  }

  Future<void> speakbares1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She likes to walk around in bare feet.");
  }

  Future<void> speakbares2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There's no carpet in the room, just bare floorboards.");
  }

  Future<void> speakbares3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The winter sun filtered through the bare branches of the trees.");
  }

  Future<void> speakbares4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The windows looked out onto a bare field.");
  }

  Future<void> speakbares5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Bare wires were sticking out of the cable.");
  }

  Future<void> speakbares6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fridge was completely bare.");
  }

  Future<void> speakbares7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He did the bare minimum of work but still passed the exam.");
  }

  Future<void> speakbares8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Nothing more is known apart from the bare statement issued to the press.");
  }

  Future<void> speakbares9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She was paid several thousand dollars to bare all for the magazine.");
  }

  Future<void> speakbares10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The men bared their heads as they entered the church.");
  }

  Future<void> speakbares11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The party on Saturday was bare good!");
  }

  Future<void> speakbares12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The questions are bare difficult.");
  }

  Future<void> speakbares13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBares1313");
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
                            EntryTitle(word: "bare"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /beə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbare("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ber/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbare("en-US"),
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
کوردی: ڕووت، کڕاڵ، ڕووتەن، ڕووتەڵ، پەتی، قۆتین (سەر)، بێ‌بەرگ، ڕووتاوە، ڕووت‌وقوت، سەڵت‌وقوت، قووت، دانەپۆشراو، کرۆسک، بێ، تەنیا، تەنێ، فەقەت، خاڵی، بەتاڵ، تیانەبوو، بنگەھی، بنەڕەتی، سەرەکی، گرنگ، سادە، نەڕازاو
"""),
                          const DefinitionKurdish(
                              text: """١. (ھاوەڵناو) ڕووت، دانەپۆشراو"""),
                          SentencesRow(
                            englishText:
                                "She likes to walk around in bare feet.",
                            kurdishText: "حەزدەکات بە پێی پەتی ڕێ بکات.",
                            onPressedBritish: () => speakbares1("en-GB"),
                            onPressedAmerican: () => speakbares1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "There's no carpet in the room, just bare floorboards.",
                            kurdishText:
                                "ھیچ فەرش لە ژوورەکە نییە، تەنھا زەوییە دانەپۆشراوەکەیە.",
                            onPressedBritish: () => speakbares2("en-GB"),
                            onPressedAmerican: () => speakbares2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) دارێک کە گەڵای پێوە نییە، یان زەوییەک کە دار و ڕووەکی تێدا نییە"""),
                          SentencesRow(
                            englishText:
                                "The winter sun filtered through the bare branches of the trees.",
                            kurdishText:
                                "خۆری زستان بە ناو لقە ڕووتەڵەکانی دارەکان.",
                            onPressedBritish: () => speakbares3("en-GB"),
                            onPressedAmerican: () => speakbares3("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The windows looked out onto a bare field.",
                            kurdishText:
                                "پەنجەرەکان بەسەر کێڵگەیەکی ڕووتدا دەیانڕوانی.",
                            onPressedBritish: () => speakbares4("en-GB"),
                            onPressedAmerican: () => speakbares4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) دانەپۆشراو یان نەپارێزراو"""),
                          SentencesRow(
                            englishText:
                                "Bare wires were sticking out of the cable.",
                            kurdishText:
                                "وایەری ڕووت لە کێبڵەکانەوە دەرچووبوون.",
                            onPressedBritish: () => speakbares5("en-GB"),
                            onPressedAmerican: () => speakbares5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) بەتاڵ"""),
                          SentencesRow(
                            englishText: "The fridge was completely bare.",
                            kurdishText: "ساردکەرەوەکە بە تەواوی بەتاڵ بوو.",
                            onPressedBritish: () => speakbares6("en-GB"),
                            onPressedAmerican: () => speakbares6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) سەرەتاییترین یان سادەترین"""),
                          SentencesRow(
                            englishText:
                                "He did the bare minimum of work but still passed the exam.",
                            kurdishText:
                                "کەمترین ھەوڵی دا بەڵام ھێشتا تاقیکردنەوەکەی تێپەڕاند.",
                            onPressedBritish: () => speakbares7("en-GB"),
                            onPressedAmerican: () => speakbares7("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Nothing more is known apart from the bare statement issued to the press.",
                            kurdishText:
                                "ھیچ نازانرێت جگە لەو لێدوانەی سادەیەی درا بە ڕۆژنامەوانان.",
                            onPressedBritish: () => speakbares8("en-GB"),
                            onPressedAmerican: () => speakbares8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) لابردنی شتێک کە شتێکی تری داپۆشیوە"""),
                          SentencesRow(
                            englishText:
                                "She was paid several thousand dollars to bare all (= take all her clothes off) for the magazine.",
                            kurdishText:
                                "چەند ھەزار دۆلارێکی پێدرا بۆ ئەوەی ھەموو جلەکانی دابکەنێت بۆ گۆڤارەکە (بۆ ئەوەی وێنەی بگرن).",
                            onPressedBritish: () => speakbares9("en-GB"),
                            onPressedAmerican: () => speakbares9("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The men bared their heads (= took their hats off as a sign of respect) as they entered the church.",
                            kurdishText:
                                "پیاوان کڵاوەکانیان داکەند کە چوونە ناو کڵێساکەوە.",
                            onPressedBritish: () => speakbares10("en-GB"),
                            onPressedAmerican: () => speakbares10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) زۆر"""),
                          SentencesRow(
                            englishText: "The party on Saturday was bare good!",
                            kurdishText: "ئاھەنگەکەی شەممە زۆر خۆش بوو.",
                            onPressedBritish: () => speakbares11("en-GB"),
                            onPressedAmerican: () => speakbares11("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "The questions are bare difficult.",
                            kurdishText: "پرسیارەکان زۆر گرانن.",
                            onPressedBritish: () => speakbares12("en-GB"),
                            onPressedAmerican: () => speakbares12("en-US"),
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
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: bare (derived forms: barer, barest)
1. Having no clothes on the body (= au naturel, naked, nude)
"bare bodies";
 
2. Lacking in magnitude or quantity (= scanty, spare)
"a bare livelihood";

3. Just barely adequate or within a lower limit (= marginal)
"a bare majority";
 
4. Apart from anything else; without additions or modifications (= mere, simple)
"only the bare facts";
 
5. Lacking a surface finish such as paint (= unfinished)
"bare wood";
 
6. Providing no shelter or sustenance (= barren, bleak, desolate, stark)
"bare rocky hills";
 
7. Having everything extraneous removed including contents (= stripped)
"the cupboard was bare"; "the bare walls";

8. Lacking embellishment or ornamentation (= plain, spare, unembellished, unornamented)
"a bare hair style";

9. Not having a protective covering (= unsheathed)
"a bare blade";
 
10. Lacking its natural or customary covering
"a bare hill"; "bare feet"

- Verb: bare (derived forms: bares, bared, baring)
1. Make visible, allow others to see
"bare your breasts"; "bare your feelings"
 
2. Make public (= publicize, publicise [Brit], air)
"She bared her opinions on welfare";
 
3. Remove or clear everything so that nothing is left (= denude, denudate, strip)
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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 398;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 588;

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

  final String _videoId = 'nDb6-9-MTw4';
  final double _startSeconds = 3347;

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

  final String _videoId = 'wir7jmefyec';
  final double _startSeconds = 486;

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

  final String _videoId = 'g9QneAV4fVo';
  final double _startSeconds = 1125;

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

  final String _videoId = 'bBWO_78uQBM';
  final double _startSeconds = 11;

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

  final String _videoId = 'QHXLAJItt3Y';
  final double _startSeconds = 67;

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

  final String _videoId = 'bfrn4TQuOa0';
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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'mvK0qJdg2Nc';
  final double _startSeconds = 289;

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

  final String _videoId = 'HAnw168huqA';
  final double _startSeconds = 1520;

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

// end bare// TODO Implement this library.