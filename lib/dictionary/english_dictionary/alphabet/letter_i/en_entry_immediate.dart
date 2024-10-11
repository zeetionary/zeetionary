import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimmediate extends StatefulWidget {
  const EnglishEntryimmediate({super.key});

  @override
  State<EnglishEntryimmediate> createState() => _EnglishEntryimmediateState();
}

class _EnglishEntryimmediateState extends State<EnglishEntryimmediate> {
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
- Adjective: immediate
1. Very close or connected in space or time (- contiguous)
"immediate contact"; "the immediate vicinity";
 
2. Performed with little or no delay (- prompt, quick, straightaway)
"an immediate reply to my letter";
 
3. Having no intervening medium
"an immediate influence"
 
4. Of the present time and place
"the immediate revisions"
 
5. Immediately before or after as in a chain of cause and effect
"the immediate result"; "the immediate cause of the trouble"
""",
  );

  final String keyword = "immediate";
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
    await flutterTts.speak("""immediate""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This decision will have an immediate impact on students.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The president visited the region in the immediate aftermath of the disaster.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She felt an immediate attraction for him.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The immediate future is clear, but it's hard to tell what lies beyond.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The UN has passed a resolution calling for an immediate ceasefire.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The spillage of corrosive acid required immediate cleanup to prevent damage.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Campaigners have stepped up their demands for immediate government action.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""More food supplies are ready for immediate dispatch.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government ordered the immediate expulsion of the two men.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We've only told the immediate family.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Mexico called for an immediate cessation of hostilities.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Our immediate concern is to help the families of those who died.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The hospital says she's out of immediate danger.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The report focuses on some of the more immediate problems facing us.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The prospects for the immediate future are good.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The funeral was attended by her immediate family only.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is my immediate superior in the company.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The immediate cause of death is unknown.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '-HyHZsa79LU';
    const double startSecondsend = 1080;
    const String videoIdone = 'AF8d72mA41M';
    const double startSecondsone = 1494;
    const String videoIdtwo = 'mY3SEMTROas';
    const double startSecondstwo = 1503;
    const String videoIdthree = '8eq2vGEEbB4';
    const double startSecondsthree = 219;
    const String videoIdfour = 'L9Mu93VJLcc';
    const double startSecondsfour = 202;
    const String videoIdfive = 'pFmtmO2cnlg';
    const double startSecondsfive = 547;

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
                      word: """immediate""",
                      // alsoEnglishWord: "also: immediate",
                      britshText: """IpaUK: /ɪˈmiːdiət/""",
                      americanText: """IpaUS: /ɪˈmiːdiət/""",
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
کوردی: دەسبەجێ، دەست‌وبرد، خێرا، کت‌ومت، پێویست، پێدڤی،	نزیک(ترین)، تەنیشتی، ڕاستەوخۆ، بێ‌نێونجی، یەکسەرە
"""),
// With short examples define "immediate", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) کە بەبێ دواکەوتن دەکرێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: instant"),
                    SentencesRow(
                      englishText:
                          """This decision will have an immediate impact on students.""",
                      kurdishText:
                          """ئەم بڕیارە کاریگەریی دەسبەجێی دەبێت لەسەر خوێندکاران.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She felt an immediate attraction for him.""",
                              kurdishText:
                                  "ھەستی بە دڵبەستەییەکی دەستبەجێ کرد بۆی.",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The UN has passed a resolution calling for an immediate ceasefire.""",
                              kurdishText:
                                  "نەتەوە یەکگرتووەکان پڕۆژە یاسایەکی تێپەڕاندووە کە داوای ئاگربەستی دەستبەجێ دەکات.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The spillage of corrosive acid required immediate cleanup to prevent damage.""",
                              kurdishText:
                                  "ڕژانی ترشەڵۆکی ڕزێنەر پێویستی بە پاککردنەوەی دەستبەجێی بوو بۆ ڕێگری لە زیان.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Campaigners have stepped up their demands for immediate government action.""",
                              kurdishText:
                                  "چالاکوانان فشاریان زیاد کردووە بۆ داوای ھەنگاوی دەستبەجێی حکومەت.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """More food supplies are ready for immediate dispatch.""",
                              kurdishText:
                                  "پاشەکەوتی زیاتری خواردن ئامادەیە بۆ ناردنی دەستبەجێ.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The government ordered the immediate expulsion of the two men.""",
                              kurdishText:
                                  """حکومەت بڕیاری دەستبەجێ دەرکردنی دوو پیاوەکەی دا.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Mexico called for an immediate cessation of hostilities.""",
                              kurdishText:
                                  "مەکسیک داوای وەستانی دەستبەجێی پێکدادانی کردووە.",
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
                            """٢. (ھاوەڵناو) کە ئێستا بوونی هەیە و پێویستی بە گرنگیپێدانی خێرایە"""),
                    SentencesRow(
                      englishText:
                          """Our immediate concern is to help the families of those who died.""",
                      kurdishText:
                          """نیگەرانیی ئێستامان ئەوەیە یارمەتی ئەو خێزانی ئەو کەسانە بدەین کە مردن.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The hospital says she's out of immediate danger.""",
                      kurdishText:
                          """نەخۆشخانەکە دەڵێت لە مەترسی ڕاستەوخۆ دەرچووە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The report focuses on some of the more immediate problems facing us.""",
                      kurdishText:
                          """ڕاپۆرتەکە تیشک دەخاتە سەر ئەو کێشە هەنووکەییانەی ڕووبەڕوومان بووەتەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) لە نزیک کات یان شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """The prospects for the immediate future are good.""",
                      kurdishText: """چاوەڕوانییەکان بۆ داهاتووی نزیک باشن.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The immediate future is clear, but it's hard to tell what lies beyond.""",
                      kurdishText:
                          "داھاتووی نزیک ئاشکرایە، بەڵام نازانرێت چی لە ھەگبەدایە دوای ئەوە.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The president visited the region in the immediate aftermath of the disaster.""",
                      kurdishText:
                          "سەرۆک سەردانی ھەرێمەکەی کرد لە دەرئەنجامی کارەساتەکە.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کە لە پێگە یان پەیوەندیی خزمایەتی نزیکترینە"""),
                    SentencesRow(
                      englishText:
                          """The funeral was attended by her immediate family (= her parents, children, brothers and sisters) only.""",
                      kurdishText:
                          """لە مەراسیمی ناشتنەکە تەنها خزمانی نزیکی تێیدا بەژداربوون.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We've only told the immediate family (= the closest relations).""",
                      kurdishText:
                          """تەنھا بە نزیکترینەکانی خێزانەکەمان گوتووە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He is my immediate superior (= the person directly above me) in the company.""",
                      kurdishText:
                          """باڵادەستی ڕاستەوخۆ سەروو خۆمە لە کۆمپانیاکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) کە کاریگەریی ڕاستەوخۆی هەیە"""),
                    SentencesRow(
                      englishText:
                          """The immediate cause of death is unknown.""",
                      kurdishText: """هۆکاری ڕاستەوخۆی مردن نەزانراوە.""",
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