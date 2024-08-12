import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygrip extends StatefulWidget {
  const EnglishEntrygrip({super.key});

  @override
  State<EnglishEntrygrip> createState() => _EnglishEntrygripState();
}

class _EnglishEntrygripState extends State<EnglishEntrygrip> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: grip (derived forms: grips, gripping, gripped)
1. Hold fast or firmly
"He gripped the steering wheel"
 
2. Hold or seize, as in a wrestling match (= grapple)
 
3. To render motionless, as with a fixed stare or by arousing terror or awe (= fascinate, transfix, spellbind)
"The snake charmer grips the cobra";

- Noun: grip (derived forms: grips)
1. The act of grasping (= clasp, clench, clutch, clutches, grasp, hold)
"he has a strong grip for an old man";
 
2. The appendage to an object that is designed to be held in order to use or move it (= handle, handgrip, hold)
"it was an old briefcase but it still had a good grip";
 
3. A portable rectangular container for carrying clothes (= bag, traveling bag [US], travelling bag, suitcase)
 
4. The friction between a body and the surface on which it moves (as between an automobile tire and the road) (= traction, adhesive friction)
 
5. Worker who moves the camera around while a film or television show is being made
 
6. An intellectual hold or understanding (= grasp)
"a good grip on French history"; "they kept a firm grip on the two top priorities"; "he was in the grip of a powerful emotion";
 
