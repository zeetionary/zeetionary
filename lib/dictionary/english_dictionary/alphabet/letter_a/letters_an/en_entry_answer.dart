import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryanswer - replace speakAnswer - replace answer - /ˈɑːnsə(r)/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryanswer extends StatelessWidget {
  // blank divider
  EnglishEntryanswer({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakanswer(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("answer");
  }

  Future<void> speakanswer1019(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I rang the bell, but there was no answer.");
  }

  Future<void> speakanswer1021(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can't you give me a definitive answer?");
  }

  Future<void> speakanswer1022(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had no answer to the accusations.");
  }

  Future<void> speakanswer1025(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Write your answers on the sheet provided.");
  }

  Future<void> speakanswer1026(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you know the answer to question 12?");
  }

  Future<void> speakanswer1027(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This may not be the answer for everyone.");
  }

  Future<void> speakanswer1029(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The obvious answer would be to cancel the party.");
  }

  Future<void> speakanswer1032(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I repeated the question, but she didn't answer.");
  }

  Future<void> speakanswer1034(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You haven't answered my question.");
  }

  Future<void> speakanswer1036(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He refused to answer the charges against him.");
  }

  Future<void> speakanswer1039(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was summoned before the council to answer charges of treason.");
  }

  // Future<void> speakanswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer");
  // }

  // Future<void> speakanswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer");
  // }

  // Future<void> speakanswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer");
  // }

  // Future<void> speakanswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer");
  // }

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
                            EntryTitle(word: "answer"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈɑːnsə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakanswer("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈænsər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakanswer("en-US"),
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
کوردی: وەڵام، وەرام، بەرسڤ، کاردانەوە، دژکردەوە، چارەسەری، ڕێگاچارە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) شتێک کە دەیکەیت، دەینووسیت، یان دەیڵێیت وەک وەڵام بۆ پرسیارێک یان بارودۆخێک"""),
                          SentencesRow(
                            englishText:
                                "I rang the bell, but there was no answer.",
                            kurdishText: "زەنگم لێدا بەڵام وەڵام نەبوو.",
                            onPressedBritish: () => speakanswer1019("en-GB"),
                            onPressedAmerican: () => speakanswer1019("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Can't you give me a definitive answer?",
                            kurdishText: "دەتوانیت وەڵامێکی تەواوم پێ بدەیت.",
                            onPressedBritish: () => speakanswer1021("en-GB"),
                            onPressedAmerican: () => speakanswer1021("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She had no answer to the accusations.",
                            kurdishText: "ھیچ وەڵامی بۆ تۆمەتەکان نەبوو.",
                            onPressedBritish: () => speakanswer1022("en-GB"),
                            onPressedAmerican: () => speakanswer1022("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شتێک کە دەینووسیت یان دەیڵێیت وەک وەڵام بۆ پرسیارێک لە تاقیکردنەوەیەک"""),
                          SentencesRow(
                            englishText:
                                "Write your answers on the sheet provided.",
                            kurdishText:
                                "وەڵامەکانت لەسەر ئەو پەڕە بنووسە کە پێت‌دراوە.",
                            onPressedBritish: () => speakanswer1025("en-GB"),
                            onPressedAmerican: () => speakanswer1025("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Do you know the answer (= the right one) to question 12?",
                            kurdishText: "وەڵامی پرسیاری ١٢یەم دەزانی؟",
                            onPressedBritish: () => speakanswer1026("en-GB"),
                            onPressedAmerican: () => speakanswer1026("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) چارەسەری کێشەیەک"""),
                          SentencesRow(
                            englishText:
                                "This may not be the answer for everyone.",
                            kurdishText: "ئەمە ڕەنگە چارەسەر نەبێت بۆ ھەموان.",
                            onPressedBritish: () => speakanswer1027("en-GB"),
                            onPressedAmerican: () => speakanswer1027("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The obvious answer would be to cancel the party.",
                            kurdishText:
                                "چارەسەری ڕوون ھەڵوەشاندنەوەی ئاھەنگەکەیە.",
                            onPressedBritish: () => speakanswer1029("en-GB"),
                            onPressedAmerican: () => speakanswer1029("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) کردن، نووسین، یان وتنی شتێک وەک وەڵام بۆ پرسیارێک یان بارودۆخێک"""),
                          SentencesRow(
                            englishText:
                                "I repeated the question, but she didn't answer.",
                            kurdishText:
                                "پرسیارەکەم دووبارە کردەوە بەڵام وەڵامی نەداوە.",
                            onPressedBritish: () => speakanswer1032("en-GB"),
                            onPressedAmerican: () => speakanswer1032("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "You haven't answered my question.",
                            kurdishText: "وەڵامی پرسیارەکەمت نەداوەتەوە.",
                            onPressedBritish: () => speakanswer1034("en-GB"),
                            onPressedAmerican: () => speakanswer1034("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He refused to answer the charges against him.",
                            kurdishText:
                                "ڕەتی‌کردەوە وەڵامی تۆمەتەکانی دژی بداتەوە.",
                            onPressedBritish: () => speakanswer1036("en-GB"),
                            onPressedAmerican: () => speakanswer1036("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەرگری‌کردن لە خۆت بەرامبەر تۆمەت یان ڕەخنە"""),
                          SentencesRow(
                            englishText:
                                "He was summoned before the council to answer charges of treason.",
                            kurdishText:
                                "بانگ‌کرایە پێش ئەنجوومەنەکە بۆ وەڵامدانەوەی تۆمەتی خیانەت.",
                            onPressedBritish: () => speakanswer1039("en-GB"),
                            onPressedAmerican: () => speakanswer1039("en-US"),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: answer (derived forms: answers, answering, answered)
1. Say or write something in response (= reply, respond)
"answer the question"; "We answered that we would accept the invitation"; "She didn't want to answer";
 
2. Respond to a signal
"answer the door"; "answer the telephone"
 
3. Give the correct answer or solution to
"answer a question"; "answer the riddle"
 
4. Understand the meaning of (= resolve)
"The question concerning the meaning of life cannot be answered";
 
5. Give a defence or refutation of (a charge) or in (an argument)
"The defendant answered to all the charges of the prosecution"
 
6. Be liable or accountable
"She must answer for her actions"
 
7. Be sufficient; be adequate, either in quality or quantity (= suffice, do, serve)
"A few words would answer";
 
8. Match or correspond
"The drawing of the suspect answers to the description the victim gave"
 
9. Be satisfactory for; meet the requirements of or serve the purpose of
"This may answer her needs"
 
10. React to a stimulus or command
"The steering of my new car answers to the slightest touch"

- Noun: answer (derived forms: answers)
1. A statement (either spoken or written) that is made to reply to a question or request or criticism or accusation (= reply, response)
"I waited several days for his answer";

2. A statement that solves a problem or explains how to solve the problem (= solution, result, resolution, solvent)
"the answers were in the back of the book";

3. The speech act of replying to a question
 
4. (law) the principal pleading by the defendant in response to plaintiff's complaint; in criminal law it consists of the defendant's plea of 'guilty' or 'not guilty' (or nolo contendere); in civil law it must contain denials of all allegations in the plaintiff's complaint that the defendant hopes to controvert and it can contain affirmative defences or counterclaims
 
5. A nonverbal reaction
"his answer to any problem was to get drunk"; "their answer was to sue me"
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

  final String _videoId = '_h97cjyraEk';
  final double _startSeconds = 176;

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

  final String _videoId = 'zJ5rFV5b9Xs';
  final double _startSeconds = 6;

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

  final String _videoId = 's2JLkXCPIW8';
  final double _startSeconds = 51;

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

  final String _videoId = 'UZk17HJGu8I';
  final double _startSeconds = 273;

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

  final String _videoId = 'md68cIq-I4g';
  final double _startSeconds = 165;

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

  final String _videoId = '-aq1n8MSk8c';
  final double _startSeconds = 18;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 14;

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

  final String _videoId = 'w98l2EFR6dE';
  final double _startSeconds = 23;

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

  final String _videoId = 'XFGAQrEUaeU';
  final double _startSeconds = 89;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 1;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 1239;

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

  final String _videoId = 'j1BfO7VlIw4';
  final double _startSeconds = 968;

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