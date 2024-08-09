import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfreeze extends StatefulWidget {
  const EnglishEntryfreeze({super.key});

  @override
  State<EnglishEntryfreeze> createState() => _EnglishEntryfreezeState();
}

class _EnglishEntryfreezeState extends State<EnglishEntryfreeze> {
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
- Verb: freeze (derived forms: freezes, froze, frozen, freezing)
1. Change to ice
"The water in the bowl froze"
 
2. Stop moving or become immobilized (= stop dead)
"When he saw the police car he froze";
 
3. Be cold
"I could freeze to death in this office when the air conditioning is turned on"
 
4. Cause to change to ice or become very cold
"Freeze the leftover food"
 
5. Stop a process, activity or a habit (= suspend)
"freeze the aid to the war-torn country";
 
6. Be very cold, below the freezing point
"It is freezing in Kalamazoo"
 
7. (physics) change from a liquid to a solid when cold (= freeze out, freeze down)
"Water freezes at 32 degrees Fahrenheit";
 
8. Prohibit the conversion or use of (assets) (= block, immobilize, immobilise [Brit])
"Freeze the assets of this hostile government";
 
9. Anesthetize by cold
 
10. Suddenly behave coldly and formally
"She froze when she saw her ex-husband"

- Noun: freeze (derived forms: freezes)
1. The withdrawal of heat to change something from a liquid to a solid (= freezing)
 
2. Weather cold enough to cause freezing (= frost)
 
3. An interruption or temporary suspension of progress or movement (= halt)
"a nuclear freeze";
 
4. Fixing (of prices or wages etc) at a particular level
"a freeze on hiring"
""",
  );

  final String keyword = "freeze";
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

    await flutterTts.speak("""freeze""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Water freezes at 0°C.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""It's so cold that even the river has frozen.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The cold weather had frozen the ground.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The clothes froze solid on the washing line.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The pipes have frozen, so we've got no water.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I kept the car running to stop the engine freezing up.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It may freeze tonight, so bring those plants inside.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Every time she opens the window we all freeze.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Two men froze to death on the mountain.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Can you freeze this cake?""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The organ samples were immediately frozen in liquid nitrogen.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Some fruits freeze better than others.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I froze with terror as the door slowly opened.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He was so surprised he froze to the spot.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She froze with horror when she saw the body.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """If your computer freezes, you may have to shut it down manually by holding the power button for several seconds.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Freeze the action there!""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Salaries have been frozen for the current year.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The company's assets have been frozen.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The government has imposed a price freeze on bread.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Due to the crisis, there was a freeze on imports of certain goods.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Farmers still talk about the big freeze of '99.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A freeze warning was posted for Thursday night.""");
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
                      word: """freeze""",
                      // alsoEnglishWord: "also: freeze",
                      britshText: """IpaUK: /friːz/""",
                      americanText: """IpaUS: /friːz/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
                    const DefinitionKurdish(text: """١. (کردار) بەستن"""),
                    SentencesRow(
                      englishText: """Water freezes at 0°C.""",
                      kurdishText: """ئاو لە پلەی یەکی سیلیزی دەیبەستێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's so cold that even the river has frozen.""",
                      kurdishText:
                          """ھێندە ساردە کە تەنانەت ڕووبارەکەش بەستوویەتی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The cold weather had frozen the ground.""",
                      kurdishText: """کەشە ساردەکە زەوییەکەی بەستووە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The clothes froze solid on the washing line.""",
                      kurdishText:
                          """جلەکان لەسەر تەنافەکە بە چڕی بەستوویانە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) گیران یان لەکارکەوتنی شتێک بەھۆی ئەوەی کە بەستوویەتی"""),
                    SentencesRow(
                      englishText:
                          """The pipes have frozen, so we've got no water.""",
                      kurdishText:
                          """بۆرییەکان بەستوویانە، بۆیە ھیچ ئاومان نییە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I kept the car running to stop the engine freezing up.""",
                      kurdishText:
                          """ئۆتۆمبێلەکەم لە جووڵەدا ھێشتەوە بۆ ئەوەی بزوێنەرەکەی نەیبەستێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) کە پلەی گەرمی سفر یان لە ژێر سفرە"""),
                    SentencesRow(
                      englishText:
                          """It may freeze tonight, so bring those plants inside.""",
                      kurdishText:
                          """ئەمشەو ڕەنگە بیبەستێت، بۆیە ئەو ڕووەکانە بێنە ژوورەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) سەرمابوونی زۆر؛ ئەوەی لە سەرمادا بمریت"""),
                    SentencesRow(
                      englishText:
                          """Every time she opens the window we all freeze.""",
                      kurdishText:
                          """ھەر جارێک پەنجەرەکە دەکاتەوە ھەموومان لە سەرمادا دەتۆقین.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Two men froze to death on the mountain.""",
                      kurdishText: """دوو پیاو لە سەرمادا مردن لەسەر شاخەکە.""",
                      englishNote:
                          "Also: Two men were frozen to death on the mountain.",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ھەڵگرتنی شتێک لە پلەی گەرمیی کەمدا بۆ ئەوەی پاراستنی"""),
                    SentencesRow(
                      englishText: """Can you freeze this cake?""",
                      kurdishText: """دەتوانیت ئەم کێکە بە ساردی بھێڵیتەوە؟.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The organ samples were immediately frozen in liquid nitrogen.""",
                      kurdishText:
                          """نموونە ئەندامییەکان دەستبەجێ لە نایترۆجینی شلە ھەڵگیردران.""",
                      englishNote:
                          "This means that the parts of organs taken for study or analysis (organ samples) were quickly preserved by being placed in extremely cold liquid nitrogen to prevent decay or changes.",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) ئەوەی کە بکرێت لە پلەی گەرمی نزم دابنرێت"""),
                    SentencesRow(
                      englishText: """Some fruits freeze better than others.""",
                      kurdishText:
                          """ھەندێک میوە باشتر دەیبەستن وەک لەوانی دیکە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) لەناکاو وەستان لە جووڵە بەھۆی ترس، ھتد"""),
                    SentencesRow(
                      englishText:
                          """I froze with terror as the door slowly opened.""",
                      kurdishText:
                          """لە تۆقاندا لە جووڵە کوتم کە دەرگاکە کەم‌کەم کرایەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was so surprised he froze to the spot.""",
                      kurdishText:
                          """زۆر سەرسام بووم کە لە جێگای خۆی وشک بوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She froze with horror when she saw the body.""",
                      kurdishText:
                          """کە جەستەکەی بینی لە تۆقیندا لە پێ کەوت.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) کە کۆمپیوتەرێک لە کار دەکەوێت بەوەی شاشەکەی ھێشتا کار دەکات بەڵام ناتوانیت ھیچ کارێک ئەنجام بدەیت"""),
                    SentencesRow(
                      englishText:
                          """If your computer freezes, you may have to shut it down manually by holding the power button for several seconds.""",
                      kurdishText:
                          """ئەگەر کۆمپیوتەرەکەت جام بکات، ڕەنگە پێویست بێت بیکوژێنیتەوە بە دەستی بەوەی دوگمەی کارکردنی بۆ چەند چرکەیەک.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) وەستاندنی فیلم یان ڤیدیۆیەک بۆ سەیرکردنی وێنەیەکی دیاریکراو"""),
                    SentencesRow(
                      englishText: """Freeze the action there!""",
                      kurdishText: """لەوێدا فیلمەکە ڕابگرە!""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) جێگیرکردن لە ئاستێکی دیاریکراودا"""),
                    SentencesRow(
                      englishText:
                          """Salaries have been frozen for the current year.""",
                      kurdishText: """مووچەی ئەم ساڵ جێگیر کراوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) ڕێگری کردن لەوەی پارە، ھەژماری بانکی، ھتد بەکاربێت بە وەرگرتنی فەرمانی دادگا"""),
                    SentencesRow(
                      englishText: """The company's assets have been frozen.""",
                      kurdishText:
                          """سامانی کۆمپانیاکە دەستی بەسەر گیردراوە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ناو) جێگیرکردن لە ئاستێکی دیاریکراودا"""),
                    SentencesRow(
                      englishText:
                          """The government has imposed a price freeze on bread.""",
                      kurdishText: """حکومەت نرخی جێگیری داناوە لەسەر ناندا.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ناو) وەستاندنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """Due to the crisis, there was a freeze on imports of certain goods.""",
                      kurdishText:
                          """بەھۆی قەیرانەکەوە، ڕاگرتنێک ھەبوو لە ھاوردەی ژمارەیەک کاڵای دیاریکراو.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (ناو) ماوەیەک لە کەشووھەوای زۆر سارد"""),
                    SentencesRow(
                      englishText:
                          """Farmers still talk about the big freeze of '99.""",
                      kurdishText:
                          """جوتیاران ھێشتا باس لە بەستنە گەورەکەی ٩٩ دەکەن.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (ناو) ماوەیەکی دیاریکراو کە پلەی گەرمی لە ژێر سفرە"""),
                    SentencesRow(
                      englishText:
                          """A freeze warning was posted for Thursday night.""",
                      kurdishText:
                          """ئاگادارییەکی پلەی ژێر سفر ڕاگەیەندرا بۆ شەوی پێنجشەممە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
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

const String _videoIdend = 'DPZzrlFCD_I';
const double _startSecondsend = 108;
const String _videoIdone = 'qWAagS_MANg';
const double _startSecondsone = 1126;
const String _videoIdtwo = 'bFl3_J2gBu4';
const double _startSecondstwo = 176;
const String _videoIdthree = '0ST4_hmop9Y';
const double _startSecondsthree = 688;
const String _videoIdfour = 'g9QneAV4fVo';
const double _startSecondsfour = 449;
const String _videoIdfive = 'lsbcN9-jU1Y';
const double _startSecondsfive = 1150;

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
