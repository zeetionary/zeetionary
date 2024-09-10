import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychip extends StatelessWidget {
  EnglishEntrychip({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchip(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("chip");
  }

  Future<void> speakchips1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was eating a burger and chips.");
  }

  Future<void> speakchips2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All he'll eat is chips.");
  }

  Future<void> speakchips3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She bought two bags of chips with the drinks.");
  }

  Future<void> speakchips4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He consumes vast quantities of chips with every meal.");
  }

  Future<void> speakchips5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("An electronic chip could be implanted in his brain.");
  }

  Future<void> speakchips6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This mug has a chip in it.");
  }

  Future<void> speakchips7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The chef used wood chips to prepare the fish.");
  }

  Future<void> speakchips8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The hostages are being held as a bargaining chip by terrorist organizations.");
  }

  Future<void> speakchips9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She chipped one of her front teeth.");
  }

  Future<void> speakchips10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These plates chip easily.");
  }

  Future<void> speakchips11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Chip away the damaged area.");
  }

  Future<void> speakchips12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It took a long time to chip a hole in the wall.");
  }

  Future<void> speakchips13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We chipped the paint off the wood.");
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
                            EntryTitle(word: "chip"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɪp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchip("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɪp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchip("en-US"),
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
کوردی: وردە، لەت، کەل، کوت، خاکە، ورکە، بڕکە، بڕە، قەڵت، بڕگە، تەفشک، قاشوولە، کرتێن، تەڵاش، قاش،	تەڵەزمە یان تەڵاشە (ئێلیکتڕۆنیک)،	لێوپەڕیوی، لێوقرنجاوی، کەل
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) قاژێکی باریک و درێژی پەتاتە کە لە ڕۆندا برژێندراوە"),
                          const AlsoEnglishckb(word: "ھەروەھا: French fry"),
                          SentencesRow(
                            englishText: "He was eating a burger and chips.",
                            kurdishText: "لەفە و پەتاتەی دەخوارد.",
                            onPressedBritish: () => speakchips1("en-GB"),
                            onPressedAmerican: () => speakchips1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "All he'll eat is chips.",
                            kurdishText: "ھەموو ئەوەی دەیخوات پەتاتەیە.",
                            onPressedBritish: () => speakchips2("en-GB"),
                            onPressedAmerican: () => speakchips2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) چپسی پەتاتەی خڕ و باریک کە برژێندراوە و ڕەق بووە، و بە ساردی دەخورێت"),
                          SentencesRow(
                            englishText:
                                "She bought two bags of chips with the drinks.",
                            kurdishText:
                                "دوو کیسە لە چپسی پەتاتەی کڕی لەگەڵ خواردنەوەکان.",
                            onPressedBritish: () => speakchips3("en-GB"),
                            onPressedAmerican: () => speakchips3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) قاژێک لە گەنمەشامی، مۆز، یان خواردنی دیکە کە برژێندراوە و بە ساردی و ڕەقی دەخورێت"),
                          SentencesRow(
                            englishText:
                                "He consumes vast quantities of chips with every meal.",
                            kurdishText:
                                "ڕێژەیەکی زۆر لە چیپس دەخوات لەگەڵ ھەر خواردنێکدا.",
                            onPressedBritish: () => speakchips4("en-GB"),
                            onPressedAmerican: () => speakchips4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) گەیەنەری زۆر بچووک لە ئامێرە تەکنەلۆجییەکاندا کە ئەرکی تایبەتی ھەیە"),
                          SentencesRow(
                            englishText:
                                "An electronic chip could be implanted in his brain.",
                            kurdishText:
                                "پارچەیەکی بچووک دەکرێت لە مێشکیدا بچێنرێت.",
                            onPressedBritish: () => speakchips5("en-GB"),
                            onPressedAmerican: () => speakchips5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) ئەو شوێنەی کە لێیەوە شکاوییەکی بچووک درووست بووە لەسەر شتێک، بۆ نموونە دارێک یان شووشەیەک، یان ئەو بەشە شکاوییەی کە لێبووەتەوە"),
                          SentencesRow(
                            englishText: "This mug has a chip in it.",
                            kurdishText: "گڵاسەکە کەلێنێکی تێدایە.",
                            onPressedBritish: () => speakchips6("en-GB"),
                            onPressedAmerican: () => speakchips6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The chef used wood chips to prepare the fish.",
                            kurdishText:
                                "شێفەکە تەڵاشە داری بەکارھێنا بۆ ئامادەکردنی ماسییەکە.",
                            onPressedBritish: () => speakchips7("en-GB"),
                            onPressedAmerican: () => speakchips7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) پەپکێکی پلاستیکی بچووک کە نرخێکی دیاریکراوی ھەیە لە قوماردا"),
                          SentencesRow(
                            englishText:
                                "The hostages are being held as a bargaining chip by terrorist organizations.",
                            kurdishText:
                                "(بەکارھێنانی خوازراوی) بارمتەکان وەک داشی دامە ڕاگیردراون لەلایەن دامەزراوە تیرۆریستییەکانەوە.",
                            onPressedBritish: () => speakchips8("en-GB"),
                            onPressedAmerican: () => speakchips8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) زیان گەیاندن بە شتێک بە لێ‌کردنەوەی بەشێکی بچووک لێی"),
                          SentencesRow(
                            englishText: "She chipped one of her front teeth.",
                            kurdishText: "یەکێک لە ددانەکانی پێشەوەی شکاند.",
                            onPressedBritish: () => speakchips9("en-GB"),
                            onPressedAmerican: () => speakchips9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "These plates chip easily.",
                            kurdishText:
                                "ئەم دەفرانە بە ئاسانی کەلێنیان تێ دەبێت.",
                            onPressedBritish: () => speakchips10("en-GB"),
                            onPressedAmerican: () => speakchips10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) لێ‌کردنەوەی پارچەی بچووک لە شتێک بە ئامێرێک"),
                          SentencesRow(
                            englishText: "Chip away the damaged area.",
                            kurdishText: "ناوچە زیان‌لێ‌کەوتووەکە لێ‌بکەوە.",
                            onPressedBritish: () => speakchips11("en-GB"),
                            onPressedAmerican: () => speakchips11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It took a long time to chip a hole in the wall.",
                            kurdishText:
                                "کاتێکی زۆری پێچوو کونێک بکەینە دیوارەکە.",
                            onPressedBritish: () => speakchips12("en-GB"),
                            onPressedAmerican: () => speakchips12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We chipped the paint off the wood.",
                            kurdishText: "بۆیەکەمان لە دارەکە لێ‌کردەوە.",
                            onPressedBritish: () => speakchips13("en-GB"),
                            onPressedAmerican: () => speakchips13("en-US"),
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
- Noun: chip (derived forms: chips)
1. A small fragment of something broken off from the whole (= bit, flake, fleck, scrap)
"a chip of rock caught him in the eye";
 
2. A mark left after a small piece has been chopped or broken off of something (= check)
 
3. Electronic equipment consisting of a small crystal of a silicon semiconductor fabricated to carry out a number of electronic functions in an integrated circuit (= microchip, micro chip, silicon chip, microprocessor chip)
 
4. [Brit] A strip of deep-fried potato (= French fry [N. Amer], french fry [N. Amer])
 
5. [N. Amer] A thin crisp slice of potato fried in deep fat (= crisp [Brit], potato chip [N. Amer], Saratoga chip, potato crisp [Brit])
 
6. A small disk-shaped counter used to represent money when gambling (= poker chip)
 
7. The act of chipping something (= chipping, splintering)
 
8. A piece of dried bovine dung (= cow chip, cow dung, buffalo chip)
 
9. (seafaring) a triangular wooden float attached to the end of a log line
 
10. (golf) a low running approach shot (= chip shot)

- Verb: chip (derived forms: chipping, chipped, chips)
1. Break off (a piece from a whole) (= chip off, come off, break away, break off)
"Her tooth chipped";

2. Cut a nick into (= nick)
 
3. (golf) play a chip shot
 
4. Form by chipping
"They chipped their names in the stone"
 
5. Break a small piece off from (= knap, cut off, break off)
"chip a tooth"; "chip the glass";
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

  final String _videoId = 'mwzJcIbdj2k';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '8IF75CnWUv4';
  final double _startSeconds = 189;

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

  final String _videoId = 'HuR7tL2eejw';
  final double _startSeconds = 25;

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

  final String _videoId = 'gPpAL_pG_Wc';
  final double _startSeconds = 71;

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

  final String _videoId = 'SUfjtKtkS2U';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'rEdl2Uetpvo';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'gmr41ht2Sq4';
  final double _startSeconds = 118;

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

  final String _videoId = '3cxHwQl9pNM';
  final double _startSeconds = 192;

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
