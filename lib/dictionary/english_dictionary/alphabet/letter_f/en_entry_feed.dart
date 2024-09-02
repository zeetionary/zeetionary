import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfeed extends StatefulWidget {
  const EnglishEntryfeed({super.key});

  @override
  State<EnglishEntryfeed> createState() => _EnglishEntryfeedState();
}

class _EnglishEntryfeedState extends State<EnglishEntryfeed> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""feed""");
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
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """feed""",
                      // alsoEnglishWord: "also: feed",
                      britshText: """IpaUK: /fiːd/""",
                      americanText: """IpaUS: /fiːd/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
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

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "feed";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Have you fed the cat yet?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The baby can't feed itself yet.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It's important to feed children a well-balanced diet.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He has to be fed liquids through a tube in his stomach.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cattle are fed (on) barley.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The bears feed voraciously in summer and store energy as fat.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They have a large family to feed.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's enough here to feed an army.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's enough here to feed an army.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They struggled to feed and clothe the children.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Feed the plants once a week.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We are constantly fed gossip and speculation by the media.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The lake is fed by a river.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The electricity line is fed with power through an underground cable.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fed the machine with coins.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The information was fed into the data store.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The baby had a feed an hour ago, so she can't be hungry.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They stocked up on winter feed for the horses.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The printer has an automatic paper feed.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They needed a bath and a good feed.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const KurdishVocabulary(text: """
کوردی: نان، خۆراک، چێشت، ژەم، جەم، وەختی نان(خواردن)،	تفاق، ئالیک، کاوجۆ، ئاڵف،	لەوەڕین، چەرین
"""),
          const DefinitionKurdish(
              text: """١. (کردار) خواردن‌ دان بە کەسێک یان ئاژەڵێک"""),
          SentencesRow(
            englishText: """Have you fed the cat yet?""",
            kurdishText: """خواردنت داوە بە پشیلەکە؟""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The baby can't feed itself yet (= can't put food into its own mouth).""",
            kurdishText: """منداڵەکە ھێشتا ناتوانێت خواردن بۆ خۆی بخوات.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's important to feed children a well-balanced diet.""",
            kurdishText: """گرنگە خواردنێکی ھاوسەنگ بدەیت بە منداڵان.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He has to be fed liquids through a tube in his stomach.""",
            kurdishText: """دەبێت شلەی لە برۆییەکەوە لە گەدەیەوە پێ بدرێت.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The cattle are fed (on) barley.""",
            kurdishText: """ڕەشەوڵاکە خۆیان پێ دەدرێت.""",
            englishNote: "Also: The barley is fed to the cattle.",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (کردار) خواردنی میوە و خواردن"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The bears feed voraciously in summer and store energy as fat.""",
            kurdishText:
                """ورچ زۆر دەخۆن لە ھاویندا وزە بە چەوری کۆگا دەکەن.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (کردار) دابینکردنی خواردن بە کەسێک یان گرووپێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They have a large family to feed.""",
            kurdishText: """خێزانێکی گەورەیان ھەیە بیژیەنن.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There's enough here to feed an army.""",
            kurdishText:
                """بەشی پێویست ھەیە لێرە بۆ پێدانی خواردن بە سوپایەک.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There's enough here to feed an army.""",
            kurdishText: """باش خواردنیان خواردووە؟""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """They struggled to feed and clothe the children.""",
            kurdishText:
                """تەقەڵایان بوو خواردن و جل بۆ منداڵەکان دابین بکەن.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) پێدانی مادەی تایبەت بە ڕووەک بۆ گەشەکردن"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Feed the plants once a week.""",
            kurdishText: """ڕووەکەکان ھەفتەی جارێک خزمەت بکە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (کردار) پێدانی ڕاوێژ، زانیاری، ھتد بە کەسێک/شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We are constantly fed gossip and speculation by the media.""",
            kurdishText:
                """بەردەوام دەنگۆ و قسەڵۆکمان پێدەدرێت لەلایەن میدیاوە.""",
            englishNote:
                "Also: Gossip and speculation are constantly fed to us by the media.",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (کردار) دابینکردنی سەرچاوەیەک بۆ کەسێک/شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The lake is fed by a river.""",
            kurdishText: """دەریاچەکە ڕووبارێکی تێدەڕژێت.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The electricity line is fed with power through an underground cable.""",
            kurdishText: """ھێڵی کارەباکە وزەی پێدەدرێت بە کێبڵێکی ژێر زەوی.""",
            englishNote:
                "Also: Power is fed into the electricity line through an underground cable.",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (کردار) خستنە یان ئاخنینە ناو ئامێرێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He fed the machine with coins.""",
            kurdishText: """پارەی سکەی خستە ئامێرەکەوە.""",
            englishNote: "Also: He fed coins into the meter.",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The information was fed into the data store.""",
            kurdishText: """زانیارییەکە درا بە کۆگای داتاکە.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٨. (ناو) شیر بۆ منداڵی بچووک"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The baby had a feed an hour ago, so she can't be hungry.""",
            kurdishText:
                """منداڵەکە یەک کاتژمێر پێش شیری خوارد، بۆیە ناکرێت برسی بێت.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (ناو) خواردن و مادە کە دەدرێت بە ئاژەڵ یان ڕووەک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They stocked up on winter feed for the horses.""",
            kurdishText: """ئالیکی زستانیان بۆ ئەسپەکان ھەڵگرت.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٠. (ناو) مادەیەک کە دەدرێت بە ئامێرێک؛ ئەو شتەی کە ئەم مادەیە دەدات بە ئامیرەکە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The printer has an automatic paper feed.""",
            kurdishText: """پرینتەرەکە فیدێکی خۆکارانەی پەڕەی ھەیە.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """١١. (ناو) ژەمە خواردنێکی گەورە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They needed a bath and a good feed.""",
            kurdishText: """پێویستیان بە خۆشۆردنێک و خواردنێکی باش بوو.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
        ],
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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: feed (derived forms: feeds, feeding, fed)
1. Give food to (= give)
"Feed the starving children in India";
 
2. Provide as food
"Feed the guests the nuts"
 
3. Increase or justify; supply with a source of material
"Her success feeds her vanity"
 
4. Introduce continuously (= feed in)
"feed carrots into a food processor";
 
5. Support or promote
"His admiration fed her vanity"
 
6. Take in food; used of animals only (= eat)
 
7. Serve as food for; be the food for
"This dish feeds six"
 
8. Move along, of liquids (= run, flow, course)
"the Missouri feeds into the Mississippi";
 
9. Profit from in an exploitatory manner (= prey)
"He feeds on her insecurity";
 
10. Gratify (= feast)
"feed one's eyes on a gorgeous view";
 
11. (farming) provide with fertilizers or add nutrients to (= fertilize, fertilise [Brit], enrich)
"We should feed soil if we want to grow healthy plants";

- Noun: feed (derived forms: feeds)
1. Food for domestic livestock (= provender, feedstuff)
 
2. A machine or program that supplies something (regularly or continuously)
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

const String _videoIdend = 'a_TSR_v07m0';
const double _startSecondsend = 319;
const String _videoIdone = '4VSx2E7WE50';
const double _startSecondsone = 135;
const String _videoIdtwo = '-HyHZsa79LU';
const double _startSecondstwo = 514;
const String _videoIdthree = 'tUR9UIscLGU';
const double _startSecondsthree = 79;
const String _videoIdfour = 'z4L2E6_Gmkk';
const double _startSecondsfour = 574;
const String _videoIdfive = 'kaf4p10SiWY';
const double _startSecondsfive = 43;

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