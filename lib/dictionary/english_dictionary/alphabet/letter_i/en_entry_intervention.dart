import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintervention extends StatefulWidget {
  const EnglishEntryintervention({super.key});

  @override
  State<EnglishEntryintervention> createState() =>
      _EnglishEntryinterventionState();
}

class _EnglishEntryinterventionState extends State<EnglishEntryintervention> {
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
- Noun: intervention (Derived forms: interventions)
1. The act of intervening (as to mediate a dispute, etc.) (- intercession)
"it occurs without human intervention";
 
2. A policy of intervening in the affairs of other countries (- interference)
 
3. The act or fact of interposing one thing between or among others (- interposition)
 
4. (law) a proceeding that permits a person to enter into a lawsuit already in progress; admission of person not an original party to the suit so that person can protect some right or interest that is allegedly affected by the proceedings
"the purpose of intervention is to prevent unnecessary duplication of lawsuits"
 
5. Care provided to improve a situation (especially medical procedures or applications that are intended to relieve illness or injury) (- treatment)
""",
  );

  final String keyword = "intervention";
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
    await flutterTts.speak("""intervention""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He warned against too much government intervention in the economy.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She has opposed any direct intervention in the conflict, saying there are diplomatic options.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Most patients make a recovery without further medical intervention.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""People resented his repeated interventions in the debate.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'fGMCjELDyUY';
    const double startSecondsend = 1213;
    const String videoIdone = 'Unzc731iCUY';
    const double startSecondsone = 738;
    const String videoIdtwo = 'VNZ0so0LCoM';
    const double startSecondstwo = 544;
    const String videoIdthree = 'Ma0b6h4s5bY';
    const double startSecondsthree = 452;
    const String videoIdfour = 'tZktTdGHaJY';
    const double startSecondsfour = 626;
    const String videoIdfive = 'Ot4qdCs54ZE';
    const double startSecondsfive = 537;

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
                      word: """intervention""",
                      // alsoEnglishWord: "also: intervention",
                      britshText: """IpaUK: /ˌɪntəˈvenʃn/""",
                      americanText: """IpaUS: /ˌɪntərˈvenʃn/""",
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
کوردی: دەس‌تێوەردان، خۆتێکەڵ‌کردن، خۆتێهەڵ‌کوتان، دەس‌تێخستن، مایی‌تێکردن
"""),
// With short examples define "intervention", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کاری باشترکردن یان یارمەتیدان لە دۆخێکدا"""),
                    SentencesRow(
                      englishText:
                          """He warned against too much government intervention in the economy.""",
                      kurdishText:
                          """هۆشداری دا دژ بە دەستوەردانی زۆری حکومەت لە ئابووری.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کە وڵاتێک بەژدار بێت لە کێشەکانی وڵاتێکی دیکە بەبێ مۆڵەت"""),
                    SentencesRow(
                      englishText:
                          """She has opposed any direct intervention in the conflict, saying there are diplomatic options.""",
                      kurdishText:
                          """دژ بە هەر دەستوەردانێکی ڕاستەوخۆ بووە کە کێشەکە و گوتوویەتی ڕێگای دیپلۆماسی هەیە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شتێک کە دەکرێت بۆ باشتربوون لە نەخۆشی یان دۆخێک"""),
                    SentencesRow(
                      englishText:
                          """Most patients make a recovery without further medical intervention.""",
                      kurdishText:
                          """زۆر نەخۆش چاکدەبنەوە بەبێ هەوڵی دەرمانی زیاتر.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) پچڕاندنی کەسێک کە قسە دەکات بۆ گوتنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """People resented his repeated interventions in the debate.""",
                      kurdishText:
                          """خەڵکی ڕقیان لە پچڕاندنی بەردەوامی بوو لە دیبەیتەکە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
// end intervention