import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bank" and provide five example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bank - replace EnglishEntrybank

// replace speakBank - /bæŋk/

enum TtsState { playing }

class EnglishEntrybank extends StatelessWidget {
// blank divider
  EnglishEntrybank({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbank(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bank");
  }

  Future<void> speakbanks1(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't have much money in the bank at the end of the month.");
  }

  Future<void> speakbanks2(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The player's bank was dwindling after several losses.");
  }

  Future<void> speakbanks3(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They intend to establish a bank of information which will be accessible to the public.");
  }

  Future<void> speakbanks4(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The blood bank is always in need of donations.");
  }

  Future<void> speakbanks5(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Take old clothes and shoes to the recycling bank.");
  }

  Future<void> speakbanks6(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The river burst its banks after heavy rain.");
  }

  Future<void> speakbanks7(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There were low banks of earth between the rice fields.");
  }

  Future<void> speakbanks8(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The driver carefully navigated the sharp bend on the banked road.");
  }

  Future<void> speakbanks9(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sun disappeared behind a bank of clouds.");
  }

  Future<void> speakbanks10(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was faced with a huge bank of switches and buttons.");
  }

  Future<void> speakbanks11(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is believed to have banked £10 million in two years.");
  }

  Future<void> speakbanks12(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The family had banked with Bank of America for generations.");
  }

  Future<void> speakbanks13(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The pilot banked the plane to give passengers a better look at the mountain.");
  }

  Future<void> speakbanks14(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The snow had banked up in the corner of the garden.");
  }

  Future<void> speakbanks15(String languageCode) async {
    // DOPSUM: CHANGE speakBank
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We banked up the fire to keep it burning all night.");
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
                                word: "bank"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bæŋk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbank("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bæŋk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbank("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: بانک، کەنار، کەناراو، موزورگ، پەراڤ، لێواری ڕووبار، بەستێن، ڕۆخ، تەپۆڵکە، زورگ، لێوار، زێوار، قەراخ، پەراوێز، (زەوی‌زار) بەستە، سەرحەد، کەوشەن، کەڵەکە، کۆما، تۆپەڵە، بارستە، لێژ، لاپێیی (ڕێگا)، بەلاداخواربوونەوەی فڕۆکە لە کاتی لادانا
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) دامەزراوەیەک کە ژمارەیەک خزمەتگوزاری دارایی پێشکەش دەکات، بۆ نموونە ھەڵگرتن و بەقەرزدانی پارە"""),
                          SentencesRow(
                            englishText:
                                "I don't have much money in the bank at the end of the month.",
                            kurdishText:
                                "لە کۆتایی مانگەکەدا پارەم زۆر لە بانک نامێنێت.",
                            onPressedBritish: () => speakbanks1("en-GB"),
                            onPressedAmerican: () => speakbanks1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) لە قوماردا ئەو پارەیە کە خاوەنەکەی دەیخاتە گرەو و بەژداربووان دەتوانن بیبەنەوە"""),
                          SentencesRow(
                            englishText:
                                "The player's bank was dwindling after several losses.",
                            kurdishText:
                                "پارەی یاریزانەکە بەرەو کەمبوون دەچوو لە دوای ژمارەیەک دۆڕان.",
                            onPressedBritish: () => speakbanks2("en-GB"),
                            onPressedAmerican: () => speakbanks2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ڕێژەیەک لە شت کە بەردەستە، یان ئەو شوێنەی کە تێیدایە"""),
                          SentencesRow(
                            englishText:
                                "They intend to establish a bank of information which will be accessible to the public.",
                            kurdishText:
                                "دەیانەوێت بانکێکی زانیاری درووست بکەن کە بەردەستبێت بۆ خەڵکی.",
                            onPressedBritish: () => speakbanks3("en-GB"),
                            onPressedAmerican: () => speakbanks3("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The blood bank is always in need of donations.",
                            kurdishText:
                                "بانکی خوێنەکە ھەمیشە پێویستی بە بەخشینە.",
                            onPressedBritish: () => speakbanks4("en-GB"),
                            onPressedAmerican: () => speakbanks4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) شوێنێک کە شتی تێدا دادەنرێت بۆ دووبارە بەکارھێنانەوە"""),
                          SentencesRow(
                            englishText:
                                "Take old clothes and shoes to the recycling bank.",
                            kurdishText:
                                "جل و پێڵاوی کۆن ببە بۆ بانکی دووبارەبەکارھێنانەوەکە.",
                            onPressedBritish: () => speakbanks5("en-GB"),
                            onPressedAmerican: () => speakbanks5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) قەراخی ڕووبارێک"""),
                          SentencesRow(
                            englishText:
                                "The river burst its banks after heavy rain.",
                            kurdishText:
                                "ڕووبارەکە قەراخەکانی پڕکرد لە دوای بارانی خەست.",
                            onPressedBritish: () => speakbanks6("en-GB"),
                            onPressedAmerican: () => speakbanks6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) تەپۆلکە؛ ناوچەیەکی بەرز کە لە لاکەشەکانییەوە دادەبەزێت"""),
                          SentencesRow(
                            englishText:
                                "There were low banks of earth between the rice fields.",
                            kurdishText:
                                "تەپۆلکەی نزمی زەوی ھەبوو لەنێوان کێڵگە برنجەکان.",
                            onPressedBritish: () => speakbanks7("en-GB"),
                            onPressedAmerican: () => speakbanks7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) لێژاییەکی دەستکرد لە قەراخی ڕێگایەک کە لێژبووە بەرەو ناوەوە بۆ ڕێگری لە خلیسکان لە کاتی پێچکردنەوە"""),
                          SentencesRow(
                            englishText:
                                "The driver carefully navigated the sharp bend on the banked road.",
                            kurdishText:
                                "شۆفێرەکە بەوریاییەوە دەرچوو بە پێچکردنەوە تیژەکە لەسەر ڕێگا لێژبووەکە.",
                            onPressedBritish: () => speakbanks8("en-GB"),
                            onPressedAmerican: () => speakbanks8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) تۆپەڵێک لە ھەور، بەفر، ھتد، بەتایبەتی ئەگەر درووست بووبێت بەھۆی باوە"""),
                          SentencesRow(
                            englishText:
                                "The sun disappeared behind a bank of clouds.",
                            kurdishText: "خۆر کەوتە پشت تۆپەڵە ھەورێک.",
                            onPressedBritish: () => speakbanks9("en-GB"),
                            onPressedAmerican: () => speakbanks9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) زنجیرەیەک لە ھەمان شت، بەتایبەتی ئامێر"""),
                          SentencesRow(
                            englishText:
                                "She was faced with a huge bank of switches and buttons.",
                            kurdishText:
                                "ڕێژەیەکی زۆر لە سویچ و دووگمەی لەپێش بوو.",
                            onPressedBritish: () => speakbanks10("en-GB"),
                            onPressedAmerican: () => speakbanks10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) پارە خستنە بانک (لە دوای قازانجکردن)"""),
                          SentencesRow(
                            englishText:
                                "She is believed to have banked (= been paid) £10 million in two years.",
                            kurdishText:
                                "باوەڕوایە ١٠ ملیۆن یۆرۆی قازانج کردبێت (خستبێتە بانک) لە دوو ساڵدا.",
                            onPressedBritish: () => speakbanks11("en-GB"),
                            onPressedAmerican: () => speakbanks11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) ھەبوونی ھەژمارێک بانکێکی دیاریکراو"""),
                          SentencesRow(
                            englishText:
                                "The family had banked with Bank of America for generations.",
                            kurdishText:
                                "خێزانەکە بۆ چەندین نەوەیە ھەژماریان لە بانکی ئەمریکا ھەیە.",
                            onPressedBritish: () => speakbanks12("en-GB"),
                            onPressedAmerican: () => speakbanks12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) (فڕۆکە) گەشتکردن لەکاتێکدا لایەک بەرزترە لە لایەکی ترە"""),
                          SentencesRow(
                            englishText:
                                "The pilot banked the plane to give passengers a better look at the mountain.",
                            kurdishText:
                                "فڕۆکەوانەکە فڕۆکەکەی خست بە لادا بۆ ئەوەی دیمەنێکی باشتری شاخەکە بدات بە گەشتیاران.",
                            onPressedBritish: () => speakbanks13("en-GB"),
                            onPressedAmerican: () => speakbanks13("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) درووستکردنی کەڵەکەیەک لە شت"""),
                          SentencesRow(
                            englishText:
                                "The snow had banked up in the corner of the garden.",
                            kurdishText:
                                "بەفرەکە کەڵەکەی کردبوو لە سووچی باخچەکە.",
                            onPressedBritish: () => speakbanks14("en-GB"),
                            onPressedAmerican: () => speakbanks14("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (کردار) کەڵەکەکردنی خەڵووز، ھتد لەسەر ئاگر"""),
                          SentencesRow(
                            englishText:
                                "We banked up the fire (= put more coal on it) to keep it burning all night.",
                            kurdishText:
                                "ئاگرەکەمان خۆشکردەوە بۆ ئەوەی تەواوی شەوەکە بسوتێت.",
                            onPressedBritish: () => speakbanks15("en-GB"),
                            onPressedAmerican: () => speakbanks15("en-US"),
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
                        YoutubeEmbeddedthirteen(),
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
- Noun: bank (derived forms: banks, banking, banked)
1. Sloping land (especially the slope beside a body of water)
"they pulled the canoe up on the bank"; "he sat on the bank of the river and watched the currents"
 
2. A financial institution that accepts deposits and channels the money into lending activities (= depository financial institution, banking concern, banking company)
"that bank holds the mortgage on my home"; "he cashed a check at the bank";
 
3. A long ridge or pile
"a huge bank of earth"
 
4. An arrangement of similar objects in a row or in tiers
"he operated a bank of switches"
 
5. A supply or stock held in reserve for future use (especially in emergencies)
 
6. The funds held by a gambling house or the dealer in some gambling games
"he tried to break the bank at Monte Carlo"
 
7. A slope in the turn of a road or track; the outside is higher than the inside in order to reduce the effects of centrifugal force (= cant, camber)
 
8. A container (usually with a slot in the top) for keeping money at home (= savings bank, coin bank, money box)
"the coin bank was empty"; "the savings bank was empty";

9. A building in which the business of banking is transacted (= bank building)
"the bank is on the corner of Nassau and Witherspoon";

10. A flight manoeuvre; aircraft tips laterally about its longitudinal axis (especially in turning)
"the plane went into a steep bank"

- Verb: bank (derived forms: banks, banking, banked)
1. Tip laterally
"the pilot had to bank the aircraft"
 
2. Enclose with a bank
"bank roads"
 
3. Do business with a bank or keep an account at a bank
"Where do you bank in this town?"
 
4. Act as the banker in a game or in gambling
 
5. Be in the banking business
 
6. Put into a bank account (= deposit)
"She banks her paycheque every month";
 
7. Cover with ashes so as to control the rate of burning
"bank a fire"
 
8. Have faith or confidence in (= count, bet, depend, swear, rely, look, calculate, reckon)
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

  final String _videoId = '63tQ7yGmsmI';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'wknSc6HRUMI';
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

  final String _videoId = 'rUXG_p64Lzo';
  final double _startSeconds = 9;

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

  final String _videoId = 'oJUv16WQuDM';
  final double _startSeconds = 18;

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

  final String _videoId = 'rUXG_p64Lzo';
  final double _startSeconds = 525;

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

  final String _videoId = 'kogxHSPXKzk';
  final double _startSeconds = 55;

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

  final String _videoId = 'DCOm4osfWn8';
  final double _startSeconds = 26;

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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 5;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1028;

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

  final String _videoId = 'h4CyhQqAPpk';
  final double _startSeconds = 277;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 911;

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

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 1094;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 314;

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
