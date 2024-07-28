import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconnection extends StatelessWidget {
// blank divider
  EnglishEntryconnection({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconnection(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("connection");
  }

  Future<void> speakconnections1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists have established a connection between cholesterol levels and heart disease.");
  }

  Future<void> speakconnections2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His resignation must have some connection with the recent scandal.");
  }

  Future<void> speakconnections3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He denied any connection to the scam.");
  }

  Future<void> speakconnections4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His death had no connection with drugs.");
  }

  Future<void> speakconnections5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She did not make the connection between her diet and her poor health.");
  }

  Future<void> speakconnections6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She wanted to sever all her connections with the company.");
  }

  Future<void> speakconnections7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm having problems with my internet connection.");
  }

  Future<void> speakconnections8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Connection to the gas supply was delayed for three days.");
  }

  Future<void> speakconnections9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sorry, could you repeat that? This is a very bad connection.");
  }

  Future<void> speakconnections10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A faulty connection caused the machine to stop.");
  }

  Future<void> speakconnections11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If you break the connection, the light won't come on.");
  }

  Future<void> speakconnections12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I missed the connection by five minutes.");
  }

  Future<void> speakconnections13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We arrived in good time for the connection to Paris.");
  }

  Future<void> speakconnections14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We'll be lucky if we make our connection.");
  }

  Future<void> speakconnections15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are good bus and train connections between the resort and major cities.");
  }

  Future<void> speakconnections16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("One of my business connections gave them my name.");
  }

  Future<void> speakconnections17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He got his job through connections.");
  }

  Future<void> speakconnections18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is British but also has German connections.");
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
                            EntryTitle(word: "connection"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈnekʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconnection("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈnekʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconnection("en-US"),
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
کوردی: پێکەوەبەستن، پێکبەستن، بەستن، پێکەوبەستراوی، ھاوبەندی، ھەڤبەندی، پێکبەندی، گرێدان، بەستنەوە، ئارا، ھاوبەستی، پێک‌بەستنەوە، پێوەستی، پەیوەستی، تێکەڵی، پێوەندی،	درێژەپێدەر، درێژەی ڕێ یان سەفەر (فڕۆکە، شەمەندەفەر و پاس)،	ھێڵ (تەلەفون)،	ناسیاو، شناس، دۆست،	مشتەری، کڕیار
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) شتێک کە دوو ڕاستی، بیرۆکە، ھتد پێکەوە دەبەستێتەوە"),
                          SentencesRow(
                            englishText:
                                "Scientists have established a connection between cholesterol levels and heart disease.",
                            kurdishText:
                                "زاناکان پەیوەندییەکیان لە نێوان ئاستی کۆلێسترۆڵ و نەخۆشی دڵ درووستکردووە.", // connection",
                            onPressedBritish: () => speakconnections1("en-GB"),
                            onPressedAmerican: () => speakconnections1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His resignation must have some connection with the recent scandal.",
                            kurdishText:
                                "دەستلەکارکێشانەوەکەی دەبێت پەیوەندییەکی ھەبووبێت بە ئابڕووچوونەکەی ئەم دواییە.",
                            onPressedBritish: () => speakconnections2("en-GB"),
                            onPressedAmerican: () => speakconnections2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He denied any connection to the scam.",
                                    kurdishText:
                                        "نکۆڵی لە ھەر پەیوەندییەک بە ساختەکارییەکەوە کرد.",
                                    onPressedBritish: () =>
                                        speakconnections3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnections3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "His death had no connection with drugs.",
                                    kurdishText:
                                        "مردنەکەی ھیچ پەیوەندی بە مادەی ھۆشبەرەوە نەبوو.",
                                    onPressedBritish: () =>
                                        speakconnections4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnections4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She did not make the connection between her diet and her poor health.",
                                    kurdishText:
                                        "تەندرووستی خراپیی نەبەستەوە بە خواردنی ڕۆژانەیی.",
                                    onPressedBritish: () =>
                                        speakconnections5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnections5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She wanted to sever all her connections with the company.",
                                    kurdishText:
                                        "ویستی ھەموو پەیوەندییەکی بە کۆمپانیاکەوە بپچڕێنێت.",
                                    onPressedBritish: () =>
                                        speakconnections6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconnections6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دۆخی پێکەوەبەستراوی یان پەیوەستبووی"),
                          SentencesRow(
                            englishText:
                                "I'm having problems with my internet connection.",
                            kurdishText: "کێشەم ھەیە لە پەیوەندی ئینتەرنێتمدا.",
                            onPressedBritish: () => speakconnections7("en-GB"),
                            onPressedAmerican: () => speakconnections7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Connection to the gas supply was delayed for three days.",
                            kurdishText:
                                "پەیوەندی بە سەرچاوەی گازەکەوە دواکەوت بۆ سێ ڕۆژ.",
                            onPressedBritish: () => speakconnections8("en-GB"),
                            onPressedAmerican: () => speakconnections8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Sorry, could you repeat that? This is a very bad connection.",
                            kurdishText:
                                "ببوورە، دەتوانیت دووبارەی بکەیتەوە؟ پەیوەندییەکی زۆر خراپە.",
                            onPressedBritish: () => speakconnections9("en-GB"),
                            onPressedAmerican: () => speakconnections9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) خاڵێک کە تێیدا دوو بەش یەکدەگرن"),
                          SentencesRow(
                            englishText:
                                "A faulty connection caused the machine to stop.",
                            kurdishText:
                                "پێک‌بەستنەوەیەکی ھەڵە بووە ھۆکاری ئەوەی ئامێرەکە بوەستێت.",
                            onPressedBritish: () => speakconnections10("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If you break the connection, the light won't come on.",
                            kurdishText:
                                "ئەگەر پەوەندییەکە بپچڕێنیت، ڕۆشناییەکە پێنابێت.",
                            onPressedBritish: () => speakconnections11("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شەمەندەفەرێک، پاسێک، یان فڕۆکەیەک کە گەشتیارێکی دەتوانێت سەری بکەوێت ڕاستەوخۆ لە دوای جێھێشتنی یەکێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "I missed the connection by five minutes.",
                            kurdishText:
                                "بە پێنج خولەک درێژەپێدەرەکەم لەدەستدا.",
                            onPressedBritish: () => speakconnections12("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We arrived in good time for the connection to Paris.",
                            kurdishText:
                                "لە کاتی گونجاودا گەشتین بۆ درێژەپێدەرەکەمان بۆ پاریس.",
                            onPressedBritish: () => speakconnections13("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We'll be lucky if we make our connection.",
                            kurdishText:
                                "بە بەخت دەبین ئەگەر بگەین بە درێژەپێدەرەکەماندا.",
                            onPressedBritish: () => speakconnections14("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) ئامرازی گواستنەوە لە شوێنێکەوە بۆ شوێنێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "There are good bus and train connections between the resort and major cities.",
                            kurdishText:
                                "گواستنەوەی باشی پاس و شەمەندەفەر ھەیە لە نێوان سەیرانگاکە و شارە گرنگەکاندا.",
                            onPressedBritish: () => speakconnections15("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) کەسێک یان دامەزراوەیەک کە دەیناسیت و یارمەتی و ڕاوێژ بە یەکدی دەدەن"),
                          SentencesRow(
                            englishText:
                                "One of my business connections gave them my name.",
                            kurdishText:
                                "یەکێک لە ناسیاوەکانی کارکردنم ناومی پێیان دا.",
                            onPressedBritish: () => speakconnections16("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He got his job through connections.",
                            kurdishText: "کارەکەی وەرگرت لە ڕێگەی ناسیاوییەوە.",
                            onPressedBritish: () => speakconnections17("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەسانێک کە خزمتن بەڵام ئەندامی خزانەکەت نین"),
                          SentencesRow(
                            englishText:
                                "She is British but also has German connections.",
                            kurdishText:
                                "بەریتانییە بەڵام چەند خزمێکی ئەڵمانی ھەیە.",
                            onPressedBritish: () => speakconnections18("en-GB"),
                            onPressedAmerican: () =>
                                speakconnections18("en-US"),
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
- Noun: connection (derived forms: connections)
1. A relation between things or events (as in the case of one causing the other or sharing features with it) (= connexion [Brit], connectedness)
"there was a connection between eating that pickle and having that nightmare";
 
2. The state of being connected (= link, connectedness)
"the connection between church and state is inescapable";
 
3. Something that connects things together (= connexion [Brit], connector, connecter, connective)
"he soldered the connection";
 
4. (usually plural) a person who is influential and to whom you are connected in some way (as by family or friendship)
"he has powerful connections"
 
5. The process of bringing ideas or events together in memory or imagination (= association, connexion [Brit])
"conditioning is a form of learning by connection";
 
6. A connecting shape (= connexion [Brit], link)
 
7. A supplier (especially of narcotics)
 
8. Shifting from one form of transportation to another (= connexion [Brit])
"the plane was late and he missed his connection in Atlanta";
 
9. The act of bringing two things into contact (especially for communication) (= joining, connexion [Brit])
"there was a connection via the internet";
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '0rZDz1hnM70';
  final double _startSeconds = 28;

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

  final String _videoId = 'iMiE90AnvFk';
  final double _startSeconds = 1083;

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

  final String _videoId = 'gn0905T5z94';
  final double _startSeconds = 46;

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
  final double _startSeconds = 60;

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

  final String _videoId = '1XKSo2mFC6c';
  final double _startSeconds = 255;

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

  final String _videoId = 'wTAJSuhgZxA';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '4zAkoXyhrdI';
  final double _startSeconds = 376;

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