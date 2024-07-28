import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryact - replace speakAct - replace act - /ækt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryact extends StatelessWidget {
  EnglishEntryact({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakact(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("act");
  }

  Future<void> speakact7859(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is vital that we act to stop the destruction of the rainforests.");
  }

  Future<void> speakact42693(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The government was criticized for failing to act decisively.");
  }

  Future<void> speakact7691(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The man was seen acting suspiciously.");
  }

  Future<void> speakact4589(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's acting the part of Hamlet?");
  }

  Future<void> speakact15932(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been acting the devoted husband all day.");
  }

  Future<void> speakact1527(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you act as interpreter?");
  }

  Future<void> speakact3541(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Alcohol acts quickly on the brain.");
  }

  Future<void> speakact75381(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You have committed a serious criminal act.");
  }

  Future<void> speakac25341(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The old Act has now been repealed.");
  }

  Future<void> speakact1258(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't take her seriously—it's all an act.");
  }

  Future<void> speakact75638(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The king is killed in the opening act.");
  }

  // Future<void> speakact(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act");
  // }

  // Future<void> speakact(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act");
  // }

  // Future<void> speakact(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act");
  // }

  // Future<void> speakact(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act");
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
                            EntryTitle(word: "act"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ækt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakact("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ækt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakact("en-US"),
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
کوردی: کار، کردە، کردەوە، کریار، دەستوور، فەرمان، ڕەفتار، ڕەوتار، ھەڵس‌وکەوت، قانوون، یاسا، زاکوون، قەباڵە، سەنەد، پەردە (شانو)، بەش، شانۆ، بەرنامە، دەستەی شانۆیی (میوزیکژەن، ئەکتەر و ھتد)، واخۆنیشان‌دان، واخۆنواندن، واخۆدەرخستن، (ماف) دەستووری نووسراوی پارلەمان، کۆنگرێس و ھتد
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) کردنی شتێک بە مەبەستی دیاریکراو، یان بۆ مامەڵەکردن لەگەڵ بارودۆخێک"""),
                          SentencesRow(
                            englishText:
                                "It is vital that we act to stop the destruction of the rainforests.",
                            kurdishText:
                                "زۆر گرنگە ھەنگاوبنێین بۆ وەستاندنی وێرانکردنی جەنگەڵەکان.",
                            onPressedBritish: () => speakact7859("en-GB"),
                            onPressedAmerican: () =>
                                speakact7859("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The government was criticized for failing to act decisively.",
                            kurdishText:
                                "حکومەت بەر ڕەخنە درا بەھۆی شکستھێنان لە ھەنگاونان بە خێرایی.",
                            onPressedBritish: () => speakact42693("en-GB"),
                            onPressedAmerican: () =>
                                speakact42693("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ڕەفتارکردن بەشێوەیەک"""),
                          SentencesRow(
                            englishText:
                                "The man was seen acting suspiciously.",
                            kurdishText:
                                "پیاوەکە بینرا بە گوماناوییەوە ڕەفتاری دەکرد.",
                            onPressedBritish: () => speakact7691("en-GB"),
                            onPressedAmerican: () =>
                                speakact7691("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ڕۆڵبینین لە بەشیکی شانۆیەک یان فیلمێک"""),
                          SentencesRow(
                            englishText: "Who's acting the part of Hamlet?",
                            kurdishText: "کێ ڕۆڵی ھاملێت دەبینێت؟",
                            onPressedBritish: () => speakact4589("en-GB"),
                            onPressedAmerican: () =>
                                speakact4589("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) خۆنیشاندانت بەشێوەیەکی تایبەت لە ڕێگەی ڕەفتارکردنتەوە"""),
                          SentencesRow(
                            englishText:
                                "He's been acting the devoted husband all day.",
                            kurdishText:
                                "تەواوی ڕۆژەکە وەک مێردێکی خەمخۆر خۆی نیشانداوە.",
                            onPressedBritish: () => speakact15932("en-GB"),
                            onPressedAmerican: () =>
                                speakact15932("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) کردنی کارێک"""),
                          SentencesRow(
                            englishText: "Can you act as interpreter?",
                            kurdishText: "ئەتوانی وەک وەرگێڕێک کار بکەیت؟",
                            onPressedBritish: () => speakact1527("en-GB"),
                            onPressedAmerican: () =>
                                speakact1527("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) ھەبوونی کاریگەرییەک لەسەر شتێک"""),
                          SentencesRow(
                            englishText: "Alcohol acts quickly on the brain.",
                            kurdishText:
                                "کحوول ڕاستەوخۆ کاریگەری لەسەر مێشک دەبێت.",
                            onPressedBritish: () => speakact3541("en-GB"),
                            onPressedAmerican: () =>
                                speakact3541("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) شتێک کە کەسێک دەیکات"""),
                          SentencesRow(
                            englishText:
                                "You have committed a serious criminal act.",
                            kurdishText: "کارێکی تاوانکاریی کوشندەت کردووە.",
                            onPressedBritish: () => speakact75381("en-GB"),
                            onPressedAmerican: () =>
                                speakact75381("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) یاسایەک کە لەلایەن پەرلەمانەوە دەرکراوە"""),
                          SentencesRow(
                            englishText: "The old Act has now been repealed.",
                            kurdishText: "یاسا کۆنەکە ئێستا ھەڵپەسێردراوە.",
                            onPressedBritish: () => speakac25341("en-GB"),
                            onPressedAmerican: () =>
                                speakac25341("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) ڕەفتارێک کە ڕاستی نییە و یەنھا بە مەبەستە"""),
                          SentencesRow(
                            englishText:
                                "Don't take her seriously—it's all an act.",
                            kurdishText: "بە جدی مەیگرە، ھەمووی نمایشە.",
                            onPressedBritish: () => speakact1258("en-GB"),
                            onPressedAmerican: () =>
                                speakact1258("en-US"), // REPLACE act /ækt/
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) یەکێک لەو بەشانەی شانۆ یان ئۆپێرایەکی لێ پێکدێت"""),
                          SentencesRow(
                            englishText:
                                "The king is killed in the opening act.",
                            kurdishText: "پاشا لە یەکەم بەش دەکوژرێت.",
                            onPressedBritish: () => speakact75638("en-GB"),
                            onPressedAmerican: () =>
                                speakact75638("en-US"), // REPLACE act /ækt/
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedend(),
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
- Noun: act (derived forms: acts)
1. Something that people do or cause to happen (= deed, human action, human activity)
 
2. (law) a legal document codifying the result of deliberations of a committee, society or legislative body (= enactment)
 
3. A subdivision of a play, opera or ballet
 
4. A short performance that is part of a longer program (= routine, number, turn, bit)
"he did his act three times every evening";
 
5. A manifestation of insincerity
"he put on quite an act for her benefit"

- Verb: act (routine, number, turn, bit)
1. Perform an action; do something (= move)
"think before you act"; "The governor should act on the new energy bill"; "The nanny acted quickly by grabbing the toddler and covering him with a wet towel";
 
2. Show a certain behaviour; conduct or comport oneself (= behave, do)
"You should act like an adult"; "The dog acts ferocious, but he is really afraid of people";
 
3. (performing arts) Perform a role or part (= play, represent)
"She wants to act Lady Macbeth, but she is too young for the role";
 
4. Discharge one's duties
"She acts as the chair"; "In what capacity are you acting?"
 
5. Pretend to have certain qualities or state of mind (= play, act as)
"He acted the idiot";
 
6. Be suitable for theatrical performance
"This scene acts well"
 
7. Have a desired or expected effect or outcome (= work)
"The breaks of my new car act quickly";
 
8. Be engaged in an activity, often for no particular purpose other than pleasure
 
9. Behave unnaturally or affectedly (= dissemble, pretend)
"She's just acting";
 
10 (dramaturgy) perform on a stage or theatre (= play, roleplay, playact)
"She acts in this play"; "He acted in 'Julius Caesar'";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '9jAC3FFXUgY';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'jxLkbJozKbY';
  final double _startSeconds = 421;

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

  final String _videoId = 'B8OIka3jP90';
  final double _startSeconds = 212;

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

  final String _videoId = 'kfZe5L1I17U';
  final double _startSeconds = 202;

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

  final String _videoId = 'nJDvbcIby38';
  final double _startSeconds = 437;

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

  final String _videoId = '_7_QXVcvcfQ';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'voyu61pPEdA';
  final double _startSeconds = 672;

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

  final String _videoId = 'Lr-zoNnDid0';
  final double _startSeconds = 508;

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

  final String _videoId = 'A5fWlmRambI';
  final double _startSeconds = 683;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'LtxikccfpaU';
  final double _startSeconds = 100;

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
