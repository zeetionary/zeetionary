import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "balance" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace balance - replace EnglishEntrybalance

// replace speakBalance - /ˈbæləns/

enum TtsState { playing }

class EnglishEntrybalance extends StatelessWidget {
// blank divider
  EnglishEntrybalance({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbalance(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("balance");
  }

  Future<void> speakbalances1(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This newspaper maintains a good balance in its presentation of different opinions.");
  }

  Future<void> speakbalances2(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Try to keep a balance between work and relaxation.");
  }

  Future<void> speakbalances3(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He set his feet wider and adjusted his balance.");
  }

  Future<void> speakbalances4(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He asked the cashier for the balance of his current account.");
  }

  Future<void> speakbalances5(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The balance of £500 must be paid within 90 days.");
  }

  Future<void> speakbalances6(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He argues that the balance has swung too far in favour of capitalism.");
  }

  Future<void> speakbalances7(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The scientist used a balance to measure the weight of the sample.");
  }

  Future<void> speakbalances8(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How long can you balance on one leg?");
  }

  Future<void> speakbalances9(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The song perfectly balances melody and rhythm.");
  }

  Future<void> speakbalances10(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This year's profits will balance out our previous losses.");
  }

  Future<void> speakbalances11(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cost of obtaining legal advice needs to be balanced against its benefits.");
  }

  Future<void> speakbalances12(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In order to balance the budget severe spending cuts had to be made.");
  }

  Future<void> speakbalances13(String languageCode) async {
    // DOPSUM: CHANGE speakBalance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I tried to work out why the books wouldn't balance.");
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
                            EntryTitle(
                                word: "balance"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈbæləns/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakbalance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈbæləns/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakbalance("en-US"),
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
کوردی: ھاوسەنگی، ھاوکێشی، لەنگەر، تەرازی، تەرازمەندی، میزانی، تەرازێتی، ھاوتەرازی، ھاوڕێکی، کۆکی، گونجان، پاشماوە، باقی، سەرباقی، تەرازوو، لەنگەرە، لیزۆک (سەعات)، جەڕ، کۆک، جەڕی میزان
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) دۆخێک کە تێیدا ژمارەیەک شت بوونیان ھەیە پێکەوە بە ھەمان بڕ"""),
                          SentencesRow(
                            englishText:
                                "This newspaper maintains a good balance in its presentation of different opinions.",
                            kurdishText:
                                "ئەم ڕۆژنامە بێ‌لایەنی خۆی بە باشی دەپارێزێت لە وێناکردنی بەچوونی جیاوازدا.",
                            onPressedBritish: () => speakbalances1("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances1(// REPLACE: balance
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Try to keep a balance between work and relaxation.",
                            kurdishText:
                                "ھەوڵبدە ھاوسەنگی بپارێزی لەنێوان کارکردن و حەسانەوە.",
                            onPressedBritish: () => speakbalances2("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances2(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) توانای وەستان لەکاتێکدا کێشی جیاواز لەسەر لایەکانی جەستەیە"""),
                          SentencesRow(
                            englishText:
                                "He set his feet wider and adjusted his balance.",
                            kurdishText:
                                "پێیەکانی بڵاوکردەوە و ھاوسەنگیی ڕێکخست.",
                            onPressedBritish: () => speakbalances3("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances3(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) بڕی ماوە لە دوای بەکارھێنانی پارە"""),
                          SentencesRow(
                            englishText:
                                "He asked the cashier for the balance of his current account.",
                            kurdishText:
                                "داوای لە کاشیەرەکە کرد باڵانسی ھەژمارەکەی ئێستای پێ بڵێت.",
                            onPressedBritish: () => speakbalances4("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances4(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) بڕی قەرزی ماوە"""),
                          SentencesRow(
                            englishText:
                                "The balance of £500 must be paid within 90 days.",
                            kurdishText:
                                "بڕی قەرزی ماوەی ٥٠٠ پاوەند دەبێت لە ماوەی ٩٠ ڕۆژدا بدرێتەوە.",
                            onPressedBritish: () => speakbalances5("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances5(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) گەورەترین بەشی گرووپێک یان بڕێک"""),
                          SentencesRow(
                            englishText:
                                "He argues that the balance has swung too far in favour of capitalism.",
                            kurdishText:
                                "پێی‌وایە تەوازن زۆر بەلای سەرمایەداریدا چووە.",
                            onPressedBritish: () => speakbalances6("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances6(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) تەرازوویەک کە لە دوو دەفر پێکھاتووە کە دەبێت وەکو یەکدی بن لە بەرزیدا بۆ ئەوەی ھەردوو دەفرەکە ھەمان کێشیان ھەبێت"""),
                          SentencesRow(
                            englishText:
                                "The scientist used a balance to measure the weight of the sample.",
                            kurdishText:
                                "زاناکە تەرازوویەکی بەکارھێنا بۆ پێوانی کێشی نموونەکە.",
                            onPressedBritish: () => speakbalances7("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances7(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) ھاوسەنگی ڕاگرتنی شتێک"""),
                          SentencesRow(
                            englishText: "How long can you balance on one leg?",
                            kurdishText: "چەندە دەتوانی لەسەر یەک پێ بوەستیت؟",
                            onPressedBritish: () => speakbalances8("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances8(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) گرنگیدانی یەکسان بە دوو شتی جیاواز"""),
                          SentencesRow(
                            englishText:
                                "The song perfectly balances melody and rhythm.",
                            kurdishText:
                                "گۆرانییەکە بە تەواوی ھاوسەنگی دەپارێزێت لەنێوان ئاواز و ڕیتم.",
                            onPressedBritish: () => speakbalances9("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances9(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) یەکسان بوون لە بڕ یان نرخدا لەگەڵ شتێکی تری پێچەوانە"""),
                          SentencesRow(
                            englishText:
                                "This year's profits will balance out our previous losses.",
                            kurdishText:
                                "قازانجەکانی ئەمساڵ زیانەکانی پار قەرەبوو دەکەنەوە.",
                            onPressedBritish: () => speakbalances10("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances10(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) بەراوردکردنی گرنگی ڕێژەیی دوو شتی جیاواز"""),
                          SentencesRow(
                            englishText:
                                "The cost of obtaining legal advice needs to be balanced against its benefits.",
                            kurdishText:
                                "تێچووی وەرگرتنی ڕاوێژی یاسایی دەبێت لەبەرچاو بگیردرێت لەگەڵ سوودەکانی (ڕاوێژەکە).",
                            onPressedBritish: () => speakbalances11("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances11(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) سەرپەرشتی خەرجکردنی پارە بۆ ئەوەی بڕی پارەی خەرجکراو و وەرگیردراو یەکسان بن"""),
                          SentencesRow(
                            englishText:
                                "In order to balance the budget severe spending cuts had to be made.",
                            kurdishText:
                                "بۆ ھەڵسوڕاندنی بودجە، دەبوو ڕێژەی خەرجی بە ئاستێکی زۆر کەمبکرێتەوە.",
                            onPressedBritish: () => speakbalances12("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances12(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) ھەبوونی ھەمان ڕێژە لە پارەی خەرجکراو و وەرگیردراو"""),
                          SentencesRow(
                            englishText:
                                "I tried to work out why the books wouldn't balance.",
                            kurdishText:
                                "نەمدەتوانی تێبگەم بۆچی خەرجی و قازانج یەکناگرنەوە.",
                            onPressedBritish: () => speakbalances13("en-GB"),
                            onPressedAmerican: () =>
                                speakbalances13(// REPLACE: balance
                                    "en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
- Noun: balance (derived forms: balances)
1. A state of equilibrium
 
2. Equality between the totals of the credit and debit sides of an account
 
3. Harmonious arrangement or relation of parts or elements within a whole (as in a design) (= proportion, proportionality)
"in all perfectly beautiful objects there is found the opposition of one part to another and a reciprocal balance";
 
4. Equality of distribution (= equilibrium, equipoise, counterbalance)
 
5. Something left after other parts have been taken away (= remainder, residual, residue, residuum, rest)
"he took what he wanted and I got the balance";
 
6. The difference between the totals of the credit and debit sides of an account
 
7. (mathematics) an attribute of a shape or relation; exact reflection of form on opposite sides of a dividing line or plane (= symmetry, symmetricalness, correspondence)
 
8. A weight that balances another weight (= counterweight, counterbalance, counterpoise, equalizer, equaliser [Brit])
 
9. A wheel that regulates the rate of movement in a machine; especially a wheel oscillating against the hairspring of a timepiece to regulate its beat (= balance wheel)
 
10. A scale for weighing; depends on pull of gravity

- Verb: balance (derived forms: balancing, balanced, balances)
1. Bring into balance or equilibrium (= equilibrate, equilibrize, equilibrise [Brit])
"balance the two weights"; "She has to balance work and her domestic duties";
 
2. Compute credits and debits of an account
 
3. Hold or carry in equilibrium (= poise)
 
4. Be in equilibrium
"He was balancing on one foot"

- Noun: Balance
1. (astrology) a person who is born while the sun is in Libra (= Libra)
 
2. The seventh sign of the zodiac; the sun is in this sign from about September 23 to October 22 (= Libra, Libra the Balance, Libra the Scales)
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

  final String _videoId = '7TavVZMewpY';
  final double _startSeconds = 31;

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

  final String _videoId = '99i-Uo7rIpw';
  final double _startSeconds = 288;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 373;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 208;

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

  final String _videoId = 'u7JsKhI2An0';
  final double _startSeconds = 34;

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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 1720;

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

  final String _videoId = '9VsDP584zyQ';
  final double _startSeconds = 242;

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

  final String _videoId = 'n4bucphC9r4';
  final double _startSeconds = 118;

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

  final String _videoId = 'WUjVPIEtJd0';
  final double _startSeconds = 1179;

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

  final String _videoId = 'MzSktgpfD84';
  final double _startSeconds = 552;

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

  final String _videoId = 'toVfvRhWbj8';
  final double _startSeconds = 607;

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

  final String _videoId = 'UsS7i06z4aY';
  final double _startSeconds = 360;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end

// end balance // TODO Implement this library.
