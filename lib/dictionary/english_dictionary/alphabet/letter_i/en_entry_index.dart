import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindex extends StatefulWidget {
  const EnglishEntryindex({super.key});

  @override
  State<EnglishEntryindex> createState() => _EnglishEntryindexState();
}

class _EnglishEntryindexState extends State<EnglishEntryindex> {
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
- Noun: index (Derived forms: indices, indexes)
1. A numerical scale used to compare variables with one another or with some reference number
 
2. A number or ratio (a value on a scale of measurement) derived from a series of observed facts; can reveal relative changes as a function of time (- index number, indicant, indicator)
 
3. A mathematical notation indicating the number of times a quantity is multiplied by itself (- exponent, power)
 
4. An alphabetical listing of names and topics along with page numbers where they are discussed
 
5. The finger next to the thumb (- index finger, forefinger)

- Verb: index (Derived forms: indexing, indexes, indexed)
1. List in an index
 
2. (publication) provide with an index
"index the book"
 
3. Adjust through indexation
"The government indexes wages and prices"
""",
  );

  final String keyword = "index";
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
    await flutterTts.speak("""index""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Try looking up "heart disease" in the index.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He still has all his friends' names and addresses on a card index.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The Dow Jones index fell 15 points this morning.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""White bread has a high glycaemic index.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The number of new houses being built is a good index of a country's prosperity.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The index of a search engine is like a library.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""All publications are indexed by subject and title.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """New material is scanned, indexed and stored electronically.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'unk6n3_QdlM';
    const double startSecondsend = 1273;
    const String videoIdone = '6ta_sftSfIw';
    const double startSecondsone = 1463;
    const String videoIdtwo = 'KT18KJouHWg';
    const double startSecondstwo = 240;
    const String videoIdthree = 'V2ec7EE0pB8';
    const double startSecondsthree = 1589;
    const String videoIdfour = 'QxZ_iPldGtI';
    const double startSecondsfour = 269;
    const String videoIdfive = 'AxSQGOjh110';
    const double startSecondsfive = 489;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """index""",
                      // alsoEnglishWord: "also: index",
                      britshText: """IpaUK: /ˈɪndeks/""",
                      americanText: """IpaUS: /ˈɪndeks/""",
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
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const KurdishVocabulary(text: """
کوردی: پێرست، فیرست، نووانە، ناوەرۆک (بابەت، ناو و هتد)،	پیشاندەر، ئیندێکس،	ئاماژە، مێزە،	نوێنەر، توان، جا،	دۆشاومژە، قامکی نیشانە یا شادە،	میل،	زمانە، میل، نەرە
"""),
// With short examples define "index", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) لیستێکی ئەلفوبێی، بۆ نموونە لە کتێبێک، کە ئەوە پیشان دەدات کە لە چی لاپەڕەیەک باسی بابەتێک، کەسێک، هتد دەکرێت"""),
                    SentencesRow(
                      englishText:
                          """Try looking up "heart disease" in the index.""",
                      kurdishText:
                          """هەوڵ بدە بۆ نەخۆشی دڵ بگەڕێ لە پێڕستەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ژمارەیەک زانیاری کە لەسەر کۆمپیوتەر یان ژمارەیەک کارد هەڵگیراون بە ڕیزبەندی ئەلفوبێ"""),
                    SentencesRow(
                      englishText:
                          """He still has all his friends' names and addresses on a card index.""",
                      kurdishText:
                          """هێشتا ناو و ناونیشانی هەموو هاوڕێکانی لەسەر کارد ئیندێکسێک هەیە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) سیستەمێک کە ئاستی نرخ، مووچە، هتد ـی تێدایە بۆ ئەوەی بەراورد بکرێن بە کاتێکی پێشووتر"""),
                    SentencesRow(
                      englishText:
                          """The Dow Jones index fell 15 points this morning.""",
                      kurdishText:
                          """ئیندێکسی داو جەونز ئەم بەیانییە ١٥ خاڵ دابەزی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ژمارەیەک کە پێوانی شتێک دەدات بە بەراورد بە ستانداردێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """White bread has a high glycaemic index.""",
                      kurdishText:
                          """نانی سپی ئیندێکسی گلایسیمیکی بەرزی هەیە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) نیشانەیەک یان پێوەرێک کە شتێکی دیکە دەکرێت بەروارد بکرێت پێی"""),
                    SentencesRow(
                      englishText:
                          """The number of new houses being built is a good index of a country's prosperity.""",
                      kurdishText:
                          """ژمارەی ئەو خانووە تازانەی کە درووست دەکرێن پێوەرێکی باشە بۆ بووژانەوەی وڵاتێک.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) لیستی تۆمارەکانی فایلی کۆمپیوتەر لەگەڵ زانیاریی ئەوەی لە کوێدا هەڵگیراون"""),
                    SentencesRow(
                      englishText:
                          """The index of a search engine is like a library.""",
                      kurdishText:
                          """ئیندێکسی مەکینەیەکی گەڕان وەک کتێبخانە وایە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) درووستکردنی پێڕستێک بۆ بابەتەکانی کتێبێک، هتد؛ زیادکردنی شتێک بۆ ناو ئیندێکسێک"""),
                    SentencesRow(
                      englishText:
                          """All publications are indexed by subject and title.""",
                      kurdishText:
                          """هەموو بڵاوکراوەکان بەپێی بابەت و سەردێڕ ئیندێکس دەکرێن.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """New material is scanned, indexed and stored electronically.""",
                      kurdishText:
                          """بەرهەمی تازە سکان دەکرێت، دەخرێتە پێڕشتەوە، و کۆگا دەکرێت بە ئەلیکترۆنی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
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
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB