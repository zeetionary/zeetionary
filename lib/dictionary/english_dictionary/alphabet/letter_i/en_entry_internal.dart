import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinternal extends StatefulWidget {
  const EnglishEntryinternal({super.key});

  @override
  State<EnglishEntryinternal> createState() => _EnglishEntryinternalState();
}

class _EnglishEntryinternalState extends State<EnglishEntryinternal> {
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
- Adjective: internal
1. Happening or arising or located within some limits or especially surface
"internal organs"; "internal mechanism of a toy"; "internal party manoeuvring"
 
2. Occurring within an institution or community (- intragroup)
"internal squabbling within the corporation";
 
3. Inside the country (- home, interior, national)
"the nation's internal politics";
 
4. Located inward (- inner, interior)
"an internal sense of righteousness";
 
5. Innermost or essential (- inner, intimate)
"the internal contradictions of the theory";
""",
  );

  final String keyword = "internal";
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
    await flutterTts.speak("""internal""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""An internal wall has been removed.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Temperature is an indication of an object's internal energy level.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He sustained injuries to his arms, legs, and several internal organs.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The internal logic of her argument is undeniable.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company has launched an internal investigation into the claims.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Does the bank to have adequate records, systems and internal controls?""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He accused the US of trying to interfere in his country's internal affairs.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Nations should be left to resolve their own internal difficulties.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'wMmy2MlH55U';
    const double startSecondsend = 329;
    const String videoIdone = 'SrDEtSlqJC4';
    const double startSecondsone = 117;
    const String videoIdtwo = 'Fr-qagv7ig0';
    const double startSecondstwo = 1206;
    const String videoIdthree = 'DfSnHyIryeY';
    const double startSecondsthree = 289;
    const String videoIdfour = 'J-K5OjAkiEA';
    const double startSecondsfour = 283;
    const String videoIdfive = '8eq2vGEEbB4';
    const double startSecondsfive = 279;

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
                      word: """internal""",
                      // alsoEnglishWord: "also: internal",
                      britshText: """IpaUK: /ɪnˈtɜːnl/""",
                      americanText: """IpaUS: /ɪnˈtɜːrnl/""",
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
کوردی: نێوخۆیی، ناوخۆ، لەنێوەوە، ژوورەوە، لە ناوەوە، نێوەوە(یی)،	نێوەوەی لەش، هەناو،	سەربە کاروبار یان چالاکی‌یەکانی نێوخۆی وڵاتێ،	هەناوی، زاتی، نێوەکی، خۆماکی، ژوورەکی، هۆشی، زەینی، نابابەتی
"""),
// With short examples define "internal", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) پەیوەندیدار بە ناوەوەی شتێک"""),
                    SentencesRow(
                      englishText: """An internal wall has been removed.""",
                      kurdishText: """دیوارێکی ناوەوە لابراوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Temperature is an indication of an object's internal energy level.""",
                      kurdishText:
                          """پلەی گەرمی دەرخەری ئاستی وزەی ناوەکی شتێکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) پەیوەندیدار بە ناوەوەی جەستە"""),
                    SentencesRow(
                      englishText:
                          """He sustained injuries to his arms, legs, and several internal organs.""",
                      kurdishText:
                          """تووشی برین بوو لە باڵەکانی، لاقەکانی، و ژمارەیەک ئەندامی ناوەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) پەیوەندیدار بە هزری مرۆڤ"""),
                    SentencesRow(
                      englishText:
                          """The internal logic of her argument is undeniable.""",
                      kurdishText:
                          """لۆژیکی هزری ئارگیومێنتەکەی نکۆڵی لێنەکراوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کە تەنها ئەو کەسانە لەخۆ دەگرێت کە بەشێکن لە دامەزراوەیەک"""),
                    SentencesRow(
                      englishText:
                          """The company has launched an internal investigation into the claims.""",
                      kurdishText:
                          """کۆمپانیاکە لێکۆڵینەوەیەکی ناوخۆیی لەسەر بانگەشەکان دەست پێکردووە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Does the bank to have adequate records, systems and internal controls?""",
                      kurdishText:
                          """بانکەکە بەشی پێویست تۆمار، سیستەم، و کۆنترۆڵی ناوخۆیی هەیە؟""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) پەیوەندیدار بە ناوخۆی وڵاتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: domestic"),
                    SentencesRow(
                      englishText:
                          """He accused the US of trying to interfere in his country's internal affairs.""",
                      kurdishText:
                          """ئەمریکای تۆمەتبار کرد بە بە هەوڵ دان بۆ دەستوەردان لە کارە ناوخۆییەکانی وڵاتەکەی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Nations should be left to resolve their own internal difficulties.""",
                      kurdishText:
                          """وڵاتان دەبێت وازیان لێ بهێندرێت کە سەختییە ناوخۆییەکانی خۆیان چارەسەر بکەن.""",
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
// end internal