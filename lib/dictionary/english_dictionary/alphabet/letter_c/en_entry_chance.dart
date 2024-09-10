import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychance extends StatelessWidget {
  EnglishEntrychance({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchance(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("chance");
  }

  Future<void> speakchances1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Is there any chance of getting tickets for tonight?");
  }

  Future<void> speakchances2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She only has a slim chance of passing the exam.");
  }

  Future<void> speakchances3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There's a good chance that he'll be back in time.");
  }

  Future<void> speakchances4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("What chance is there of anybody being found alive?");
  }

  Future<void> speakchances5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We believe the plan has a good chance for success.");
  }

  Future<void> speakchances6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was the chance she had been waiting for.");
  }

  Future<void> speakchances7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Jeff deceived me once already—I won't give him a second chance.");
  }

  Future<void> speakchances8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This is your big chance.");
  }

  Future<void> speakchances9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Please give me a chance to explain.");
  }

  Future<void> speakchances10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When installing electrical equipment don't take any chances. A mistake could kill.");
  }

  Future<void> speakchances11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The car might break down but that's a chance we'll have to take.");
  }

  Future<void> speakchances12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I met her by chance at the airport.");
  }

  Future<void> speakchances13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Chess is not a game of chance.");
  }

  Future<void> speakchances14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was chancing her luck driving without a licence.");
  }

  Future<void> speakchances15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You'd be a fool to chance your life savings on a single investment.");
  }

  Future<void> speakchances16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If I do chance to find out where she is, I'll inform you immediately.");
  }

  Future<void> speakchances17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They chanced to be staying at the same hotel.");
  }

  Future<void> speakchances18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A chance encounter with another artist changed her life.");
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
                            EntryTitle(word: "chance"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɑːns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃæns/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchance("en-US"),
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
کوردی: بەخت، چارە، چانس، شانس، ڕێکەوت، ھەڵکەوت، شیمانە، ئەگەر، ھەل، بوار، پەردێژ، دەرفەت، ئەختان، دەلیڤە،	دووبەختەکی، دووبەختی، ڕیسک، بەختەکی، تووشی، ڕێکەوتی، ھەڵکەوتی، شانسی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ئەگەری ڕوودانی شتێک"),
                          SentencesRow(
                            englishText:
                                "Is there any chance of getting tickets for tonight?",
                            kurdishText:
                                "ھیچ شانسێکی دەستکەوتنی بلیت ھەیە بۆ ئەمشەو؟",
                            onPressedBritish: () => speakchances1("en-GB"),
                            onPressedAmerican: () => speakchances1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She only has a slim chance of passing the exam.",
                            kurdishText:
                                "تەنھا کەمێک شانسی دەرچوونی لە تاقیکردنەوەکە ھەیە.",
                            onPressedBritish: () => speakchances2("en-GB"),
                            onPressedAmerican: () => speakchances2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "There's a good chance that he'll be back in time.",
                                    kurdishText:
                                        "ئەگەرێکی باش ھەیە کە لە کاتی خۆیدا بگەڕێتەوە.",
                                    onPressedBritish: () =>
                                        speakchances3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchances3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "What chance is there of anybody being found alive?",
                                    kurdishText:
                                        "چەندە شانس ھەیە کە ھیچ کەسێک بە زیندووی بدۆزرێتەوە؟",
                                    onPressedBritish: () =>
                                        speakchances4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchances4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We believe the plan has a good chance for success.",
                                    kurdishText:
                                        "باوەڕمان وایە پلانەکە ئەگەری زۆری سەرکەوتنی ھەیە.",
                                    onPressedBritish: () =>
                                        speakchances5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchances5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کات یان دۆخێکی باش بۆ کردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "It was the chance she had been waiting for.",
                            kurdishText: "ئەوە ئەو دەرفەتە بوو کە چاوەڕێی بوو.",
                            onPressedBritish: () => speakchances6("en-GB"),
                            onPressedAmerican: () => speakchances6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Jeff deceived me once already—I won't give him a second chance.",
                            kurdishText:
                                "جێف پێشوەختە جارێک فریوی داوم، ھەلی دووەمی پێ نادەم.",
                            onPressedBritish: () => speakchances7("en-GB"),
                            onPressedAmerican: () => speakchances7("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "This is your big chance (= opportunity for success).",
                                    kurdishText: "ئەمە دەرفەتە مەزنەکەتە.",
                                    onPressedBritish: () =>
                                        speakchances8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchances8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Please give me a chance to explain.",
                                    kurdishText:
                                        "تکایە دەرفەتێکم پێبدە بۆ ڕوونکردنەوە.",
                                    onPressedBritish: () =>
                                        speakchances9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchances9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) ئەگەرێکی ناخۆش و خراپ"),
                          SentencesRow(
                            englishText:
                                "When installing electrical equipment don't take any chances. A mistake could kill.",
                            kurdishText:
                                "لە کاتی دانانی ئامێری کارەبایی، ھیچ کەمتەرخەمی مەنوێنە. یەک ھەڵە دەکرێت بتکوژێت.",
                            onPressedBritish: () => speakchances10("en-GB"),
                            onPressedAmerican: () => speakchances10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The car might break down but that's a chance we'll have to take.",
                            kurdishText:
                                "ئۆتۆمبێلەکە لەوانەیە لە کار بکەوێت، بەڵام ئەوە مەترسییەکە دەبێت بیگرینەبەر.",
                            onPressedBritish: () => speakchances11("en-GB"),
                            onPressedAmerican: () => speakchances11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شێوازی ڕوودانی شتێک بەبێ ھیچ ھۆیەک کە بیبینیت یان لێی تێ بگەیت"),
                          SentencesRow(
                            englishText:
                                "I met her by chance (= without planning to) at the airport.",
                            kurdishText: "بە ڕێکەوت لە فڕۆکەخانەکە بینیم.",
                            onPressedBritish: () => speakchances12("en-GB"),
                            onPressedAmerican: () => speakchances12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Chess is not a game of chance.",
                            kurdishText: "شەترەنج یاری شانس نییە.",
                            onPressedBritish: () => speakchances13("en-GB"),
                            onPressedAmerican: () => speakchances13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) گرتنەبەری مەترسییەک، ئەگەرچی دەزانیت ئەنجامەکەی ڕەنگە سەرکەوتوو نەبێت"),
                          SentencesRow(
                            englishText:
                                "She was chancing her luck driving without a licence.",
                            kurdishText:
                                "بەختی خۆی تاقیدەکردەوە بە لێخوڕین بەبێ مۆڵەت.",
                            onPressedBritish: () => speakchances14("en-GB"),
                            onPressedAmerican: () => speakchances14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You'd be a fool to chance your life savings on a single investment.",
                            kurdishText:
                                "گەمژە دەبیت کە پاشەکەوتی ژیانت بخەیتە یەک وەبەرھێنانەوە.",
                            onPressedBritish: () => speakchances15("en-GB"),
                            onPressedAmerican: () => speakchances15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) ڕوودان یان کردنی شتێک بە شانس"),
                          SentencesRow(
                            englishText:
                                "If I do chance to find out where she is, I'll inform you immediately.",
                            kurdishText:
                                "ئەگەر شانسی ئەوەم ھەبوو بزانم لە کوێیە، دەستبەجێ ئاگادارت دەکەم.",
                            onPressedBritish: () => speakchances16("en-GB"),
                            onPressedAmerican: () => speakchances16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They chanced to be staying at the same hotel.",
                            kurdishText:
                                "ڕێکەوتی کرد کە لە ھەمان ھوتێل مانەوە.",
                            onPressedBritish: () => speakchances17("en-GB"),
                            onPressedAmerican: () => speakchances17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ھاوەڵناو) شتێک کە بە ڕێکەوت ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "A chance encounter with another artist changed her life.",
                            kurdishText:
                                "چاوپێکەوتنی بەڕێکەوتی لەگەڵ ھونەرمەندێکی دیکە ژیانی گۆڕی.",
                            onPressedBritish: () => speakchances18("en-GB"),
                            onPressedAmerican: () => speakchances18("en-US"),
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
- Noun: chance (derived forms: chances)
1. A possibility due to a favourable combination of circumstances (= opportunity)
"now is your chance";

2. An unknown and unpredictable phenomenon that causes an event to result one way rather than another (= luck, fortune, hazard)
"we ran into each other by pure chance";

3. A risk involving danger
"you take a chance when you let her drive"
 
4. A measure of how likely it is that some event will occur; a number expressing the ratio of favourable cases to the whole number of cases possible (= probability)
"if that phone call is for me, chances are it's my wife";

5. The possibility of future success (= prospect)
"his chances as a writer are excellent";

- Adjective: chance 
1. Occurring, appearing or singled out by chance (= casual)
"a chance occurrence";

- Verb: chance (derived forms: chanced, chances, chancing)
1. Take a risk in the hope of a favourable outcome (= gamble, risk, hazard, take chances, adventure, run a risk, take a chance)
"When you buy these stocks you are chancing";
 
2. Come upon, as if by accident; meet with (= find, happen, bump, encounter)
"She chanced upon an interesting book in the bookstore the other day";
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

  final String _videoId = 'QMFPtCSekxM';
  final double _startSeconds = 338;

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

  final String _videoId = 'XBVMjVXAMYw';
  final double _startSeconds = 37;

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

  final String _videoId = 'EHJDttt9etc';
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 960;

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

  final String _videoId = 'Cxqca4RQd_M';
  final double _startSeconds = 602;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1456;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 246;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 1331;

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
