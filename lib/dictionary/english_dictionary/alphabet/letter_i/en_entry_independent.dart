import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindependent extends StatefulWidget {
  const EnglishEntryindependent({super.key});

  @override
  State<EnglishEntryindependent> createState() =>
      _EnglishEntryindependentState();
}

class _EnglishEntryindependentState extends State<EnglishEntryindependent> {
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
- Adjective: independent
1. Free from external control and constraint
"an independent mind"; "a series of independent judgments"; "fiercely independent individualism"
 
2. (of a clause) capable of standing syntactically alone as a complete sentence (- main)
"the independent clause in a complex sentence has at least a subject and a verb";
 
3. (of political bodies) not controlled by outside forces (- autonomous, self-governing, sovereign)
"an independent judiciary";
 
4. Not controlled by a party or interest group
 
5. Not connected or affected by each other
"a set of independent events"

- Noun: independent (Derived forms: independents)
1. A neutral or uncommitted person (especially in politics) (- mugwump [N. Amer], fencesitter)
 
2. A writer or artist who sells services to different employers without a long-term contract with any of them (- freelancer, freelance, free-lance, free lance, self-employed person)
""",
  );

  final String keyword = "independent";
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
    await flutterTts.speak("""independent""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Mozambique became independent in 1975.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""In 1961 the country was declared independent.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The country became fully independent from France in 1960.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Going away to college has made me much more independent.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Students should aim to become more independent of their teachers.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It was important to me to be financially independent of my parents.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She went to a lawyer for some independent advice.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The police force should be independent of direct government control.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The results were obtained from four independent experiments.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She prefers independent television for unbiased news.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Farmers operate as independent producers in the sense of working for themselves and running their own business.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is an independent candidate.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She's standing as an independent at the next election.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's getting tougher and tougher for independents in the music business.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'lsFPbgK1v9I';
    const double startSecondsend = 157;
    const String videoIdone = 'SrDEtSlqJC4';
    const double startSecondsone = 1476;
    const String videoIdtwo = 'b1reY72ktEc';
    const double startSecondstwo = 1100;
    const String videoIdthree = 'nGrB-5ieeMU';
    const double startSecondsthree = 217;
    const String videoIdfour = 'dThvyim4tbU';
    const double startSecondsfour = 145;
    const String videoIdfive = 'dhgEpr87Yac';
    const double startSecondsfive = 514;

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
                      word: """independent""",
                      // alsoEnglishWord: "also: independent",
                      britshText: """IpaUK: /ˌɪndɪˈpendənt/""",
                      americanText: """IpaUS: /ˌɪndɪˈpendənt/""",
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
کوردی: سەربەخۆ، خۆیبوو، خۆسەر، سەربەست، ئازاد
2	پێوەنەبەستراو، جیا، جودا، نەبەستراو، پشت‌پێنەبەستوو، ناپێوەبەند، ناپێویست، نیازپێ‌نەبوو
"""),
// With short examples define "independent", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) وڵاتێک کە حکومەتی خۆی هەیە و لەژێر داگیرکاری نییە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: self-governing"),
                    SentencesRow(
                      englishText: """Mozambique became independent in 1975.""",
                      kurdishText: """مۆزەمبیق ساڵی ١٩٧٥ سەربەخۆ بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In 1961 the country was declared independent.""",
                      kurdishText:
                          """لە ساڵی ١٩٦١ وڵاتەکە سەربەخۆیی ڕاگەیاند.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The country became fully independent from France in 1960.""",
                      kurdishText:
                          """وڵاتەکە بە تەواوی سەربەخۆ بوو لە فەرەنسا لە ساڵی ١٩٦٠.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کەسێک کە متمانەی بەخۆی هەیە و بەبێ یارمەتیی کەسانی دیکە کارەکانی دەکات"""),
                    SentencesRow(
                      englishText:
                          """Going away to college has made me much more independent.""",
                      kurdishText:
                          """دوور چوون بۆ کۆلێژ زۆر زیاتر سەربەخۆی کردووم.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Students should aim to become more independent of their teachers.""",
                      kurdishText:
                          """خوێندکاران دەبێت هەوڵ بدەن زیاتر سەربەخۆ بن لە مامۆستاکانیان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە بڕە پارەی پێویستت هەبێت و پشت بە کەسی دیکە نەبەستیت"""),
                    SentencesRow(
                      englishText:
                          """It was important to me to be financially independent of my parents.""",
                      kurdishText:
                          """ئەوە گرنگ بوو بۆم کە لە ڕووی داراییەوە سەربەخۆ بم لە دایبابم.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) لەلایەن کەسێکەوە کە بەشێک نییە لە دۆخێک بۆیە دەتوانێت بە دادپەروەری بڕیاری لێ بدات"""),
                    SentencesRow(
                      englishText:
                          """She went to a lawyer for some independent advice.""",
                      kurdishText:
                          """چووە لای پارێزەرێک بۆ هەندێک ڕاوێژی سەربەخۆ.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە پەیوەندیدار یان کاریگەر بە شتێک نییە"""),
                    SentencesRow(
                      englishText:
                          """The police force should be independent of direct government control.""",
                      kurdishText:
                          """هێزی پۆلیس دەبێت سەربەخۆ بێت لە کۆنترۆڵی ڕاستەوخۆی حکومەت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The results were obtained from four independent experiments.""",
                      kurdishText:
                          """ئەنجامەکان لە چوار تاقیکردنەوەی سەربەخۆ دەستکەوتن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) کە پارەی تایبەت بەڕێوە دەبردێت نەک هی حکومەت"""),
                    SentencesRow(
                      englishText:
                          """She prefers independent television for unbiased news.""",
                      kurdishText:
                          """تەلەفیزیۆنی سەربەخۆی پێباشترە بۆ هەواڵی بێ‌لایەن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) کە کار بۆ کۆمپانیایەک ناکات"""),
                    SentencesRow(
                      englishText:
                          """Farmers operate as independent producers in the sense of working for themselves and running their own business.""",
                      kurdishText:
                          """جوتیاران کار دەکەن وەک بەرهەمهێنەری سەربەخۆ بەو واتایەی کە کار بۆ خۆیان دەکەن و بازرگانیی خۆیان بەڕێوە دەبەن.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ھاوەڵناو) کە سەر بە پارتێکی سیاسی نییە"""),
                    SentencesRow(
                      englishText: """He is an independent candidate.""",
                      kurdishText: """بەربژێرێکی سەربەخۆیە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ئەندامێکی پەرلەمان، کاندیدێک، هتد کە سەر بە هیچ پارتێک نییە"""),
                    SentencesRow(
                      englishText:
                          """She's standing as an independent at the next election.""",
                      kurdishText:
                          """وەک سەربەخۆیەک لە هەڵبژاردنی دواتر بەژداری دەکات.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) کەسێک کە بازرگانیی بچووکی خۆی هەیە و کار بۆ هیچ کۆمپانیایەک ناکات"""),
                    SentencesRow(
                      englishText:
                          """It's getting tougher and tougher for independents in the music business.""",
                      kurdishText:
                          """سەختتر و سەختتر دەبێت بۆ سەربەخۆکان لە جیهانی میوزیکدا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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