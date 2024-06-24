import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bite" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace bite - /baɪt/

enum TtsState { playing }

class EnglishEntrybite extends StatelessWidget {
// blank divider
  EnglishEntrybite({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbite(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bite");
  }

  Future<void> speakbites1(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Does your dog bite?");
  }

  Future<void> speakbites2(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She bit into a ripe juicy pear.");
  }

  Future<void> speakbites3(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Most European spiders don't bite.");
  }

  Future<void> speakbites4(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fish aren't biting today.");
  }

  Future<void> speakbites5(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The recession is beginning to bite.");
  }

  Future<void> speakbites6(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He took a bite out of the apple.");
  }

  Future<void> speakbites7(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has to wear a brace to correct his bite.");
  }

  Future<void> speakbites8(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He didn't eat a bite of his dinner.");
  }

  Future<void> speakbites9(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We just have time for a bite to eat before the movie.");
  }

  Future<void> speakbites10(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was a bite mark on his arm.");
  }

  Future<void> speakbites11(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cheese will add extra bite to any pasta dish.");
  }

  Future<void> speakbites12(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a bite in the air tonight.");
  }

  Future<void> speakbites13(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The performance had no bite to it.");
  }

  Future<void> speakbites14(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The fishermen waited all afternoon for a bite.");
  }

  Future<void> speakbites15(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1515");
  }

  Future<void> speakbites16(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1616");
  }

  Future<void> speakbites17(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1717");
  }

  Future<void> speakbites18(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1818");
  }

  Future<void> speakbites19(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1919");
  }

  Future<void> speakbites20(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites2020");
  }

  Future<void> speakbites21(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites2121");
  }

  Future<void> speakbites22(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites2222");
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
                            EntryTitle(word: "bite"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbite("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbite("en-US"),
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
کوردی: قەپ، گاز، گازگرتن، گەزین، گەستن، قەپ‌گرتن، قەپاڵ، ددان لێ‌گیرکردن، چزوو، تیکە، پاروو، تەزوو، تەز، ھێز، تین، ستین، بڕشت، قەوەت، (چێشت و تام) تیژی، دۆخی
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) قەپگرتن، گازگرتن"),
                          SentencesRow(
                            englishText: "Does your dog bite?",
                            kurdishText: "سەگەکەت گاز دەگرێت؟",
                            onPressedBritish: () => speakbites1("en-GB"),
                            onPressedAmerican: () => speakbites1("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She bit into a ripe juicy pear.",
                            kurdishText: "گازی لە ھەرمێیەکی ئاوداری گەییو گرت.",
                            onPressedBritish: () => speakbites2("en-GB"),
                            onPressedAmerican: () => speakbites2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) گازگرتنی مێروو، مار، ھتد"),
                          SentencesRow(
                            englishText: "Most European spiders don't bite.",
                            kurdishText: "زۆرینەی جاڵجاڵۆکەی ئەورووپی ناگەزن.",
                            onPressedBritish: () => speakbites3("en-GB"),
                            onPressedAmerican: () => speakbites3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) کە ماسییەک دەبێت بە قولابێکەوە بە قەپگرتن لە سەرەکەی"),
                          SentencesRow(
                            englishText: "The fish aren't biting today.",
                            kurdishText: "ماسییەکان ئەمڕۆ نابنە قولابەکەوە.",
                            onPressedBritish: () => speakbites4("en-GB"),
                            onPressedAmerican: () => speakbites4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) ھەبوونی کاریگەرییەکی ناخۆش."),
                          SentencesRow(
                            englishText: "The recession is beginning to bite.",
                            kurdishText: "قەیرانەکە دەست بە خەستبوونەوە دەکات.",
                            onPressedBritish: () => speakbites5("en-GB"),
                            onPressedAmerican: () => speakbites5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) قەپگرتن، گازگرتن"),
                          SentencesRow(
                            englishText:
                                "He took a bite (= bit a piece) out of the apple.",
                            kurdishText: "قەپێکی لە سێوەکە گرت.",
                            onPressedBritish: () => speakbites6("en-GB"),
                            onPressedAmerican: () => speakbites6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) شێوازی پێکەوەلکانی بەشی سەرەوە و خوارەوەی ددان"),
                          SentencesRow(
                            englishText:
                                "He has to wear a brace to correct his bite.",
                            kurdishText:
                                "دەبوو تێلێک ببەستێ بۆ ڕێککردنەوەی ددانی.",
                            onPressedBritish: () => speakbites7("en-GB"),
                            onPressedAmerican: () => speakbites7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) پاروویەک لە خواردن"),
                          SentencesRow(
                            englishText:
                                "He didn't eat a bite of his dinner (= he ate nothing).",
                            kurdishText: "پاروویەک لە نانی ئێوارەی نەخوارد.",
                            onPressedBritish: () => speakbites8("en-GB"),
                            onPressedAmerican: () => speakbites8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) خواردنێکی کەم"),
                          SentencesRow(
                            englishText:
                                "We just have time for a bite to eat before the movie.",
                            kurdishText:
                                "کاتمان ھەیە تەنھا بۆ کەمێک خواردن ھەیە پێش فیلمەکە.",
                            onPressedBritish: () => speakbites9("en-GB"),
                            onPressedAmerican: () => speakbites9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) برین بە گازی ئاژەڵ"),
                          SentencesRow(
                            englishText: "There was a bite mark on his arm.",
                            kurdishText: "برینی گازێک لەسەر باڵی بوو.",
                            onPressedBritish: () => speakbites10("en-GB"),
                            onPressedAmerican: () => speakbites10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (ناو) تامێکی بەھێزی خۆش."),
                          SentencesRow(
                            englishText:
                                "Cheese will add extra bite to any pasta dish.",
                            kurdishText:
                                "پەنیر تامێکی بەلەزەت بۆ پاستا زیاد دەکات.",
                            onPressedBritish: () => speakbites11("en-GB"),
                            onPressedAmerican: () => speakbites11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (ناو) سەرمایەک لە ھەوادا"),
                          SentencesRow(
                            englishText: "There's a bite in the air tonight.",
                            kurdishText: "کزەیەک ھەیە لە ھەوادا.",
                            onPressedBritish: () => speakbites12("en-GB"),
                            onPressedAmerican: () => speakbites12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ناو) خاسیەتێک کە وا دەکات شتێک بەھێز یان کاریگەر بێت"),
                          SentencesRow(
                            englishText: "The performance had no bite to it.",
                            kurdishText: "نمایشەکە ھیچ تایبەتییەکی نەبوو.",
                            onPressedBritish: () => speakbites13("en-GB"),
                            onPressedAmerican: () => speakbites13("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) ماسییەک قەپ لە قولابێک بگرێت پێوە ببێت"),
                          SentencesRow(
                            englishText:
                                "The fishermen waited all afternoon for a bite.",
                            kurdishText:
                                "ماسیگرەکە تەواوی نیوەڕۆکە چاوەڕێ بوو ماسییەک پێوە ببێت.",
                            onPressedBritish: () => speakbites14("en-GB"),
                            onPressedAmerican: () => speakbites14("en-US"),
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
                        YoutubeEmbeddeddfourteen(),
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
- Verb: bite (derived forms: bit, bitten, bites, biting)
1. To grip, cut off, or tear with or as if with the teeth or jaws (= seize with teeth)
"Gunny invariably tried to bite her";

2. Cause a sharp or stinging pain or discomfort (= sting, burn)
"The sun bit his face";

3. Penetrate or cut, as with a knife
"The fork bit into the surface"
 
4. Deliver a sting to (= sting, prick)
"A bee bit my arm yesterday";

- Noun: bite (derived forms: bites)
1. A wound resulting from biting by an animal or a person
 
2. A small amount of solid food; a mouthful (= morsel, bit)
"all they had left was a bite of bread";

3. A painful wound caused by the thrust of an insect's stinger into skin (= sting, insect bite)
 
4. A light informal meal (= collation, snack)
 
5. (angling) an instance of a fish taking the bait
"after fishing for an hour he still had not had a bite"
 
6. Wit having a sharp and caustic quality (= pungency)
"the bite of satire";
 
7. A strong odour or taste property (= pungency, sharpness, raciness)
"the sulphurous bite of garlic";
 
8. The act of gripping or chewing off with the teeth and jaws (= chomp)
 
9. A portion removed from the whole
"the government's weekly bite from my paycheque"
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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 955;

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

  final String _videoId = 'DO9U_XxN-Kc';
  final double _startSeconds = 252;

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

  final String _videoId = 'MnExgQ81fhU';
  final double _startSeconds = 53;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 454;

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

  final String _videoId = 'X3n5Pk8fkLg';
  final double _startSeconds = 170;

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

  final String _videoId = 'XI9kKiyIMf0';
  final double _startSeconds = 604;

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

  final String _videoId = '5_uSZcXMV7s';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'wtPYJMwuDO8';
  final double _startSeconds = 408;

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

  final String _videoId = 'WbRNKL2F4y4';
  final double _startSeconds = 38;

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

  final String _videoId = 'nFbEHbo7ki4';
  final double _startSeconds = 406;

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

  final String _videoId = 'Kfhdp5U_J-E';
  final double _startSeconds = 536;

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

  final String _videoId = 'DBxdTkddHaE';
  final double _startSeconds = 930;

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

  final String _videoId = 'VYRWjZ8B93g';
  final double _startSeconds = 319;

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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'RSfJD7kjpbQ';
  final double _startSeconds = 245;

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

// end bite// TODO Implement this library.
