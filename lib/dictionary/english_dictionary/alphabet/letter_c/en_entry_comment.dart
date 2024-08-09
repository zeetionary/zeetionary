import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomment extends StatelessWidget {
// blank divider
  EnglishEntrycomment({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomment(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("comment");
  }

  Future<void> speakcomments1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She made helpful comments on my work.");
  }

  Future<void> speakcomments2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Have you any comment to make about the cause of the disaster?");
  }

  Future<void> speakcomments3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He handed me the document without comment.");
  }

  Future<void> speakcomments4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The results are a clear comment on government education policy.");
  }

  Future<void> speakcomments5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was a lot of comment about his behaviour.");
  }

  Future<void> speakcomments6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He refused to comment until after the trial.");
  }

  Future<void> speakcomments7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She said she was unable to comment further.");
  }

  Future<void> speakcomments8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I don't feel I can comment on their decision.");
  }

  Future<void> speakcomments9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He said nothing when asked to comment on the allegations.");
  }

  Future<void> speakcomments10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A spokesperson commented that levels of carbon dioxide were very high.");
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
                            EntryTitle(word: "comment"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒment/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomment("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːment/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomment("en-US"),
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
کوردی: بۆچوون، لێدوان، وتە، گوتە، قسە، ڕا، سەرنج،	تێبینی، ڕادەربڕین، ڕابێژی،	شرۆڤەکردن، شی‌کردنەوە، لێکدانەوە،	ڕەخنە(گری)،	مشت‌ومڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە دەیڵێیت یان دەینووسیت کە بۆچوونێکە یان کەسێک/شتێک ڕووندەکاتەوە"),
                          SentencesRow(
                            englishText:
                                "She made helpful comments on my work.",
                            kurdishText:
                                "لێدوانی یارمەتیدەری دا لەسەر کارەکانم.", // comment",
                            onPressedBritish: () => speakcomments1("en-GB"),
                            onPressedAmerican: () => speakcomments1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Have you any comment to make about the cause of the disaster?",
                            englishNote:
                                "American English: Do you have any comment to make about the cause of the disaster?",
                            kurdishText:
                                "ھیچ لێدوانێکت ھەیە لەسەر ھۆکاری کارەساتەکە؟",
                            onPressedBritish: () => speakcomments2("en-GB"),
                            onPressedAmerican: () => speakcomments2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He handed me the document without comment.",
                            kurdishText: "بەڵگەنامەکەی بەبێ لێدوان پێمدا.",
                            onPressedBritish: () => speakcomments3("en-GB"),
                            onPressedAmerican: () => speakcomments3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ڕەخنە کە ھەڵەی شتێک پیشان دەدات"),
                          SentencesRow(
                            englishText:
                                "The results are a clear comment on government education policy.",
                            kurdishText:
                                "ئەنجامەکان ڕەخنەیەک بوون لەسەر سیاسەتی پەروەردەی حکومەت.",
                            onPressedBritish: () => speakcomments4("en-GB"),
                            onPressedAmerican: () => speakcomments4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There was a lot of comment about his behaviour.",
                            kurdishText: "لێدوانی زۆر ھەبوو لەسەر ھەڵسوکەوتی.",
                            onPressedBritish: () => speakcomments5("en-GB"),
                            onPressedAmerican: () => speakcomments5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) دەربڕینی لێدوانێک"),
                          SentencesRow(
                            englishText:
                                "He refused to comment until after the trial.",
                            kurdishText:
                                "ڕەیکردەوە لێدوان بدات تاوەکو دوای دانیشتنەکە.",
                            onPressedBritish: () => speakcomments6("en-GB"),
                            onPressedAmerican: () => speakcomments6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She said she was unable to comment further.",
                            kurdishText: "وتی ناتوانێت لێدوانی زیاتر بدات.",
                            onPressedBritish: () => speakcomments7("en-GB"),
                            onPressedAmerican: () => speakcomments7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't feel I can comment on their decision.",
                            kurdishText:
                                "پێم وانییە بتوانم لێدوان لەسەر بڕیارەکەیان بدەم.",
                            onPressedBritish: () => speakcomments8("en-GB"),
                            onPressedAmerican: () => speakcomments8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He said nothing when asked to comment on the allegations.",
                                    kurdishText:
                                        "ھیچی نەوت کە پرسیاری لێکرا سەرنج بدات لەسەر تۆمەتەکان.",
                                    onPressedBritish: () =>
                                        speakcomments9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomments9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A spokesperson commented that levels of carbon dioxide were very high.",
                                    kurdishText:
                                        "وتەبێژێک لێدوانی ئەوەی دا کە ڕێژەی دووەم ئۆکسیدی کاربۆن زۆر بەرزە.",
                                    onPressedBritish: () =>
                                        speakcomments10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcomments10("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
- Noun: comment (derived forms: comments)
1. A statement that expresses a personal opinion, belief or adds information (= remark, input)
"from time to time she contributed a personal comment on his account";
 
2. A written explanation or criticism or illustration that is added to a book or other textual material (= commentary)
"he wrote an extended comment on the proposal";
 
3. A report (often malicious) about the behaviour of other people (= gossip, scuttlebutt [N. Amer, informal], goss [Brit, informal])
 
4. (computer programming) a piece of explanatory text (which is not itself executed) in source code

- Verb: comment (derived forms: commenting, comments, commented)
1. Make or write a comment on (= notice, remark, point out)
"he commented the paper of his colleague";
 
2. Explain or interpret something
 
3. Provide interlinear explanations for words or phrases (= gloss, annotate)
"He commented on what his teacher had written";
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

  final String _videoId = 'fnthCPHfCVA';
  final double _startSeconds = 36;

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

  final String _videoId = 'qOpiFohaTVo';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'XK4JiBBA3bI';
  final double _startSeconds = 65;

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

  final String _videoId = 'haF8L_zw1eg';
  final double _startSeconds = 5;

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

  final String _videoId = 'nq0xHMFfVmM';
  final double _startSeconds = 7;

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

  final String _videoId = 'vntv4_poZX4';
  final double _startSeconds = 17;

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

  final String _videoId = 'mwaH9tX78Jw';
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

// end WORD_WEB