7. A flat wire hairpin whose prongs press tightly together; used to hold bobbed hair in place (= bobby pin [N. Amer, Austral, NZ], hairgrip [UK])
"in Britain they call a bobby pin a grip";
""",
  );

  final String keyword = "grip";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""grip""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep a tight grip on the rope.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The climber slipped and lost her grip.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He finally broke her grip and escaped.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The home team took a firm grip on the game.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We need to tighten the grip we have on the market.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The Prime Minister needs to keep a tight grip on his party.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I couldn't get a grip on what was going on.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government does not seem to have a very firm grip on the economy.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These tyres give the bus better grip in slippery conditions.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The grip on a golf club was worn and needed replacing.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She gripped on to the railing with both hands.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She gripped hard at the arms of her chair.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Grip the rope as tightly as you can.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The book grips you from start to finish.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was totally gripped by the story.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was gripped by a feeling of panic.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A sudden fear gripped me.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Terrorism has gripped the country for the past two years.""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """grip""",
                      // alsoEnglishWord: "also: grip",
                      britshText: """IpaUK: /ɡrɪp/""",
                      americanText: """IpaUS: /ɡrɪp/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
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
                    englishMeaningConst,
                  ],
                ),
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: گرتن، گیر، دەس‌لێ‌گیرکردن، ھیزی گرتن، توانایی گرتن، گرۆکی، گیرایی،	جێگای دەست، جێ‌دەس،	دەسەڵات، دەس‌بەسەراگرتن، ھێز، کۆنتڕۆڵ،	تێگەیشتن، پێ‌پێبردن، پێزانین،	گیرە، مەنگەنە، گیرگە، بەست، دەسک، قوڵف، دەسگیرە، دەزگیرە،	چنگ، مشت،	دەرزی قژ،	ساک، جانتا، گلەیی، شکات، لاری، گازندە، سکاڵا، دەربڕینی ناڕەزایەتی
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) گرتنی کەسێک/شتێک بە توندی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: grasp"),
                    SentencesRow(
                      englishText: """Keep a tight grip on the rope.""",
                      kurdishText: """بە توندی حەبلەکە بگرە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The climber slipped and lost her grip.""",
                      kurdishText:
                          """شاخەوانەکە خلیسکا و دەس‌لێ‌گیرکردنەکەی نەما.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He finally broke her grip and escaped.""",
                      kurdishText:
                          """سەرەنجام لە گرتنەکەی دەربازی بوو و ھەڵھات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کۆنترۆڵ و دەسەڵات بەسەر کەسێک/شتێکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The home team took a firm grip on the game.""",
                      kurdishText:
                          """تیمی میواندار کۆنترۆڵی توندی سەپاند بەسەر یارییەکەدا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We need to tighten the grip we have on the market.""",
                      kurdishText:
                          """دەبێت ئەو کۆنترۆڵە توند بکەینەوە کە بەسەر بازاڕدا ھەمانە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The Prime Minister needs to keep a tight grip on his party.""",
                      kurdishText:
                          """سەرۆک وەزیران دەبێت کۆنترۆڵی توند بەسەر پارتەکەیدا بھێڵێتەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) تێگەشتن لە شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: grasp"),
                    SentencesRow(
                      englishText:
                          """I couldn't get a grip on what was going on.""",
                      kurdishText: """نەمدەتوانی تێبگەم لەوەی چی ڕوویدەدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government does not seem to have a very firm grip on the economy.""",
                      kurdishText:
                          """حکومەت وەھا دەرناکەوێت تێگەشتنی باشی بۆ ئابووری ھەبێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) توانای شتێک بۆ جووڵان بەسەر ڕوویەک بەبێ خلیسکان"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These tyres give the bus better grip in slippery conditions.""",
                      kurdishText:
                          """ئەم تایانە گیربوونی باشتر دەدات بە پاسەکە لە دۆخی خزیدا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ئەو بەشەی شتێک کە دەتوانیت بیگریت و بەبێ ئەوەی لە دەستت بخلیسکێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The grip on a golf club was worn and needed replacing.""",
                      kurdishText:
                          """دەسکی داری گۆڵفەکە کۆن بووبوو و پێویستی بە گۆڕین بوو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    CustomRichText(
                      textBeforeLink: "٦. بڕوانە لە ",
                      linkText: "hairgrip",
                      textAfterLink: "",
                      onTap: () {
                        Routemaster.of(context).push("/english-grip/hairgrip");
                      },
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) گرتنی کەسێک/شتێک بە توندی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: grasp"),
                    SentencesRow(
                      englishText:
                          """She gripped on to the railing with both hands.""",
                      kurdishText: """بە ھەردوو دەست دەستی گرت بە دەسکەکەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She gripped hard at the arms of her chair.""",
                      kurdishText: """بە توندی دەسکی کورسییەکەی گرتبوو.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Grip the rope as tightly as you can.""",
                      kurdishText: """چەندە توند دەتوانیت حەبلەکە بگرە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) حەز درووستکردنی لای کەسێک؛ ھەبوونی کاریگەریی بەھێز لەسەر کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The book grips you from start to finish.""",
                      kurdishText:
                          """کتێبەکە لە سەرەتا تا کۆتایی دڵت دەڕفێنێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I was totally gripped by the story.""",
                      kurdishText: """تەواو سەرسام بووم بە چیرۆکەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) ھەبوونی کاریگەریی زۆر لەسەر کەسێک/شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I was gripped by a feeling of panic.""",
                      kurdishText: """تووشی ھەستی تۆقین بووم.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """A sudden fear gripped me.""",
                      kurdishText: """ترسێکی لەناکاو باڵی بەسەریدا کێشا.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Terrorism has gripped the country for the past two years.""",
                      kurdishText:
                          """تیرۆریزم بۆ دوو ساڵی ڕابردوو وڵاتەکەی خستووەتە ژێر ڕکێفی خۆیەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
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
      ),
    );
  }
}

// 188888880002200
const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 273;
const String _videoIdone = 'zqllxbPWKNI';
const double _startSecondsone = 1539;
const String _videoIdtwo = 'dXt1ftcdxNg';
const double _startSecondstwo = 195;
const String _videoIdthree = '1aHVa2jT3n4';
const double _startSecondsthree = 91;
const String _videoIdfour = 'qY5m8PXzcS4';
const double _startSecondsfour = 46;
const String _videoIdfive = 'Hc6u1vy8_z4';
const double _startSecondsfive = 90;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB