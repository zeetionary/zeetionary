import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bother" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bother - /ˈbɒðə(r)/

enum TtsState { playing }

class EnglishEntrybother extends StatelessWidget {
// blank divider
  EnglishEntrybother({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbother(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bother");
  }

  Future<void> speakbothers1(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't know why I bother! Nobody ever listens!");
  }

  Future<void> speakbothers2(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If that’s all the thanks I get, I won’t bother in future!");
  }

  Future<void> speakbothers3(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's not worth bothering with an umbrella—the car's just outside.");
  }

  Future<void> speakbothers4(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The thing that bothers me is I have to wake up very early.");
  }

  Future<void> speakbothers5(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has been bothered by a leg injury.");
  }

  Future<void> speakbothers6(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't want to bother her with my problems at the moment.");
  }

  Future<void> speakbothers7(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stop bothering me when I'm working.");
  }

  Future<void> speakbothers8(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sorry to bother you, but there's a call for you on line two.");
  }

  Future<void> speakbothers9(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You seem to have got yourself into a spot of bother.");
  }

  Future<void> speakbothers10(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't want to put you to any bother.");
  }

  Future<void> speakbothers11(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Call them and save yourself the bother of going round.");
  }

  Future<void> speakbothers12(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I hope I haven't been a bother.");
  }

  Future<void> speakbothers13(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Bother! I've left my wallet at home.");
  }

  Future<void> speakbothers14(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers1414");
  }

  Future<void> speakbothers15(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers1515");
  }

  Future<void> speakbothers16(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers1616");
  }

  Future<void> speakbothers17(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers1717");
  }

  Future<void> speakbothers18(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers1818");
  }

  Future<void> speakbothers19(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers1919");
  }

  Future<void> speakbothers20(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers2020");
  }

  Future<void> speakbothers21(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers2121");
  }

  Future<void> speakbothers22(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers2222");
  }

  Future<void> speakbothers23(String languageCode) async {
    // DOPSUM: CHANGE speakbother
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbothers2323");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
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
                            EntryTitle(word: "bother"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɒðə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbother("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɑːðər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbother("en-US"),
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
                  VideoIconForTab(), // 01
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: وەی، ئەھـ، ئاخ، چەڵەمە، گیروگرفت، کۆس‌وکەوان، کێشە، سەرێشە، دڵەڕاوکێ، نیگەرانی، ملۆزم، مایەی کۆس‌وکەوان، بێزارکەر، وەڕەس‌کەر، ھەراسان‌کەر
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) بەسەربردنی کات یان ھێز بە کردنی شتێکەوە"),
                          SentencesRow(
                            englishText:
                                "I don't know why I bother! Nobody ever listens!",
                            kurdishText:
                                "نازانم بۆ خۆم ماندوو دەکەم! کەس ھەرگیز گوێ ناگرێت!",
                            onPressedBritish: () => speakbothers1("en-GB"),
                            onPressedAmerican: () => speakbothers1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "If that’s all the thanks I get, I won’t bother in future!",
                            kurdishText:
                                "ئەگەر ئەوە ھەموو ئەو سوپاسە وەریدەگرم، لە داھاتوودا ھەر خۆم ماندوو ناکەم!",
                            onPressedBritish: () => speakbothers2("en-GB"),
                            onPressedAmerican: () => speakbothers2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's not worth bothering with (= using) an umbrella—the car's just outside.",
                            kurdishText:
                                "پێویست بە بەکارھێنانی چەتر ناکات، ئۆتۆمبێلەکە ڕێک لە دەرەوەیە.",
                            onPressedBritish: () => speakbothers3("en-GB"),
                            onPressedAmerican: () => speakbothers3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بێزارکردن یان نیگەرانکردنی کەسێک، یان درووستکردنی کێشە و ئازار"),
                          SentencesRow(
                            englishText:
                                "The thing that bothers me is I have to wake up very early.",
                            kurdishText:
                                "ئەوەی ناخۆشە بۆم ئەوەیە دەبێت زۆر زوو لە خەو ھەڵبستم.",
                            onPressedBritish: () => speakbothers4("en-GB"),
                            onPressedAmerican: () => speakbothers4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She has been bothered by a leg injury.",
                            kurdishText: "بە دەست برینی لاقەوە دەناڵێنێت.",
                            onPressedBritish: () => speakbothers5("en-GB"),
                            onPressedAmerican: () => speakbothers5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't want to bother her with my problems at the moment.",
                            kurdishText:
                                "نامەوێت لە ئێستادا بە کێشەکانمەوە ناڕەحەتی بکەم.",
                            onPressedBritish: () => speakbothers6("en-GB"),
                            onPressedAmerican: () => speakbothers6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) پچڕاندنی قسە یان کار بە کەسێک، یان قسەکردن لەگەڵی لەکاتێکدا نایەوێت قسە بکات"),
                          SentencesRow(
                            englishText: "Stop bothering me when I'm working.",
                            kurdishText: "کە کاردەکەم سەرقاڵم مەکە.",
                            onPressedBritish: () => speakbothers7("en-GB"),
                            onPressedAmerican: () => speakbothers7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Sorry to bother you, but there's a call for you on line two.",
                            kurdishText:
                                "ببوورە لە کاتت دەگرم، بەڵام پەیوەندییەک بۆت لەسەر ھێڵە.",
                            onPressedBritish: () => speakbothers8("en-GB"),
                            onPressedAmerican: () => speakbothers8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کێشە و ناڕەحەتی"),
                          SentencesRow(
                            englishText:
                                "You seem to have got yourself into a spot of bother.",
                            kurdishText:
                                "وادیارە خۆت خستووەتە ناو کەمێک کێشەوە.",
                            onPressedBritish: () => speakbothers9("en-GB"),
                            onPressedAmerican: () => speakbothers9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't want to put you to any bother (= cause you any trouble).",
                            kurdishText: "نامەوێت برخەمە ھیچ کێشەیەکەوە.",
                            onPressedBritish: () => speakbothers10("en-GB"),
                            onPressedAmerican: () => speakbothers10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Call them and save yourself the bother of going round.",
                            kurdishText:
                                "پەیوەندی بکە لە جیاتی ئەوەی بە پێ بچیت.",
                            onPressedBritish: () => speakbothers11("en-GB"),
                            onPressedAmerican: () => speakbothers11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) کەسێک، شتێک، یان دۆخێکی ناخۆش."),
                          SentencesRow(
                            englishText: "I hope I haven't been a bother.",
                            kurdishText: "ھیوادارم نەبووبێتم بە سەرێشە بۆتان.",
                            onPressedBritish: () => speakbothers12("en-GB"),
                            onPressedAmerican: () => speakbothers12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (سەرسوڕمان) بۆ دەربڕینی بێزاری دەربارەی شتێک"),
                          SentencesRow(
                            englishText: "Bother! I've left my wallet at home.",
                            kurdishText: "ئەھـ، جزدانەکەم لە ماڵەوە جێھێشتووە.",
                            onPressedBritish: () => speakbothers13("en-GB"),
                            onPressedAmerican: () => speakbothers13("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                        // YoutubeEmbeddeddsixteen(),
                        // YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
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
- Verb: bother (derived forms: bothered, bothering, bothers)
1. Take the trouble to do something; concern oneself (= trouble oneself, trouble, inconvenience oneself)
"Don't bother, please";

2. Cause annoyance in; disturb, especially by minor irritations (= annoy, rag, get to, get at [informal], irritate, rile, nark [Brit, slang], nettle, gravel [US], vex, chafe, devil, tick off [informal], roil [N. Amer])
"Mosquitoes buzzing in my ear really bothers me";
 
3. To cause inconvenience or discomfort to (= trouble, put out, inconvenience, disoblige, discommode, incommode)
"Sorry to bother you, but...";

4. Intrude or enter uninvited
"Don't bother the professor while she is grading term papers"
 
5. Make nervous or agitated
"The mere thought of her bothered him and made his heart beat faster"
 
6. Make confused, perplexed or puzzled

- Noun: bother (derived forms: bothers)
1. An angry disturbance (= fuss, trouble, hassle [informal], stink [informal], shindy [informal])
"a spot of bother";

2. Something or someone that causes annoyance, inconvenience, or makes life more difficult (= annoyance, botheration [informal], pain, infliction, pain in the neck [informal], irritation, nuisance)
"a bit of a bother";

3. Something annoying or fiddly that takes some time to do (= faff [Brit, informal], hassle [informal])

- Interjection: bother
Usage: Brit
1. Exclamation of annoyance (= blast, botheration, bummer [informal], curses, dang [N. Amer, informal], damn, damnation, dammit [informal], damn it [informal], darn [informal], dash [Brit, informal], durn [US, dialect], drat [informal], hang [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'zAGVQLHvwOY';
  final double _startSeconds = 10;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 201;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '4J0xFUyz1nw';
  final double _startSeconds = 1003;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 888;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'G6NfRMv-4OY';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'D0x2dgpBDzc';
  final double _startSeconds = 998;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'PXsZntwnArQ';
  final double _startSeconds = 520;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'iEKLFS-aKcw';
  final double _startSeconds = 83;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'WxB1gB6K-2A';
  final double _startSeconds = 214;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'gFQNPmLKj1k';
  final double _startSeconds = 1628;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'yDp3cB5fHXQ';
  final double _startSeconds = 2489;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = '0twDETh6QaI';
  final double _startSeconds = 5329;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end bother
