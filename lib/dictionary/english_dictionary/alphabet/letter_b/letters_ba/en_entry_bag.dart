import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bag" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bag - replace EnglishEntrybag

// replace speakBag - /bæɡ/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntrybag extends StatelessWidget {
// blank divider
  EnglishEntrybag({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbag(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bag");
  }

  Future<void> speakbags1(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was carrying a heavy bag of groceries.");
  }

  Future<void> speakbags2(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She tipped out the contents of her bag.");
  }

  Future<void> speakbags3(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I packed my bags and left for the airport.");
  }

  Future<void> speakbags4(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She ate a bag of chips.");
  }

  Future<void> speakbags5(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was considering cosmetic surgery to deal with the bags under her eyes.");
  }

  Future<void> speakbags6(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Silly old bag!");
  }

  Future<void> speakbags7(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We got a good bag today.");
  }

  Future<void> speakbags8(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Get in! There's bags of room.");
  }

  Future<void> speakbags9(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The fruit is washed, sorted and bagged at the farm.");
  }

  Future<void> speakbags10(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We bagged ten fish in two hours.");
  }

  Future<void> speakbags11(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Harkin bagged two goals in last night's win.");
  }

  Future<void> speakbags12(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sally had managed to bag the two best seats.");
  }

  Future<void> speakbags13(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stop bagging her out - she's doing her best.");
  }

  Future<void> speakbags14(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They decided to bag the trip because they were short of cash.");
  }

  Future<void> speakbags15(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBags1515");
  }

  Future<void> speakbags16(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBags1616");
  }

  Future<void> speakbags17(String languageCode) async {
    // DOPSUM: CHANGE speakBag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBags1717");
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
                                word: "bag"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bæɡ/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakbag("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bæɡ/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakbag("en-US"),
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
کوردی: جانتا، ھەمانە، توورەکە، ھەگبە، کیس، کیسە، جزدان، ساک، کیف، جەواڵ، ھۆڕ؟، خورج، تیوەرە، تێڕ، دەلق، پاکەت، بڕی جێ‌بوونەوە، ڕاو، نێچیرەوانی, بڕ یان ژمارەیەکی زۆر، ماس، با (ژێرچاو، بێ‌خەوی یا لەبەر پیری)
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) شتێک کە لە پارچە، پلاستیک، یان کاغەز درووستکراوە و بەکاردێت بۆ ھەڵگرتنی شت"""),
                          SentencesRow(
                            englishText:
                                "He was carrying a heavy bag of groceries.",
                            kurdishText: "توورەکەیەکی قورس لە میوەی ھەڵگرتبوو.",
                            onPressedBritish: () => speakbags1("en-GB"),
                            onPressedAmerican: () => speakbags1(// REPLACE: bag
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She tipped out the contents of her bag (= handbag).",
                            kurdishText: "شتومەکەکانی ناو جانتاکەی بەتاڵکرد.",
                            onPressedBritish: () => speakbags2("en-GB"),
                            onPressedAmerican: () => speakbags2(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) جانتایەکی گەورە کە بەکاردێت بۆ تێخستنی جلوبەرگ لە کاتی گەشتکردن"""),
                          SentencesRow(
                            englishText:
                                "I packed my bags and left for the airport.",
                            kurdishText:
                                "جانتاکانم کۆکردەوە و بەڕێکەوتم بۆ فڕۆکەخانەکە.",
                            onPressedBritish: () => speakbags3("en-GB"),
                            onPressedAmerican: () => speakbags3(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئەو بڕەی کە لە جانتایەک، کیسەیەک، ھتد جێی دەبێتەوە"""),
                          SentencesRow(
                            englishText: "She ate a bag of chips.",
                            kurdishText: "کیسەیەک جبسی خوارد.",
                            onPressedBritish: () => speakbags4("en-GB"),
                            onPressedAmerican: () => speakbags4(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ڕێژەیەکی زۆر لە شتێک"""),
                          SentencesRow(
                            englishText: "Get in! There's bags of room.",
                            kurdishText: "وەرە ژوورەوە، جێگەیەکی زۆر ھەیە.",
                            onPressedBritish: () => speakbags8("en-GB"),
                            onPressedAmerican: () => speakbags8(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پارچە گۆشتی ژێر چاو بەھۆی کەمخەوی یان پیری"""),
                          SentencesRow(
                            englishText:
                                "She was considering cosmetic surgery to deal with the bags under her eyes.",
                            kurdishText:
                                "بیری لە نەشتەرگەری جوانکاری دەکردەوە بۆ چارەسەری گۆشتی زیادەی ژێر چاوانی.",
                            onPressedBritish: () => speakbags5("en-GB"),
                            onPressedAmerican: () => speakbags5(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) وشەیەکی نەشیاو بۆ ژنێکی پیر"""),
                          SentencesRow(
                            englishText: "Silly old bag!",
                            kurdishText: "پیرەژنی دەبەنگ!",
                            onPressedBritish: () => speakbags6("en-GB"),
                            onPressedAmerican: () => speakbags6(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) تەواوی ئەو باڵندانە یان ئاژەڵانەی کە پێکەوە ڕاودەکرێن"""),
                          SentencesRow(
                            englishText: "We got a good bag today.",
                            kurdishText: "ئەمڕۆ ڕاوێکی باشمان کرد.",
                            onPressedBritish: () => speakbags7("en-GB"),
                            onPressedAmerican: () => speakbags7(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) دانانی شت لەناو جانتا، کیسە، ھتد"""),
                          SentencesRow(
                            englishText:
                                "The fruit is washed, sorted and bagged at the farm.",
                            kurdishText:
                                "میوەکان شۆردراون، جتاکراونەتەوە، و لە کیسەکراون لە کێڵگەکە.",
                            onPressedBritish: () => speakbags9("en-GB"),
                            onPressedAmerican: () => speakbags9(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) گرتن یان کوشتنی ئاژەڵ"""),
                          SentencesRow(
                            englishText: "We bagged ten fish in two hours.",
                            kurdishText: "دە ماسیمان لە دوو کاتژمێردا گرت.",
                            onPressedBritish: () => speakbags10("en-GB"),
                            onPressedAmerican: () => speakbags10(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) تۆمارکردنی گۆڵ، خاڵ، ھتد"""),
                          SentencesRow(
                            englishText:
                                "Harkin bagged two goals in last night's win.",
                            kurdishText:
                                "ھارکین لە بردنەوەکەی دوێنێ شەودا دوو گۆڵی تۆمارکرد.",
                            onPressedBritish: () => speakbags11("en-GB"),
                            onPressedAmerican: () => speakbags11(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) بەدەستھێنانی شتێک پێش کەسێکی تر"""),
                          SentencesRow(
                            englishText:
                                "Sally had managed to bag the two best seats.",
                            kurdishText: "سالی دوو باشترین جێگەی گرتبوو.",
                            onPressedBritish: () => speakbags12("en-GB"),
                            onPressedAmerican: () => speakbags12(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) لۆمەکردنی کەسێک"""),
                          SentencesRow(
                            englishText:
                                "Stop bagging her (out) - she's doing her best.",
                            kurdishText:
                                "واز لە لۆمەکردنی بێنە، ھەموو ھەوڵی خۆی دەدا.",
                            onPressedBritish: () => speakbags13("en-GB"),
                            onPressedAmerican: () => speakbags13(// REPLACE: bag
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بڕیاردان لەسەر نەکردنی شتێک چونکە پێت وایە سەرکەوتوو نابێت، یان پێت وایە باشترە دوای بخەیت"""),
                          SentencesRow(
                            englishText:
                                "They decided to bag the trip because they were short of cash.",
                            kurdishText:
                                "بڕیاریان دا گەشتەکە نەکەن چونکە پارەی کاشیان کەم لەبەردەست بوو.",
                            onPressedBritish: () => speakbags14("en-GB"),
                            onPressedAmerican: () => speakbags14(// REPLACE: bag
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
- Noun: bag (derived forms: bags)
1. A flexible container with a single opening
"he stuffed his laundry into a large bag"
 
2. The quantity of game taken in a particular period (usually by one person)
"his bag included two deer"
 
3. A place that the runner must touch before scoring (= base)
"he scrambled to get back to the bag";
 
4. A container used for carrying money and small personal items or accessories (especially by women) (= handbag, pocketbook, purse)
"she reached into her bag and found a comb";
 
5. The quantity that a bag will hold (= bagful)
"he ate a large bag of popcorn";
 
6. A portable rectangular container for carrying clothes (= traveling bag [US], travelling bag, grip, suitcase)
"he carried his small bag onto the plane with him";
 
7. [informal] An ugly or ill-tempered woman (= old bag [informal])
"he was romancing the old bag for her money";
 
8. Mammary gland of bovids (cows and sheep and goats) (= udder)
 
9. [informal] An activity that you like or at which you are superior (= dish [informal])
"his bag now is learning to play golf";

- Verb: bag (derived forms: bagging, bagged, bags)
1. Put into a bag
"The supermarket clerk bagged the groceries"
 
2. Make first claim on something; take possession of (= bagsy [UK])
 
3. (hunting) capture or kill, as in hunting
"bag a few pheasants"
 
4. Hang loosely, like an empty bag
 
5. Bulge out; form a bulge outward, or be so full as to appear to bulge (= bulge)
 
6. [informal] Take unlawfully (= pocket)
 
7. [Austral, informal] Criticize sarcastically
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

  final String _videoId = 'FnpGmCuk-u0';
  final double _startSeconds = 169;

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

  final String _videoId = 'BXraT177uMY';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'h02NI8jCtKk';
  final double _startSeconds = 567;

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

  final String _videoId = '5EJQQPKHtJw';
  final double _startSeconds = 4;

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

  final String _videoId = 'EokXA_g7-5Y';
  final double _startSeconds = 27;

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

  final String _videoId = 'lRrS5FgJ2aI';
  final double _startSeconds = 319;

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

  final String _videoId = '4flqVgcFO9E';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'MhUb6zhFVww';
  final double _startSeconds = 15;

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

  final String _videoId = 'fKRUJNEbK5s';
  final double _startSeconds = 14;

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

  final String _videoId = 'pF0VcRL0rxw';
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'Oq61TxejZ5g';
  final double _startSeconds = 30;

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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 299;

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

// end bag // TODO Implement this library.
