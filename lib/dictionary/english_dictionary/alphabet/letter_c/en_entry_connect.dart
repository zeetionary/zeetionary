import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconnect extends StatelessWidget {
  EnglishEntryconnect({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconnect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("connect");
  }

  Future<void> speakconnects1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The towns are connected by train and bus services.");
  }

  Future<void> speakconnects2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The island is connected to the mainland by a bridge.");
  }

  Future<void> speakconnects3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The rooms on this floor connect.");
  }

  Future<void> speakconnects4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A corridor connects his office with the main building.");
  }

  Future<void> speakconnects5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The canal was built to connect the city with the port.");
  }

  Future<void> speakconnects6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("First connect the printer to the computer.");
  }

  Future<void> speakconnects7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Connect the machine to the power supply.");
  }

  Future<void> speakconnects8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Downstairs toilets were connected directly to the drains.");
  }

  Future<void> speakconnects9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The device can be hooked up to a mobile phone to connect wirelessly.");
  }

  Future<void> speakconnects10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Click ‘Continue’ to connect to the internet.");
  }

  Future<void> speakconnects11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Simply connect your device to the camera's Wi-Fi signal.");
  }

  Future<void> speakconnects12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was nothing to connect him with the crime.");
  }

  Future<void> speakconnects13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He made a statement connecting the terrorist group to the attack.");
  }

  Future<void> speakconnects14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Bad diet is closely connected with many common illnesses.");
  }

  Future<void> speakconnects15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "His flight to Amsterdam connects with an afternoon flight to New York.");
  }

  Future<void> speakconnects16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There's a connecting flight at noon.");
  }

  Future<void> speakconnects17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("After a long wait I was connected to customer services.");
  }

  Future<void> speakconnects18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They met a couple of times but they didn't really connect.");
  }

  Future<void> speakconnects19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The blow connected and she felt a surge of pain.");
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
                            EntryTitle(word: "connect"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈnekt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconnect("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈnekt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconnect("en-US"),
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
کوردی: تێکەڵ بوون، بەستنەوە، پەیوەند دان، گەیاندن، پەیوەند کردن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بەستنەوەی دوو شت یان زیاتر بە یەکەوە"),
                          SentencesRow(
                            englishText:
                                "The towns are connected by train and bus services.",
                            kurdishText:
                                "شارۆچکەکان بە شەمەندەفەر و پاس پێکەوە گرێدراون.",
                            onPressedBritish: () => speakconnects1("en-GB"),
                            onPressedAmerican: () => speakconnects1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The island is connected to the mainland by a bridge.",
                            kurdishText:
                                "دوورگەکە بە پردێک بەستراوە بە ھەرێمە سەرەکییەکەوە.",
                            onPressedBritish: () => speakconnects2("en-GB"),
                            onPressedAmerican: () => speakconnects2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The rooms on this floor connect.",
                                    kurdishText:
                                        "ژوورەکانی ئەم نھۆمە تێکەڵ دەبن.",
                                    onPressedBritish: () =>
                                        speakconnects3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnects3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A corridor connects his office with the main building.",
                                    kurdishText:
                                        "ڕێڕەوێک ئۆفیسەکەی بە بینا سەرەکییەکەوە دەبەستێتەوە.",
                                    onPressedBritish: () =>
                                        speakconnects4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnects4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The canal was built to connect the city with the port.",
                                    kurdishText:
                                        "کەناڵەکە درووستکرا بۆ گرێدانی شارەکە بە بەندەرەکەوە.",
                                    onPressedBritish: () =>
                                        speakconnects5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnects5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بەستنی شتێک بە سەرچاوەی سەرەکی ئاو، کارەبا، غاز، ھتد یان بە ئامێرێکی دیکەوە"),
                          SentencesRow(
                            englishText:
                                "First connect the printer to the computer.",
                            kurdishText:
                                "سەرەتا پرینتەرەکە پەیوەست بکە بە کۆمپیوتەرەکەوە.",
                            onPressedBritish: () => speakconnects6("en-GB"),
                            onPressedAmerican: () => speakconnects6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Connect the machine to the power supply.",
                            kurdishText:
                                "ئامێرەکە پەیوەست بکە بە سەرچاوەی وزەکەوە.",
                            onPressedBritish: () => speakconnects7("en-GB"),
                            onPressedAmerican: () => speakconnects7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Downstairs toilets were connected directly to the drains.",
                            kurdishText:
                                "تەوالێتەکانی نھۆمی خوارەوە ڕاستەوخۆ بەسترابوون بە زێرابەکانەوە.",
                            onPressedBritish: () => speakconnects8("en-GB"),
                            onPressedAmerican: () => speakconnects8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) پەیوەستکردن بە ئینتەرنێتەوە"),
                          SentencesRow(
                            englishText:
                                "The device can be hooked up to a mobile phone to connect wirelessly.",
                            kurdishText:
                                "ئامێرەکە دەکرێت ببەسترێتەوە بە موبایلێکەوە بۆ پەیوەستبوونی بەبێ وایەر.",
                            onPressedBritish: () => speakconnects9("en-GB"),
                            onPressedAmerican: () => speakconnects9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Click ‘Continue’ to connect to the internet.",
                            kurdishText:
                                "‘Continue’ دابگرە بۆ پەیوەستبوون بە ئینتەرنێتەوە.",
                            onPressedBritish: () => speakconnects10("en-GB"),
                            onPressedAmerican: () => speakconnects10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Simply connect your device to the camera's Wi-Fi signal.",
                            kurdishText:
                                "تەنھا ئامێرەکەت پەیوەست بکە بە شەپۆلی وای‌فای کامێراکەت.",
                            onPressedBritish: () => speakconnects11("en-GB"),
                            onPressedAmerican: () => speakconnects11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) درووستکردنی پەیوەندی لە نێوان خەڵکی، شت، ڕووداو، ھتد"),
                          SentencesRow(
                            englishText:
                                "There was nothing to connect him with the crime.",
                            kurdishText:
                                "ھیچ نەبوو بۆ تێوەگلاندنی لە تاوانەکەوە.",
                            onPressedBritish: () => speakconnects12("en-GB"),
                            onPressedAmerican: () => speakconnects12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He made a statement connecting the terrorist group to the attack.",
                            kurdishText:
                                "لێدوانێکی دا بۆ بەستنەوەی گرووپە تیرۆریستییەکە با تاوانەکەوە.",
                            onPressedBritish: () => speakconnects13("en-GB"),
                            onPressedAmerican: () => speakconnects13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Bad diet is closely connected with many common illnesses.",
                            kurdishText:
                                "خۆراکی ڕۆژانەی ناتەندرووست بەتوندی بەستراوەتەوە بە زۆر نەخۆشی باوەوە.",
                            onPressedBritish: () => speakconnects14("en-GB"),
                            onPressedAmerican: () => speakconnects14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) گەشتنی فڕۆکەیەک، پاسێک، شەمەندەفەرێک، ھتد کەمێک پێش ئەوەی یەکێکی دیکە بچێت بۆ ئەوەی گەشتیاران بە گۆڕانکاری بکەن"),
                          SentencesRow(
                            englishText:
                                "His flight to Amsterdam connects with an afternoon flight to New York.",
                            kurdishText:
                                "گەشتەکەی بۆ ئەمستردام پەیوەست دەبێت بە گەشتێکی نیوەڕوان بۆ نیویۆرک.",
                            onPressedBritish: () => speakconnects15("en-GB"),
                            onPressedAmerican: () => speakconnects15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "There's a connecting flight at noon.",
                            kurdishText: "گەشتێکی پێکەوەبەست ھەیە لە نیوەڕۆدا.",
                            onPressedBritish: () => speakconnects16("en-GB"),
                            onPressedAmerican: () => speakconnects16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) دانانی کەسێک لەسەر ھەمان ھێڵی پەیوەندی بۆ ئەوەی قسەبکەن"),
                          SentencesRow(
                            englishText:
                                "After a long wait I was connected to customer services.",
                            kurdishText:
                                "لە دوای چاوەڕوانییەکی زۆر پەیوەست کرام بە خزمەتگوزاری بەژداربووانەوە.",
                            onPressedBritish: () => speakconnects17("en-GB"),
                            onPressedAmerican: () => speakconnects17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) درووستکردنی پەیوەندییەکی باش لەگەڵ کەسێک بەشێوەیەک حەزتان لە یەکدی بێت و لە یەک تێبگەن"),
                          SentencesRow(
                            englishText:
                                "They met a couple of times but they didn't really connect.",
                            kurdishText:
                                "چەند جارێک یەکیان بینی بەڵام نەسازان پێکەوە.",
                            onPressedBritish: () => speakconnects18("en-GB"),
                            onPressedAmerican: () => speakconnects18("en-US"),
                          ),
                          // const DividerDefinition(),
                          // const DefinitionKurdish(text: "٨. (کردار) لێدان لە کەسێک"),
                          // Row(
                          // children: [
                          // const Expanded(
                          // child: Column(
                          // children: [
                          // ExampleSentenceEnglish(
                          // text:
                          // "The blow connected and she felt a surge of pain."),
                          // ExampleSentenceKurdish(
                          // text: "رستە_رستە_رستە__رستە."),
                          // ],
                          // ),
                          // ),
                          // const CustomSizedBoxForTTS(),
                          // Column(
                          // children: [
                          // CustomIconButtonBritish(
                          // onPressed: () => speakconnects19("en-GB"),
                          // ),
                          // CustomIconButtonAmerican(
                          // onPressed: () => speakconnects19("en-US"),
                          // ),
                          // ],
                          // ),
                          // ],
                          // ),
                          // skipped_meaning
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
- Verb: connect (derived forms: connecting, connects, connected)
1. Join together or make a link between two or more pieces (= link, tie, link up)
"Can you connect the two loudspeakers?";
 
2. Make a logical or causal connection (= associate, tie in, relate, link, colligate, link up)
"I cannot connect these two pieces of evidence in my mind";
 
3. Be or become joined or united or linked (= link, link up, join, unite)
"The two streets connect to become a highway";
 
4. Join by means of communication equipment
"The telephone company finally put in lines to connect the towns in this area"
 
5. Land on or hit solidly
"The brick connected on her head, knocking her out"
 
6. Join for the purpose of communication
"Operator, could you connect me to the Raffles in Singapore?"
 
7. Be scheduled so as to provide continuing service, as in transportation
"The local train does not connect with the Amtrak train"; "The planes don't connect and you will have to wait for four hours"
 
8. Establish a rapport or relationship
"The President of this university really connects with the faculty"
 
9. Establish communication with someone (= get in touch, touch base)
"did you finally connect with your long-lost cousin?";
 
10. Plug into an outlet (= plug in, plug into)
"Connect the TV so we can watch the football game tonight";
 
11. (baseball) hit or play a ball successfully
"The batter connected for a home run"
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

  final String _videoId = '0Ths2-vspNA';
  final double _startSeconds = 68;

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

  final String _videoId = 'upiiNyibfF0';
  final double _startSeconds = 64;

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

  final String _videoId = '-Nmaqp9Drco';
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

  final String _videoId = 'gFuEoxh5hd4';
  final double _startSeconds = 386;

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

  final String _videoId = '0SYKA00eFWY';
  final double _startSeconds = 169;

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

  final String _videoId = 'H9rO5sKzOiQ';
  final double _startSeconds = 4141;

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

  final String _videoId = 'r-Or05EFLUM';
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

// end WORD_WEB