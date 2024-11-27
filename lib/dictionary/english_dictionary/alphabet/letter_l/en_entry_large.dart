import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylarge extends StatefulWidget {
  const EnglishEntrylarge({super.key});

  @override
  State<EnglishEntrylarge> createState() => _EnglishEntrylargeState();
}

class _EnglishEntrylargeState extends State<EnglishEntrylarge> {
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
- Adjective: large (Derived forms: largest, larger)
1. Above average in size, number, quantity, magnitude or extent (- big)
"a large city"; "large areas of the world";
 
2. Significant or important in effect; influential
"played a large role in the negotiations"
 
3. Ostentatiously lofty in style (- bombastic, declamatory, orotund, tumid, turgid)
"a man given to large talk";
 
4. Generous and understanding and tolerant (- big, magnanimous)
"a large and generous spirit";
 
5. Conspicuous in position or importance (- big, prominent)
"he's very large in financial circles";
 
6. Having broad power and range and scope
"taking the large view"; "a large effect"; "a large sympathy"
 
7. In an advanced stage of pregnancy (- big, enceinte [archaic], expectant, gravid [technical], great, heavy, with child)
"was large with child";

- Noun: large (Derived forms: larges)
1. A garment size for a large person

- Adverb: large
1. At a distance, wide of something (as of a mark)
 
2. With the wind abaft the beam
"a ship sailing large"
 
3. In a boastful manner (- boastfully, vauntingly, big)
""",
  );

  final String keyword = "large";
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
    await flutterTts.speak("""large""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Drought hit large parts of the country.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A large proportion of older people live alone.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company has grown large enough to employ over 100 people.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That's too large to fit in my suitcase!""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The population is slightly larger than that of Canada.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Seoul is one of the world's largest cities.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's a very large child for his age.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Brazil is the world's largest producer of coffee.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""By this time his debt had become extremely large.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Its eyes were abnormally large.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plant had grown quite large.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Would you like small, medium or large?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you have this dress in a larger size?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Some drugs are being used on a much larger scale than previously.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If we look at the larger picture of the situation, the differences seem slight.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/TyV-OhCrVDA?t=1173';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/oARVdCyRT98?t=23';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/z1KGMsMai0M?t=393';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/SSk0B0dVq4g';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/6h0OB16aOXM?t=47';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/A2iD7ZUUHTM?t=88';
    const double startSecondsfive = 0;

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
                      word: """large""",
                      // alsoEnglishWord: "also: large",
                      britshText: """IpaUK: /lɑːdʒ/""",
                      americanText: """IpaUS: /lɑːrdʒ/""",
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
کوردی: گەورە، مەزن، زل، گەپ، درشت، جێدار، بەخۆوە، دووباد،	فرە، زۆر، زەبەند،	بەرین، بەربڵاو، بەرفرەهـ، پان،	دوورودرێژ
"""),
// With short examples define "large", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) گەورە"""),
                    SentencesRow(
                      englishText:
                          """Drought hit large parts of the country.""",
                      kurdishText:
                          """وشکەساڵی بەر بەشێکی گەورە لە وڵاتەکە کەوتووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """A large proportion of older people live alone.""",
                              kurdishText:
                                  """ژمارەیەکی زۆری کەسانی بەتەمەن بە تەنها دەژین.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The company has grown large enough to employ over 100 people.""",
                              kurdishText:
                                  """کۆمپانیاکە هندە گەورە بووە کە ١٠٠ کارمەندی هەبێت.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """That's too large to fit in my suitcase!""",
                              kurdishText:
                                  """زۆر گەورەیە کە لە سندووقەکە جێگای ببێتەوە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The population is slightly larger than that of Canada.""",
                              kurdishText:
                                  """دانیشتوانەکە کەمێک گەورەترە لە هی کەنەدا.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Seoul is one of the world's largest cities.""",
                              kurdishText:
                                  """سیئۆل یەکێکە لە شارە هەرە گەورەترینەکانی جیهان.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He's a very large child for his age.""",
                              kurdishText:
                                  """منداڵێکی زۆر گەورەیە بەپێی تەمەنی.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Brazil is the world's largest producer of coffee.""",
                              kurdishText:
                                  """بەرازیل گەورەترین بەرهەمهێنەری جیهانە بۆ قاوە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """By this time his debt had become extremely large.""",
                              kurdishText:
                                  """لەم کاتەدا قەرزەکە تەواو گەورەبووبوو.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Its eyes were abnormally large.""",
                              kurdishText:
                                  """چاوەکانی بەشێوەی نائاسایی گەورە بوون.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The plant had grown quite large.""",
                              kurdishText: """ڕووەکەکە زۆر گەورە بووە.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) بەکاردێت بۆ باسکردنی یەک قەبارە لە ژمارەیەک لەو قەبارانەی بەکاردێن بۆ جل، خواردن، یان بەرهەم کە لە ماڵێکدا بەکاردێن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Would you like small, medium or large?""",
                      kurdishText: """حەزت بە بچووک، مامناوەند، یان گەورەیە؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do you have this dress in a larger size?""",
                      kurdishText: """ئەم کراسەت بە قەبارەیەکی گەورەتر هەیە؟""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە ژمارەیەکی زۆر شت لەخۆ دەگرێت یان بە ئاستێکی زۆر بەکاردێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Some drugs are being used on a much larger scale than previously.""",
                      kurdishText:
                          """هەندێک دەرمان بە ئاستێکی زۆر زیاتر بەکاردێن وەک لە پێشتر.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If we look at the larger picture of the situation, the differences seem slight.""",
                      kurdishText:
                          """ئەگەر سەیری وێنە گەورەکەی دۆخەکە بکەین، جیاوازییەکان کەمن.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
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
// end large