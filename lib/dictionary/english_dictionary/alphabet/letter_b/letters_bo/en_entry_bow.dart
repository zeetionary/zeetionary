import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bow" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// bow
// /baʊ/

enum TtsState { playing }

class EnglishEntrybow extends StatelessWidget {
  EnglishEntrybow({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbow(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("bow");
  }

  Future<void> speakbows1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He bowed low to the assembled crowd.");
  }

  Future<void> speakbows2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The people all bowed down before the emperor.");
  }

  Future<void> speakbows3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He swept off his hat and bowed deeply to the queen.");
  }

  Future<void> speakbows4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She bowed her head in shame.");
  }

  Future<void> speakbows5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their backs were bowed under the weight of their packs.");
  }

  Future<void> speakbows6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She gave a slight bow of her head in greeting.");
  }

  Future<void> speakbows7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The messenger made a formal bow and left the room.");
  }

  Future<void> speakbows8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ship's name was printed on her bow.");
  }

  Future<void> speakbows9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You can achieve a completely different tone by bowing the strings nearer to the bridge.");
  }

  Future<void> speakbows10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was armed with a bow and arrow.");
  }

  Future<void> speakbows11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She drew and aimed her bow.");
  }

  Future<void> speakbows12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I tied the ribbon around the present in a pretty bow.");
  }

  Future<void> speakbows13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She drew the bow across the strings.");
  }

  Future<void> speakbows14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows1414");
  }

  Future<void> speakbows15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows1515");
  }

  Future<void> speakbows16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows1616");
  }

  Future<void> speakbows17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows1717");
  }

  Future<void> speakbows18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows1818");
  }

  Future<void> speakbows19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows1919");
  }

  Future<void> speakbows20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2020");
  }

  Future<void> speakbows21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2121");
  }

  Future<void> speakbows22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2222");
  }

  Future<void> speakbows23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2323");
  }

  Future<void> speakbows24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2424");
  }

  Future<void> speakbows25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2525");
  }

  Future<void> speakbows26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbows2626");
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
                            EntryTitle(word: "bow"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baʊ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbow("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baʊ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbow("en-US"),
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
کوردی: کەوان، کەمە، کەوانە (نێوان دوو سەری کەوان: ماڵ)، دەنووکە، ئاڕشە، ژێژەنە(ک)، نووشتانەوە، چەمانەوە، چەمینەوە، نووچ، گرێ قوڵفە یان خزیو، پاپیۆن، پەلکەزێڕینە، کۆلکەزێڕینە، کەسک‌وسۆر، بۆنووشتانەوە، داھاتنەو بە نیشانەی ڕێز، کڕنۆش
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) چەمانەوە بۆ ڕێزگرتن یان ماڵئاوایی"),
                          SentencesRow(
                            englishText: "He bowed low to the assembled crowd.",
                            kurdishText: "چەمایەوە بۆ جەماوەرە کۆبووەوەکە.",
                            onPressedBritish: () => speakbows1("en-GB"),
                            onPressedAmerican: () => speakbows1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The people all bowed down before the emperor.",
                            kurdishText:
                                "خەڵکەکە ھەموو لە پێش ئیمپراتۆر چەمانەوە.",
                            onPressedBritish: () => speakbows2("en-GB"),
                            onPressedAmerican: () => speakbows2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He swept off his hat and bowed deeply to the queen.",
                            kurdishText: "کڵاوەکەی لابرد و بۆ شاژن چەمایەوە.",
                            onPressedBritish: () => speakbows3("en-GB"),
                            onPressedAmerican: () => speakbows3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) جوڵانی سەرت بەرەو پێش و دواوە"),
                          SentencesRow(
                            englishText: "She bowed her head in shame.",
                            kurdishText: "لە شەرمدا سەری دەلەقاند.",
                            onPressedBritish: () => speakbows4("en-GB"),
                            onPressedAmerican: () => speakbows4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) چەمانەوە یان چەماندنەوە"),
                          SentencesRow(
                            englishText:
                                "Their backs were bowed under the weight of their packs.",
                            kurdishText:
                                "پشتیان چەمابوویەوە لەژێر کێشی بارەکەیان.",
                            onPressedBritish: () => speakbows5("en-GB"),
                            onPressedAmerican: () => speakbows5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) لێدانی میوزیک بە بەکارھێنانی ئاڕشەیەک"),
                          SentencesRow(
                            englishText:
                                "You can achieve a completely different tone by bowing the strings nearer to the bridge.",
                            kurdishText:
                                "ئەتوانی تۆنێکی تەواو جیاواز دەربکەیت بە دانانی ئاڕشەکە لەسەر تەلەکان نزیک لە پردەڵەکە.",
                            onPressedBritish: () => speakbows9("en-GB"),
                            onPressedAmerican: () => speakbows9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) چەمانەوە بۆ ڕێزگرتن یان ماڵئاوایی"),
                          SentencesRow(
                            englishText:
                                "She gave a slight bow of her head in greeting.",
                            kurdishText: "سەری بە کەمی چەماندەوە بۆ سڵاوکردن.",
                            onPressedBritish: () => speakbows6("en-GB"),
                            onPressedAmerican: () => speakbows6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The messenger made a formal bow and left the room.",
                            kurdishText:
                                "پەیامھێنەرەکە نووشتاوەیەکی فەرمی ئەنجامدا و ژوورەکەی جێھێشت.",
                            onPressedBritish: () => speakbows7("en-GB"),
                            onPressedAmerican: () => speakbows7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) بەشی پێشەوەی بەلەمێک یان کەشتییەک"),
                          SentencesRow(
                            englishText:
                                "The ship's name was printed on her bow.",
                            kurdishText: "ناوی کەشتییەکە لە پێشەوەی نووسرابوو.",
                            onPressedBritish: () => speakbows8("en-GB"),
                            onPressedAmerican: () => speakbows8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) کەوان کە بۆ تیر ھاویشتن بەکاردێت"),
                          SentencesRow(
                            englishText: "He was armed with a bow and arrow.",
                            kurdishText: "تیر و کەوانێکی پێبوو.",
                            onPressedBritish: () => speakbows10("en-GB"),
                            onPressedAmerican: () => speakbows10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She drew and aimed her bow.",
                            kurdishText: "کەوانەکەی ڕاکێشا و نیشانەی گرتەوە.",
                            onPressedBritish: () => speakbows11("en-GB"),
                            onPressedAmerican: () => speakbows11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) گرێیەک کە دوو بەشی چەماوە و دوو بەشی شلی تێدایە، بەکاردێت بۆ دیکۆرات یان بەستنی بە پێڵاوەوە"),
                          SentencesRow(
                            englishText:
                                "I tied the ribbon around the present in a pretty bow.",
                            kurdishText:
                                "شریتەکەم لە دەوری دیارییەکە بەست لە شێوەی گرێیەکی جواندا.",
                            onPressedBritish: () => speakbows12("en-GB"),
                            onPressedAmerican: () => speakbows12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) ئاڕشە؛ دارێکی درێژ کە تەلی باریک لە تەنیشتییەتی و بەکاردێت، بەکاردێت بۆ ژەنینی ژمارەیەک ئامێری میوزیکی وەک کەمانچە"),
                          SentencesRow(
                            englishText: "She drew the bow across the strings.",
                            kurdishText: "ئاڕشەکەی ھێنا بە تەلەکاندا.",
                            onPressedBritish: () => speakbows13("en-GB"),
                            onPressedAmerican: () => speakbows13("en-US"),
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
- Noun: bow (derived forms: bowing, bows, bowed)
1. A knot with two loops and loose ends; used to tie shoelaces (= bowknot)
 
2. A slightly curved piece of resilient wood with taut horsehair strands; used in playing certain stringed instruments
 
3. A weapon for shooting arrows, composed of a curved piece of resilient wood with a taut cord to propel the arrow
 
4. Something curved in shape (= arc)
 
5. A decorative interlacing of ribbons
 
6. A stroke with a curved piece of wood with taut horsehair strands that is used in playing stringed instruments

7. Front part of a vessel or aircraft (= fore, prow, stem)
"he pointed the bow of the boat toward the finish line";

8. An appearance by actors or performers at the end of the concert or play in order to acknowledge the applause of the audience (= curtain call)
 
9. Bending the head or body or knee as a sign of reverence or submission or shame or greeting (= bowing, obeisance)

- Verb: bow
1. (music) play on a stringed instrument with a bow

2. Bend one's knee or body, or lower one's head (= bow down)
 
3. Yield to another's wish or opinion (= submit, defer, accede, give in)
 
4. Bend the head or the upper part of the body in a gesture of respect or greeting
"He bow[2]ed before the King"
 
5. Bend one's back forward from the waist on down (= stoop, bend)
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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 459;

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

  final String _videoId = 'pdipblQmgnw';
  final double _startSeconds = 222;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 633;

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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 949;

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

  final String _videoId = 'ZDIvj1GvH64';
  final double _startSeconds = 143;

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

  final String _videoId = '65CFesU4KVQ';
  final double _startSeconds = 177;

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

  final String _videoId = 'OeVp9S1HzqI';
  final double _startSeconds = 358;

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

  final String _videoId = 'n4bucphC9r4';
  final double _startSeconds = 571;

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

  final String _videoId = '9K_CZizKdVs';
  final double _startSeconds = 772;

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

  final String _videoId = 'xVQxvthAcLU';
  final double _startSeconds = 1463;

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

  final String _videoId = 'WUjVPIEtJd0';
  final double _startSeconds = 1445;

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

  final String _videoId = 'Mj3hMXIQsoc';
  final double _startSeconds = 1368;

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

// end bow
