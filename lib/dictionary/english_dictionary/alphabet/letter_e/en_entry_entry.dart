import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryentry extends StatefulWidget {
  const EnglishEntryentry({super.key});

  @override
  State<EnglishEntryentry> createState() => _EnglishEntryentryState();
}

class _EnglishEntryentryState extends State<EnglishEntryentry> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""entry""");
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
                      word: """entry""",
                      // alsoEnglishWord: "also: entry",
                      britshText: """IpaUK: /ˈentri/""",
                      americanText: """IpaUS: /ˈentri/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
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
                  YoutubeEmbeddedsix(),
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
  final String keyword = "entry";
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
    await flutterTts.speak(
        """The children were surprised by the sudden entry of their teacher.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They block the entry of the HIV virus into the cells.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""How did the thieves gain entry into the building?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There are security checks at the point of entry.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Entry to the museum is free.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The singer was refused entry to the US.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Hotel guests have free entry to the sports centre.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The closing date for entries is 31 March.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The winning entry will be published in next month's issue.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had too many entries for this event.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Entry is open to anyone over the age of 18.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There's a record entry for this year's marathon.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Very little information is given in the diary entries.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Look at the dictionary entry for ‘welcome’.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The job involves data entry.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is extremely difficult for new companies to gain entry into the market.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She applied for entry to Nottingham University.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""That was before the American entry into the war.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Things changed forever with the entry of women into the workforce.""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The winning entry will be published in next month's issue.0""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ژوورەوەچوون، چوونەنێو، مافی چوونەنێو، دەستووری چوونەنێو،	درگا، دەرک، ڕێڕەو، ژوورگە، پێشخان، ڕێژوور، ڕێڕەو، داڵان، دەروازە،	(فەرھەنگ) مادە، سەروشە، ماک،	بڕگە، بابەت،	بەشداری‌کەر، ھاتەنێو،	نەیار، ھەڤرک،	ژمارەی بەشداری‌کەران، ژمارەی ھاتەنێوان،	نووسین، تۆمار(کردن)،	(ماف) گرتن، دەس‌بەسەرداگرتن، داگیرکردن
"""),
          const DefinitionKurdish(text: """١. (ناو) چوونە ناو شوێنێک"""),
          SentencesRow(
            englishText:
                """The children were surprised by the sudden entry of their teacher.""",
            kurdishText: """منداڵەکان تاسان بە ھاتنی لەناکاوی مامۆستاکە.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """They block the entry of the HIV virus into the cells.""",
            kurdishText:
                """ڕێگری لە چوونە ناوەوەی ڤایرۆسی ئێچ‌ئای‌ڤی بۆ ناو خانەکان دەکەن.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """How did the thieves gain entry into the building?""",
            kurdishText: """چۆن دزەکان چوونە ناو بیناکەوە.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There are security checks at the point of entry.""",
            kurdishText: """بازگەی پشکنین ھەیە لە خاڵی چوونەژوورەوە.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) ماف یان ھەلی چوونە شوێنێک"""),
          SentencesRow(
            englishText: """Entry to the museum is free.""",
            kurdishText: """چوونە ناو مۆزەخانەکە بێ‌بەرامبەرە.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The singer was refused entry to the US.""",
            kurdishText: """گۆرانیبێژەکە ڕێگای پێ‌نەدرا بچێتە ناو ئەمریکا.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Hotel guests have free entry to the sports centre.""",
            kurdishText:
                """میوانەکانی ھوتێلەکە چوونەژوورەوەی بێ‌بەرامبەریان ھەیە بۆ ناو سەنتەرە وەرزشییەکە.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) شتێک کە دەیکەیت، دەینووسیت، یان درووستی دەکەیت بۆ بەژداری لە کێبڕکێیەک"""),
          SentencesRow(
            englishText: """The closing date for entries is 31 March.""",
            kurdishText: """ڕێکەوتی کۆتایی بۆ بەژداری ٣١ ـی ئادارە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The winning entry will be published in next month's issue.""",
            kurdishText:
                """بەژداربووی براوە لە چاپی مانگی داھاتوو بڵاودەکرێتەوە.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We had too many entries for this event.""",
            kurdishText: """زۆر بەژداربوومان ھەیە بۆ ئەم بۆنەیە.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) بەژداریکردن لە پێشبڕکێیەک، ھتد"""),
          SentencesRow(
            englishText: """Entry is open to anyone over the age of 18.""",
            kurdishText:
                """بەژداریکردن کراوەیە بۆ ھەر کەسێک لە سەروو ١٨ ساڵە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ناو) ھەموو ئەو کەسانەی بەژداری لە پێشبڕکێیەک، ھتد دەکەن"""),
          SentencesRow(
            englishText: """There's a record entry for this year's marathon.""",
            kurdishText: """بەژداریی مێژووی ھەیە بۆ ماراسۆنی ئەمساڵ.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ناو) شتێک، بۆ نموونە زانیارییەک، کە لەسەر فەرھەنگێک، کتێبێک، ھتد نووسراوە"""),
          SentencesRow(
            englishText:
                """Very little information is given in the diary entries.""",
            kurdishText: """کەم زانیاری نووسراوە لە بابەتی یادنامەکە.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Look at the dictionary entry for ‘welcome’.""",
            kurdishText: """سەیری سەروشەی 'welcome' بکە.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (ناو) تۆمارکردنی زانیاری لە کۆمپیوتەر، کتێب، ھتد"""),
          SentencesRow(
            englishText: """The job involves data entry.""",
            kurdishText: """کارەکە تۆمارکردنی داتا لەخۆدەگرێت.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (ناو) ماف یان ھەلی بەژداری کردن لە شتێک یان بوون بە ئەندامی گرووپێک"""),
          SentencesRow(
            englishText:
                """It is extremely difficult for new companies to gain entry into the market.""",
            kurdishText:
                """تەواو سەختە بۆ کۆمپانیا تازەکان بۆ چوونە ناو بازاڕەکەوە.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She applied for entry to Nottingham University.""",
            kurdishText: """داوای چوونە زانکۆی نۆتینگھامی کرد.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٩. (ناو) بەژداریکردن لە چالاکییەک یان بوون بە ئەندامی گرووپێک"""),
          SentencesRow(
            englishText: """That was before the American entry into the war.""",
            kurdishText: """ئەوە پێش بەژداریی ئەمریکا لە جەنگەکە بوو.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Things changed forever with the entry of women into the workforce.""",
            kurdishText:
                """شتەکان بۆ ھەمیشە گۆڕان بە چوونی ژنان بۆ ناو دەستی کار.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          // skipped_meaning
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
- Noun: entry (derived forms: entries)
1. An item inserted in a written record
 
2. The act of starting something for the first time; introducing something new (= initiation, founding, foundation, institution, origination, creation, innovation, introduction, instauration, debut, first appearance, launching, unveiling)
 
3. A written record of a commercial transaction (= accounting entry, ledger entry)
 
4. Something (manuscripts or architectural plans and models or estimates or works of art of all genres etc.) submitted for the judgment of others (as in a competition) (= submission, submittal [N. Amer])
"several of his entries were rejected by publishers";
 
5. Something that provides access (to get in or get out) (= entrance, entranceway, entryway, entrée)
"they waited at the entry to the garden";
 
6. The act of entering (= entrance, entering, ingress, incoming)
"she made a grand entry";
 
7. (computing) an item of data in a database
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

const String _videoIdend = '043CQXHfx10';
const double _startSecondsend = 1838;
const String _videoIdone = 'SrDEtSlqJC4';
const double _startSecondsone = 1116;
const String _videoIdtwo = 'IlU-zDU6aQ0';
const double _startSecondstwo = 1896;
const String _videoIdthree = 'sAiTuitN5b8';
const double _startSecondsthree = 10;
const String _videoIdfour = 'XXhc5UTxv5I';
const double _startSecondsfour = 1190;
const String _videoIdfive = 'SwQhKFMxmDY';
const double _startSecondsfive = 2221;
const String _videoIdsix = '-RjJtO51ykY';
const double _startSecondssix = 17;

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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdsix,
      startSeconds: _startSecondssix,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdsix,
        startSeconds: _startSecondssix,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB