import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "blank" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace blank - /blæŋk/

enum TtsState { playing }

class EnglishEntryblank extends StatelessWidget {
// blank divider
  EnglishEntryblank({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblank(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blank");
  }

  Future<void> speakblanks1(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sign your name in the blank space below.");
  }

  Future<void> speakblanks2(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Write on one side of the paper and leave the other side blank.");
  }

  Future<void> speakblanks3(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Suddenly the screen went blank.");
  }

  Future<void> speakblanks4(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She stared at me with a blank expression on her face.");
  }

  Future<void> speakblanks5(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He maintained a blank denial of any involvement in the crime.");
  }

  Future<void> speakblanks6(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If you can't answer the question, leave a blank.");
  }

  Future<void> speakblanks7(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My mind was a blank and I couldn't remember her name.");
  }

  Future<void> speakblanks8(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The troops fired blanks in the air.");
  }

  Future<void> speakblanks9(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I saw her on the bus this morning, but she totally blanked me.");
  }

  Future<void> speakblanks10(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I knew the answer, but I totally blanked during the test.");
  }

  Future<void> speakblanks11(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1111");
  }

  Future<void> speakblanks12(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1212");
  }

  Future<void> speakblanks13(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1313");
  }

  Future<void> speakblanks14(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1414");
  }

  Future<void> speakblanks15(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1515");
  }

  Future<void> speakblanks16(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1616");
  }

  Future<void> speakblanks17(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1717");
  }

  Future<void> speakblanks18(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1818");
  }

  Future<void> speakblanks19(String languageCode) async {
    // DOPSUM: CHANGE speakblank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblanks1919");
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
                            EntryTitle(word: "blank"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /blæŋk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblank("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /blæŋk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblank("en-US"),
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
کوردی: سپی، نەنووسراو، بێ‌نیشان، بەتاڵ، (چەک) سپی، پارەتیانەنووسراو، کەمتەرم، بەتەنگەوەنەبوو، بێ‌خەیاڵ، بۆش، واڵا، پووچەڵ، پووچ، بەتاڵ، چۆڵ، بێ‌ناوەرۆک، ھێچ‌تیانەبوو، لێڵ، نادیار، تەژمە(لە باس‌کردنی دیواردا) بێ‌درگاوپەنجێرە، تەواو، ڕەھا، جێگای بەتاڵ، مەودا یا جێگای سپی و خاڵی، جێگای نەنووسراو، سپیایی، فەرامۆشی، لەبیرچوونەوە، داخوازی‌نامە، بۆشایی، ڤالاھی، بۆشی، گوللەی مەشقی، فیشەکەدرۆزنە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) بەتاڵ، بە بێ ئەوەی ھیچی لەسەر نووسرابیت یان چاپکرابێت"),
                          SentencesRow(
                            englishText:
                                "Sign your name in the blank space below.",
                            kurdishText:
                                "ناوت واژۆ بکە لە بۆشاییە بەتاڵەکەی خوارەوە.",
                            onPressedBritish: () => speakblanks1("en-GB"),
                            onPressedAmerican: () => speakblanks1("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Write on one side of the paper and leave the other side blank.",
                            kurdishText:
                                "لەسەر لایەکی پەڕەکە بنووسە و لایەکەی دیکەی بە بەتاڵی جێبھێڵە.",
                            onPressedBritish: () => speakblanks2("en-GB"),
                            onPressedAmerican: () => speakblanks2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) دیوارێک یان شاشەیەک کە ھیچی لەسەر نییە"),
                          SentencesRow(
                            englishText: "Suddenly the screen went blank.",
                            kurdishText: "شاشەکە لەناکاو ڕەش بوو.",
                            onPressedBritish: () => speakblanks3("en-GB"),
                            onPressedAmerican: () => speakblanks3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بە بێ پیشاندانی ھەست، تێگەشتن، یان پەرۆشی"),
                          SentencesRow(
                            englishText:
                                "She stared at me with a blank expression on her face.",
                            kurdishText:
                                "لێی دەڕوانیم بە دەربڕینێکی وشکەوە لەسەر ڕووخساری.",
                            onPressedBritish: () => speakblanks4("en-GB"),
                            onPressedAmerican: () => speakblanks4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) بەتەواوی"),
                          SentencesRow(
                            englishText:
                                "He maintained a blank denial of any involvement in the crime.",
                            kurdishText:
                                "سوور بوو لەسەر ئەوەی کە ھیچ بەژداری نەبووە لە تاوانەکە.",
                            onPressedBritish: () => speakblanks5("en-GB"),
                            onPressedAmerican: () => speakblanks5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) ناوچەیەکی بەتاڵ لەسەر پەڕەیەک کە زانیاری یان وەڵامی تێدا دەنووسی"),
                          SentencesRow(
                            englishText:
                                "If you can't answer the question, leave a blank.",
                            kurdishText:
                                "ئەگەر ناتوانی وەڵامی پرسیارەکە بدەیتەوە، بە بەتاڵی جێیبھێڵە.",
                            onPressedBritish: () => speakblanks6("en-GB"),
                            onPressedAmerican: () => speakblanks6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) دۆخی بێ تانایی لە بیرکەوتنەوەی ھیچ شتێک"),
                          SentencesRow(
                            englishText:
                                "My mind was a blank and I couldn't remember her name.",
                            kurdishText:
                                "مێشکم سفر بوو و دەمدەتوانی ناویم بیربکەوێتەوە.",
                            onPressedBritish: () => speakblanks7("en-GB"),
                            onPressedAmerican: () => speakblanks7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) قەباغێک لە چەکێکدا کە کە تەقەمەنی تێدایە بەڵام فیشەکی تێدا نییە"),
                          SentencesRow(
                            englishText: "The troops fired blanks in the air.",
                            kurdishText:
                                "سەربازەکان فیشەکەدرۆزنەیان تەقاندە ئاسمان.",
                            onPressedBritish: () => speakblanks8("en-GB"),
                            onPressedAmerican: () => speakblanks8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) فەرامۆشکردنی کەسێک بە تەواوی"),
                          SentencesRow(
                            englishText:
                                "I saw her on the bus this morning, but she totally blanked me.",
                            kurdishText:
                                "ئەم بەیانییە لە پاسەکەدا بینیم، بەڵام تەواو پشتگوێی خستم.",
                            onPressedBritish: () => speakblanks9("en-GB"),
                            onPressedAmerican: () => speakblanks9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) لەناکاو بێ توانا بیت شتێکت بیربکەوێتەوە"),
                          SentencesRow(
                            englishText:
                                "I knew the answer, but I totally blanked during the test.",
                            kurdishText:
                                "وەڵامەکەم دەزانی، بەڵام بە تەواوی بیرمچوو لەکاتی تاقیکردنەوەکە.",
                            onPressedBritish: () => speakblanks10("en-GB"),
                            onPressedAmerican: () => speakblanks10("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                        YoutubeEmbeddedthirteen(),
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
- Adjective: blank (derived forms: blankest, blanker)
1. (of a surface) not written or printed on (= clean, white)
"blank pages"; "fill in the blank spaces";
 
2. Without comprehension
"When I called her name, she gave me a blank look, as though she didn't know me"
 
3. Not charged with a bullet
"a blank cartridge"
 
4. Complete and absolute (= utter)
"blank stupidity";

- Noun: blank (derived forms: blanks)
1. A blank character used to separate successive words in writing or printing (= space)
"he said the blank is the most important character in the alphabet";
 
2. A blank gap or missing part (= lacuna)
 
3. A piece of material ready to be made into something
 
4. A cartridge containing an explosive charge but no bullet (= dummy, blank shell)

- Verb: blank (derived forms: blanking, blanked, blanks)
1. [N. Amer, informal] Keep the opposing (baseball) team from winning
 
2. Make or become blank (= blank out)
"blank the screen";
 
3. [Brit, informal] Ignore or not acknowledge someone
"I stupidly waved to her but she blanked me and walked past without a word"
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 522;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 1308;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1011;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 807;

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

  final String _videoId = 'fbVRnlR_6BM';
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

  final String _videoId = '1RBUAEARqoY';
  final double _startSeconds = 10;

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

  final String _videoId = 'S-4rhjO6xYg';
  final double _startSeconds = 495;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 295;

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

  final String _videoId = 'SEZu7K5tGxw';
  final double _startSeconds = 333;

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

  final String _videoId = 'yFCs_C_syas';
  final double _startSeconds = 1894;

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

  final String _videoId = 'yDp3cB5fHXQ';
  final double _startSeconds = 5172;

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

  final String _videoId = 'VP8DD9TGNlU';
  final double _startSeconds = 15;

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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'qrra18TChxY';
  final double _startSeconds = 1816;

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

// end blank// TODO Implement this library.
