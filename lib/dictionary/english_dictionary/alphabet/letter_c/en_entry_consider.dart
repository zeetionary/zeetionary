import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconsider extends StatelessWidget {
// blank divider
  EnglishEntryconsider({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconsider(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("consider");
  }

  Future<void> speakconsiders1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'd like some time to consider.");
  }

  Future<void> speakconsiders2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is considering her options.");
  }

  Future<void> speakconsiders3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let us consider the facts.");
  }

  Future<void> speakconsiders4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We are considering various possibilities.");
  }

  Future<void> speakconsiders5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you considered starting your own business?");
  }

  Future<void> speakconsiders6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was considering what to do next.");
  }

  Future<void> speakconsiders7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We are considering her for the job of designer.");
  }

  Future<void> speakconsiders8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're considering buying a new car.");
  }

  Future<void> speakconsiders9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I consider her a friend.");
  }

  Future<void> speakconsiders10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The award is considered a great honour.");
  }

  Future<void> speakconsiders11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He considers it his duty.");
  }

  Future<void> speakconsiders12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She is widely considered to be the greatest player ever.");
  }

  Future<void> speakconsiders13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Who do you consider to be responsible for the accident?");
  }

  Future<void> speakconsiders14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He considers himself an expert on the subject.");
  }

  Future<void> speakconsiders15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They will take any steps they consider necessary.");
  }

  Future<void> speakconsiders16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You should consider other people before you act.");
  }

  Future<void> speakconsiders17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He stood there, considering the painting.");
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
                            EntryTitle(word: "consider"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈsɪdə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconsider("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈsɪdər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconsider("en-US"),
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
کوردی: ڕەچاوگرتن، ڕا دەربڕین، ھەڵسەنگاندن، بیرکردنەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بیرکردنەوە سەبارەت بە شتێک بە وریاییەوە"),
                          SentencesRow(
                            englishText: "I'd like some time to consider.",
                            kurdishText:
                                "پێویستم بە ھەندێک کاتە بۆ  بیرکردنەوە.",
                            onPressedBritish: () => speakconsiders1("en-GB"),
                            onPressedAmerican: () => speakconsiders1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She is considering her options.",
                            kurdishText: "ھەڵبژاردەکانی ڕەچاو دەکات.",
                            onPressedBritish: () => speakconsiders2("en-GB"),
                            onPressedAmerican: () => speakconsiders2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "Let us consider the facts.",
                                    kurdishText: "با ڕاستییەکان ھەڵبسەنگێنین.",
                                    onPressedBritish: () =>
                                        speakconsiders3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We are considering various possibilities.",
                                    kurdishText:
                                        "ژمارەیەک ئەگەر لەبەرچاو دەگرین.",
                                    onPressedBritish: () =>
                                        speakconsiders4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Have you considered starting your own business?",
                                    kurdishText:
                                        "بیرت لە دەستپێکردنی بازرگانی خۆت کردووەتەوە؟",
                                    onPressedBritish: () =>
                                        speakconsiders5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He was considering what to do next.",
                                    kurdishText:
                                        "بیری لەوە دەکردەوە دواتر چی بکات.",
                                    onPressedBritish: () =>
                                        speakconsiders6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We are considering her for the job of designer.",
                                    kurdishText:
                                        "ھەڵیدەسەنگێنین بۆ کاری دیزاینەری.",
                                    onPressedBritish: () =>
                                        speakconsiders7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We're considering buying a new car.",
                                    kurdishText:
                                        "بیر لە کڕینی ئۆتۆمبێلێکی تازە دەکەینەوە.",
                                    onPressedBritish: () =>
                                        speakconsiders8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بیرکردنەوە لە کەسێک/شتێک بەشێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText: "I consider her a friend.",
                            kurdishText: "وەک ھاوڕێ سەیری دەکەم.",
                            onPressedBritish: () => speakconsiders9("en-GB"),
                            onPressedAmerican: () => speakconsiders9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The award is considered a great honour.",
                            kurdishText:
                                "خەڵاتەکە بە شانازییەکی گەورە دادەنرێت.",
                            onPressedBritish: () => speakconsiders10("en-GB"),
                            onPressedAmerican: () => speakconsiders10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He considers it his duty.",
                            kurdishText: "بە ئەرکی خۆی دایدەنا.",
                            onPressedBritish: () => speakconsiders11("en-GB"),
                            onPressedAmerican: () => speakconsiders11("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She is widely considered to be the greatest player ever.",
                                    kurdishText:
                                        "بە بەرفراوانی وەک باشترین یاریزانی ھەمیشەیی دادەنرێت.",
                                    onPressedBritish: () =>
                                        speakconsiders12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Who do you consider to be responsible for the accident?",
                                    kurdishText:
                                        "کێ بە بەرپرسیار دەبینیت بۆ ڕووداوەکە؟",
                                    onPressedBritish: () =>
                                        speakconsiders13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He considers himself an expert on the subject.",
                                    kurdishText:
                                        "خۆی بە شارەزا لە بابەتەکەدا دادەنێت.",
                                    onPressedBritish: () =>
                                        speakconsiders14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They will take any steps they consider necessary.",
                                    kurdishText:
                                        "ھەر ھەنگاوێک دەنێن کە بە پێویستی ببینن.",
                                    onPressedBritish: () =>
                                        speakconsiders15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiders15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) بیرکردنەوە لە شتێک، بەتایبەتی ھەست و سۆزی کەسانی دیکە، و کاریگەربوون پێیان کە بڕیارێک دەدەیت"),
                          SentencesRow(
                            englishText:
                                "You should consider other people before you act.",
                            kurdishText:
                                "دەبێت بیر لە کەسانی دیکە بکەیتەوە پێش ئەوەی ھەنگاو بنێیت.",
                            onPressedBritish: () => speakconsiders16("en-GB"),
                            onPressedAmerican: () => speakconsiders16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) سەیرکردنی شتێک بە وریاییەوە"),
                          SentencesRow(
                            englishText:
                                "He stood there, considering the painting.",
                            kurdishText:
                                "لەوێ وەستابوو و لە تابلۆکە ورد دەبووەوە.",
                            onPressedBritish: () => speakconsiders17("en-GB"),
                            onPressedAmerican: () => speakconsiders17("en-US"),
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
- Verb: consider (derived forms: considered, considering, considers)
1. Perceive or think about in a particular way; deem to be (= see, reckon, view, regard)
"I consider her to be shallow";
 
2. Give careful consideration to (= study)
"consider the possibility of moving";
 
3. Focus on as an example (= take, look at)
"Consider the following case";
 
4. Show consideration for; take into account (= count, weigh)
"You must consider her age"; "The judge considered the offender's youth and was lenient";
 
5. Think about carefully; weigh (= debate, moot, turn over, deliberate)
"They considered the possibility of a strike";
 
6. Judge or regard; look upon (= think, believe, conceive)
"I consider he is very smart";
 
7. Look at attentively (= regard)
 
8. Analyse carefully; study to find a solution (= view, look at)
"consider a problem";
 
9. Regard or treat with consideration, respect, and esteem
"Please consider your family"
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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 16;

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

  final String _videoId = 'Cxqca4RQd_M';
  final double _startSeconds = 558;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1733;

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

  final String _videoId = 't6fIp7mMJ90';
  final double _startSeconds = 21;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 293;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1088;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 153;

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