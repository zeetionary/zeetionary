import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhistorical extends StatefulWidget {
  const EnglishEntryhistorical({super.key});

  @override
  State<EnglishEntryhistorical> createState() => _EnglishEntryhistoricalState();
}

class _EnglishEntryhistoricalState extends State<EnglishEntryhistorical> {
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
- Adjective: historical
1. Of or relating to the study of history
"historical scholars"; "a historical perspective"
 
2. (language) used of the study of a phenomenon (especially language) as it changes through time (- diachronic)
"historical linguistics";
 
3. Having once lived, existed or taken place in the real world as distinct from being legendary
"the historical Jesus"; "doubt that a historical Camelot every existed"; "actual historical events"
 
4. Belonging to the past; of what is important or famous in the past (- historic)
"historical times"; "a historical character";
""",
  );

  final String keyword = "historical";
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
    await flutterTts.speak("""historical""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This book provides a historical perspective.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You must place these events in their historical context.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The book dealt with the historical antecedents of the Civil War.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The book explains the complex historical background to the war.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The documentary explored the historical significance of reclaiming and celebrating blackness.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The museum exhibits an array of bronze statues depicting historical figures.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Cock sizes in historical paintings have gradually increased over the past seven centuries.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The museum is full of historical curiosities.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is a rare that an author can recreate an historical event with such exactness.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The book is a work of fiction and not intended as a historical account.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In this course we hope to look at literature in the frame of its social and historical context.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The historical records of the period are, at best, fragmentary.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Archaeological and historical evidence combine to create a picture of what life must have been like at that time.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The biographer meticulously researched historical records and interviewed family members to paint a comprehensive portrait of the politician's life.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The building is of historical importance.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She specializes in historical novels set in 18th-century England.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'Cqbleas1mmo';
    const double startSecondsend = 1075;
    const String videoIdone = 'XEZfGlyLQnA';
    const double startSecondsone = 281;
    const String videoIdtwo = '3C9wZf88y4Q';
    const double startSecondstwo = 5;
    const String videoIdthree = 'L1kYZHnHS0E';
    const double startSecondsthree = 1815;
    const String videoIdfour = 'Unzc731iCUY';
    const double startSecondsfour = 1970;
    const String videoIdfive = 'CURLWPCxe-c';
    const double startSecondsfive = 30;

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
                      word: """historical""",
                      // alsoEnglishWord: "also: historical",
                      britshText: """IpaUK: /hɪˈstɒrɪkl/""",
                      americanText: """IpaUS: /hɪˈstɔːrɪkl/""",
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
کوردی: مێژوویی، دیرۆکی، سەربە مێژوو
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) پەیوەندیدار بە مێژوو"""),
                    SentencesRow(
                      englishText:
                          """This book provides a historical perspective.""",
                      kurdishText:
                          """پەرتووکەکە گۆشەنیگایەکی مێژووی دەدات بە دەستەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You must place these events in their historical context.""",
                      kurdishText:
                          """دەبێت ئەم ڕووداوانە بخەیتە بەستێنی مێژووییانەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The book dealt with the historical antecedents of the Civil War.""",
                      kurdishText:
                          "کتێبەکە لێکۆڵینەوەی لە پێشھاتەکانی جەنگی ناوخۆیی ئەمریکا دەکرد.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The book explains the complex historical background to the war.""",
                              kurdishText:
                                  "کتێبەکە ھەلومەرجی ئاڵۆزی پێش جەنگەکە ڕووندەکاتەوە.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The documentary explored the historical significance of reclaiming and celebrating blackness.""",
                              kurdishText:
                                  "دۆکیومێنتارییەکە لێکۆڵینەوەی دەکرد لە گرنگی مێژوویی گەڕاندنەوە و شانازی بە ڕەشپێستی.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The museum exhibits an array of bronze statues depicting historical figures.""",
                              kurdishText:
                                  "مۆزەخانەکە ژمارەیەکی زۆر لە کاری برۆنز نمایش دەکات کە کەسایەتییە مێژوویەکان پیشان دەدات.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Cock sizes in historical paintings have gradually increased over the past seven centuries.""",
                              kurdishText:
                                  "قەبارەی کێر لە تابلۆ مێژووییەکاندا کەم کەم زیادی کردووە لە حەوت دەیەی ڕابردوودا.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The museum is full of historical curiosities.""",
                              kurdishText: "مۆزەخانەکە پڕ لە دانسقەی مێژووییە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It is a rare that an author can recreate an historical event with such exactness.""",
                              kurdishText:
                                  """دەگمەنە کە نووسەرێک دەتوانێت ڕووداوێکی مێژووی بە وردیی وەھا درووست بکاتەوە.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The book is a work of fiction and not intended as a historical account.""",
                              kurdishText:
                                  """ئەم کتێبە بەرھەمێکی خەیاڵییە و مەبەست لێی ئەوە نییە گێڕانەوەیەکی مێژووی بێت.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """In this course we hope to look at literature in the frame of its social and historical context.""",
                              kurdishText:
                                  """لەم کۆرسەدا ھیوادارین سەیری ئەدەبیات بکەین لە چوارچێوەی پێگە کۆمەڵایەتی و مێژووییەکەیدا.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) پەیوەندیدار بە لێکۆڵینەوە لە مێژوو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The historical records of the period are, at best, fragmentary.""",
                      kurdishText:
                          """تۆمارە مێژووییەکانی ئەو سەردەمە، لە باشترین حاڵەتدا، پچڕپچڕن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Archaeological and historical evidence combine to create a picture of what life must have been like at that time.""",
                      kurdishText:
                          "بەڵگەی شوێنەوارناسی و مێژووی یەکدەگرن بۆ درووستکردنی وێنەیەکی ئەوەی دەکرێت ژیان چۆن بووبا ئەوکاتە.",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The biographer meticulously researched historical records and interviewed family members to paint a comprehensive portrait of the politician's life.""",
                      kurdishText:
                          "ژیاننامەنووسەکە بەوردی لێکۆڵینەوەی کرد لە تۆمارە مێژووییەکان و چاوپێکەوتنی لەگەڵ ئەندامانی خێزانەکە ئەنجامدا بۆ گێڕانەوەی وێنایەکی تەواوی ژیانی سیاسەتمەدارەکە.",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The building is of historical importance.""",
                      kurdishText: """بیناکە گرنگی مێژووی هەیە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کتێبێک. فیلمێک، هتد کە باس لە مێژوو دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She specializes in historical novels set in 18th-century England.""",
                      kurdishText:
                          """شارەزایی لەو ڕۆمانە مێژووییانە هەیە کە لە سەدەی ١٨ ـدا ڕوودەدەن لە ئینگلاند.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
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