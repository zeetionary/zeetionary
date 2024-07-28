import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontract extends StatelessWidget {
// blank divider
  EnglishEntrycontract({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontract(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("contract");
  }

  Future<void> speakcontracts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All employees have a written contract of employment.");
  }

  Future<void> speakcontracts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These clauses form part of the contract between buyer and seller.");
  }

  Future<void> speakcontracts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was on a three-year contract that expired last week.");
  }

  Future<void> speakcontracts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is under contract to a major American computer firm.");
  }

  Future<void> speakcontracts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Under the terms of the contract the job should have been finished yesterday.");
  }

  Future<void> speakcontracts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She took out a contract on her ex-husband.");
  }

  Future<void> speakcontracts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Glass contracts as it cools.");
  }

  Future<void> speakcontracts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The universe is expanding rather than contracting.");
  }

  Future<void> speakcontracts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The economy will contract by 2 per cent this year.");
  }

  Future<void> speakcontracts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The heart muscles contract to expel the blood.");
  }

  Future<void> speakcontracts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Condoms can help to minimize the risk of contracting HIV.");
  }

  Future<void> speakcontracts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He contracted malaria while abroad.");
  }

  Future<void> speakcontracts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The player is contracted to play until August.");
  }

  Future<void> speakcontracts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He can't work for them because he is contracted with another company.");
  }

  Future<void> speakcontracts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has contracted to work 20 hours a week.");
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
                            EntryTitle(word: "contract"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntrækt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontract("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntrækt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontract("en-US"),
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
کوردی: قەراروبڕێ، گرێبەست، بەڵێن‌نامە، پەیمان، بڕیار، ڕێک‌کەوتن‌نامە
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ڕێککەوتنێکی فەرمی نووسراو"),
                          SentencesRow(
                            englishText:
                                "All employees have a written contract of employment.",
                            kurdishText:
                                "ھەموو کارمەندان گرێبەستێکی نووسراوی وەرگرتنیان ھەیە.", // contract",
                            onPressedBritish: () => speakcontracts1("en-GB"),
                            onPressedAmerican: () => speakcontracts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These clauses form part of the contract between buyer and seller.",
                            kurdishText:
                                "ئەم مادانە بەشێکی ڕێککەوتنی نێوان فرۆشیار و کڕیار پێکدێنن.",
                            onPressedBritish: () => speakcontracts2("en-GB"),
                            onPressedAmerican: () => speakcontracts2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I was on a three-year contract that expired last week.",
                                    kurdishText:
                                        "گرێدراو بە گرێبەستێکی سێ ساڵە بووم کە ھەفتەی ڕابردوو تەواو بوو.",
                                    onPressedBritish: () =>
                                        speakcontracts3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontracts3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She is under contract to (= has a contract to work for) a major American computer firm.",
                                    kurdishText:
                                        "گرێبەستی لەگەڵ کۆمپانیایەکی گەورەی کۆمپیوتەری ئەمریکی ھەیە.",
                                    onPressedBritish: () =>
                                        speakcontracts4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontracts4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Under the terms of the contract the job should have been finished yesterday.",
                                    kurdishText:
                                        "بەپێی بەندەکانی ڕێککەوتنەکە کارەکە دەبوو دوێنێ تەواوبایە.",
                                    onPressedBritish: () =>
                                        speakcontracts5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcontracts5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) ڕێککەوتنی کوشتنی کەسێک بە پارە"),
                          SentencesRow(
                            englishText:
                                "She took out a contract on her ex-husband.",
                            kurdishText:
                                "ڕێککەوتنێکی بۆ کوشتنی ھاوسەری پێشووی ئەنجامدا.",
                            onPressedBritish: () => speakcontracts6("en-GB"),
                            onPressedAmerican: () => speakcontracts6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) کەمبوون یان بچووکبوون"),
                          SentencesRow(
                            englishText: "Glass contracts as it cools.",
                            kurdishText: "گڵاس دەچێتەوە یەک کە سارد دەبێت.",
                            onPressedBritish: () => speakcontracts7("en-GB"),
                            onPressedAmerican: () => speakcontracts7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The universe is expanding rather than contracting.",
                            kurdishText: "گەردوون لە کشاندایە نەک چوونەوە یەک.",
                            onPressedBritish: () => speakcontracts8("en-GB"),
                            onPressedAmerican: () => speakcontracts8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The economy will contract by 2 per cent this year.",
                            kurdishText:
                                "ئابووری بە ڕێژەی ٢٪ دادەتەپێت بۆ ئەمساڵ.",
                            onPressedBritish: () => speakcontracts9("en-GB"),
                            onPressedAmerican: () => speakcontracts9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The heart muscles contract to expel the blood.",
                            kurdishText:
                                "ماسوولکەکانی دڵ گرژدەبنەوە بۆ دەرکردنی خوێن.",
                            onPressedBritish: () => speakcontracts10("en-GB"),
                            onPressedAmerican: () => speakcontracts10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) گرتنی نەخۆشی"),
                          SentencesRow(
                            englishText:
                                "Condoms can help to minimize the risk of contracting HIV.",
                            kurdishText:
                                "کۆندۆم یارمەتیدەر دەبێت لە کەمکردنەوەی گرتنی ئایدز.",
                            onPressedBritish: () => speakcontracts11("en-GB"),
                            onPressedAmerican: () => speakcontracts11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He contracted malaria while abroad.",
                            kurdishText: "لە دەرەوەی وڵات مەلاریای گرت.",
                            onPressedBritish: () => speakcontracts12("en-GB"),
                            onPressedAmerican: () => speakcontracts12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ئەنجامدانی گرێبەستی کارکردن لەگەڵ کەسێک بۆ ئەوەی کارت بۆ بکات یان خزمەتگوزارییەکت پێشکەش بکات"),
                          SentencesRow(
                            englishText:
                                "The player is contracted to play until August.",
                            kurdishText:
                                "یاریزانەکە گرێبەستی یاریکردنی تاوەکو ئاب ئەنجامداوە.",
                            onPressedBritish: () => speakcontracts13("en-GB"),
                            onPressedAmerican: () => speakcontracts13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He can't work for them because he is contracted with another company.",
                            kurdishText:
                                "ناتوانێت کاریان بۆ بکات چونکە گرێبەستی لەگەڵ کۆمپانیایەکی دیکە ھەیە.",
                            onPressedBritish: () => speakcontracts14("en-GB"),
                            onPressedAmerican: () => speakcontracts14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ئەنجامدانی گرێبەستی کارکردن لەگەڵ کەسێک بۆ ئەوەی کاری بۆ بکەیت یان خزمەتگوزارییەکی پێشکەش بکەیت"),
                          SentencesRow(
                            englishText:
                                "She has contracted to work 20 hours a week.",
                            kurdishText:
                                "ڕێککەوتنی کردووە ٢٠ کاتژمێر لە ھەفتەیەکدا کار بکات.",
                            onPressedBritish: () => speakcontracts15("en-GB"),
                            onPressedAmerican: () => speakcontracts15("en-US"),
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
- Noun: contract (derived forms: contracts)
1. A binding agreement between two or more persons that is enforceable by law
 
2. (contract bridge) the highest bid becomes the contract setting the number of tricks that the bidder must make (= declaration)
 
3. A variety of bridge in which the bidder receives points toward game only for the number of tricks he bid (= contract bridge)

- Verb: contract (derived forms: contracts, contracting, contracted)
1. Enter into a contractual arrangement (= undertake)
 
2. Engage by written agreement (= sign, sign on, sign up)
"They contracted two new pitchers for the next season";
 
3. Bring together or compress (= compress, constrict, squeeze, compact, press)
"the spasm contracted the muscle";
 
4. Be stricken by an illness, fall victim to an illness (= take, get)
"She contracted a chill";
 
5. Become smaller or draw together (= shrink)
"The fabric contracted";
 
6. Make smaller
"The heat contracted the woollen garment"
 
7. Compress or concentrate (= condense, concentrate)
"Congress contracted the three-year plan into a six-month plan";
 
8. Make or become more narrow or restricted (= narrow, neck)
"The selection was contracted";
 
9. Reduce in scope while retaining essential elements (= abridge, foreshorten, abbreviate, shorten, cut, reduce)
"The manuscript must be contracted";
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

  final String _videoId = '4J0xFUyz1nw';
  final double _startSeconds = 655;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 432;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 840;

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

  final String _videoId = 'Cln0J87vulU';
  final double _startSeconds = 479;

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

  final String _videoId = 'K-CrEi0ymMg';
  final double _startSeconds = 213;

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

  final String _videoId = 'X3TAROotFfM';
  final double _startSeconds = 194;

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

  final String _videoId = '8FpPSMIB4uA';
  final double _startSeconds = 726;

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