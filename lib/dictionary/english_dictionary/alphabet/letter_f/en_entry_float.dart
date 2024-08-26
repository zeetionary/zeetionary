import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfloat extends StatefulWidget {
  const EnglishEntryfloat({super.key});

  @override
  State<EnglishEntryfloat> createState() => _EnglishEntryfloatState();
}

class _EnglishEntryfloatState extends State<EnglishEntryfloat> {
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
- Verb: float (derived forms: floated, floating, floats)
1. Be in motion due to some air or water current (= drift, be adrift, blow)
"the boat floated on the lake";
 
2. Be afloat either on or below a liquid surface and not sink to the bottom (= swim)
 
3. Set afloat
"He floated the logs down the river"; "The boy floated his toy boat on the pond"
 
4. Circulate or discuss tentatively; test the waters with
"The Republicans are floating the idea of a tax reform"
 
5. Move lightly, as if suspended
"The dancer floated across the stage"
 
6. Put into the water
"float a ship"
 
7. (masonry) Make the surface level or smooth
"float the plaster"
 
8. Allow (currencies) to fluctuate
"The government floated the ruble for a few months"
 
9. Convert from a fixed point notation to a floating point notation
"float data"

- Noun: float (derived forms: floats)
1. The time interval between the deposit of a check in a bank and its payment
 
2. The number of shares outstanding and available for trading by the public
 
3. A drink with ice cream floating in it (= ice-cream soda, ice-cream float)
 
4. An elaborate display mounted on a platform carried by a truck (or pulled by a truck) in a procession or parade
 
5. A hand tool with a flat face used for smoothing and finishing the surface of plaster, cement or stucco (= plasterer's float)
 
6. Something that floats on the surface of water
 
7. An air-filled sac near the spinal column in many fishes that helps maintain buoyancy (= air bladder, swim bladder)
""",
  );

  final String keyword = "float";
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
    await flutterTts.speak("""float""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A group of swans floated by.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The smell of new bread floated up from the kitchen.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Beautiful music came floating out of the window.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The boats were floating gently down the river.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""People seem to float in and out of my life.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Wood floats.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She relaxed, floating gently in the water.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A plastic bag was floating on the water.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""An empty bottle will float.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There wasn't enough water to float the ship.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They float the logs down the river to the towns.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She floated down the steps to greet us.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They floated the idea of increased taxes on alcohol.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The company was floated on the stock market in 2014.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Children waved excitedly at the passing carnival float.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Fishing nets are often held in position by floats.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Hold the float in front of you and kick your legs.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A pool float has now become a holiday essential.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll have a root beer float, please.""");
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
                      word: """float""",
                      // alsoEnglishWord: "also: float",
                      britshText: """IpaUK: /fləʊt/""",
                      americanText: """IpaUS: /fləʊt/""",
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
کوردی: سەراوکەوتە، مەلەون، سەرکەوتە، سواراو،	پشتێنەی ڕزگاری، ئاڵقەی مەلێ (بۆ فێرکردن)،	گۆی کۆنتڕۆڵی تێڕژانی ئاو، نەوت و ھتد بۆ نێو تانکی،	چوارپێچکە، ھەرزاڵە یان سەکۆی پێچکەدار، عەڕابە (لە کەرنەڤاڵ و ئاھەنگی سەرشەقام)،	خەمازە، چێوپەمە (سەرئاو)، تۆپەوانەی ڕاوەماسی،	ڕیزە چرای پێشەوەی شانۆ،	ماڵە،	کارتیخ، بڕبەند،	وردەپارە، قۆشە، وردەپووڵ
"""),
// With short examples define "float", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) جووڵان بە ھێواشی لەسەر ئاو یان لە حەوادا"""),
                    SentencesRow(
                      englishText: """A group of swans floated by.""",
                      kurdishText: """گرووپێک سۆنە تێپەڕین.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The smell of new bread floated up from the kitchen.""",
                      kurdishText: """بۆنی نانی تازە لە چێشتخانەکەوە دەرچوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Beautiful music came floating out of the window.""",
                      kurdishText: """میوزیکی خۆش لە پەنجەرەکەوە ھات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The boats were floating gently down the river.""",
                      kurdishText:
                          """بەلەمەکان بە ھێواشی بە ڕووبارەکەدا دەچوون.""",
                      englishNote:
                          "This means the boats were moving in the direction from a higher to a lower position, in this case, along the river's current.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People seem to float in and out of my life.""",
                      kurdishText:
                          """خوازراوی خەڵکی وەھا دەردەکەون کە دێنە ژیانمەوە و دەردەچن.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) مانەوە لەسەر ڕووی شلەیەک و نوقم نەبیت"""),
                    SentencesRow(
                      englishText: """Wood floats.""",
                      kurdishText: """تەختە سەرئاو دەکەوێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She relaxed, floating gently in the water.""",
                      kurdishText: """حەسایەوە بە ھێمنی سەرئاو کەوتن.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A plastic bag was floating on the water.""",
                      kurdishText: """کیسەیەکی پلاستیک سەرئاوەکە کەوتبوو.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """An empty bottle will float.""",
                      kurdishText: """بوتڵی بەتاڵ سەرئاو دەکەوێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) سەرئاوخستنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """There wasn't enough water to float the ship.""",
                      kurdishText:
                          """بەشی پێویست ئاو نەبوو بۆ سەرئاوخستنی کەشتییەکە.""",
                      englishNote:
                          "This means the ship couldn't move on water because there wasn't enough of water.",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They float the logs down the river to the towns.""",
                      kurdishText:
                          """دارەکان سەرئاو دەخەن بەرەوە شارۆچکەکان.""",
                      englishNote:
                          "This means they transport the logs along the river to the towns.",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) ڕێکردن بە ھێواشی و لەسەرخۆیی"""),
                    SentencesRow(
                      englishText:
                          """She floated down the steps to greet us.""",
                      kurdishText:
                          """بە پلەکانەکاندا ھاتە خوارەوە بۆ خێراتن کردنمان.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) پێشنیارکردنی بیرۆکە یان پلانێک تاوەکو کەسانی دیکە بیری لێ بکەنەوە"""),
                    SentencesRow(
                      englishText:
                          """They floated the idea of increased taxes on alcohol.""",
                      kurdishText:
                          """بیرۆکەی باجیان لەسەر مادەی کحولی پێشنیار کرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) بۆ یەکەم جار فرۆشتنی پشکەکانی کۆمپانیا یان بازرگانییەک بە خەڵکی"""),
                    AlsoEnglishckblink(
                      textBeforeLink: "ھەروەھا: ",
                      linkText: "flotation",
                      textAfterLink: ".",
                      onTap: () {
                        Routemaster.of(context)
                            .push("/english-float/flotation");
                      },
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company was floated on the stock market in 2014.""",
                      kurdishText:
                          """کۆمپانیاکە بۆ یەکەمجار چووە ناو بازاڕی بۆرسە لە ساڵی ٢٠١٤.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) پێڕۆیەکی گەورە کە خەڵکی لە فیستیڤاڵدا لەسەری دەبن بە جلی تایبەتەوە"""),
                    SentencesRow(
                      englishText:
                          """Children waved excitedly at the passing carnival float.""",
                      kurdishText:
                          """منداڵان بە دڵخۆشییەوە سڵاویان دەکرد لە پێڕۆ تێپەڕیوەکەی فیستیڤاڵەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) شتێکی بچووک کە بەستراوە بە قولابی ماسییەوە و دەجووڵێت کە ماسی گیراوە"""),
                    SentencesRow(
                      englishText:
                          """Fishing nets are often held in position by floats.""",
                      kurdishText:
                          """تۆڕەکانی ڕاوەماسی زۆرجار بە ھۆی تۆپەوانەوە لە شوێنی خۆیاندا ڕادەگیرێن.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) شتێکی بچووک کە لەسەر ئاو دەوەستێت و دەستی پێوە دەگریت کە فێری مەلە دەبیت"""),
                    SentencesRow(
                      englishText:
                          """Hold the float in front of you and kick your legs.""",
                      kurdishText: """سەراوکەوتەی پێشت بگرە و لاقت ڕاوەشێنە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) یارییەکی منداڵان کە وەک ئاژەڵە و لەسەری دەبیت لە مەلەوانگە"""),
                    SentencesRow(
                      englishText:
                          """A pool float has now become a holiday essential.""",
                      kurdishText:
                          """سەراوکەوتەی مەلەوانگە ئێستا بووە بە پێداویستییەکی پشووەکان.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """١١. (ناو) خواردنەوەیەک کە سەھۆڵی لەسەرە"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """I'll have a root beer float, please.""",
                    //   kurdishText: """رستە_رستە_رستە__رستە.""",
                    //   onPressedBritish: () => speaksentence19("en-GB"),
                    //   onPressedAmerican: () => speaksentence19("en-US"),
                    // ),
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

const String _videoIdend = '21Z4RIOFhMA';
const double _startSecondsend = 609;
const String _videoIdone = 'FHJ3CMWnVxY';
const double _startSecondsone = 43;
const String _videoIdtwo = 'qWAagS_MANg';
const double _startSecondstwo = 1342;
const String _videoIdthree = 'v6yg4ImnYwA';
const double _startSecondsthree = 576;
const String _videoIdfour = 'mY3SEMTROas';
const double _startSecondsfour = 1102;
const String _videoIdfive = 'dtp6b76pMak';
const double _startSecondsfive = 492;

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