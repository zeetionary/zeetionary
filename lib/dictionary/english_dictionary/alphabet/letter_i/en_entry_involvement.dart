import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinvolvement extends StatefulWidget {
  const EnglishEntryinvolvement({super.key});

  @override
  State<EnglishEntryinvolvement> createState() =>
      _EnglishEntryinvolvementState();
}

class _EnglishEntryinvolvementState extends State<EnglishEntryinvolvement> {
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
- Noun: involvement (Derived forms: involvements)
1. The act of sharing in the activities of a group (- engagement, participation, involution)
"the teacher tried to increase his students' involvement in class activities";
 
2. A connection of inclusion or containment
"he escaped involvement in the accident"; "there was additional involvement of the liver and spleen"
 
3. A sense of concern with and curiosity about someone or something (- interest)
"an involvement in music";
 
4. A usually secretive or illicit sexual relationship (- affair, affaire, intimacy, liaison, amour)
 
5. The condition of sharing in common with others (as fellows or partners etc.) (- participation)
""",
  );

  final String keyword = "involvement";
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
    await flutterTts.speak("""involvement""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Employees are demanding greater involvement in decision-making.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He encourages parental involvement in the running of school.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The project needs full involvement from all members of the group.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There is no evidence to suggest criminal involvement.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was found to have a deep involvement in organized crime.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The new album came out of her growing involvement with contemporary music.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He spoke openly about his involvement with the singer.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Nurses usually try to avoid emotional involvement with patients.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'Sbp_EeBk-As';
    const double startSecondsend = 2125;
    const String videoIdone = 'b_rjBWmc1iQ';
    const double startSecondsone = 2273;
    const String videoIdtwo = 'YLmDE_JYUNU';
    const double startSecondstwo = 951;
    const String videoIdthree = 'aCPNlZ7bvRc';
    const double startSecondsthree = 87;
    const String videoIdfour = 'JcpboMScfIY';
    const double startSecondsfour = 3100;
    const String videoIdfive = 'cMBrvHsFD_8';
    const double startSecondsfive = 1341;

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
                      word: """involvement""",
                      // alsoEnglishWord: "also: involvement",
                      britshText: """IpaUK: /ɪnˈvɒlvmənt/""",
                      americanText: """IpaUS: /ɪnˈvɑːlvmənt/""",
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
کوردی: کێشە، پرس، پێ‌وەبوون، تێوەگلان، تووش‌بوون، دوچاربوون، تێ‌کەوتن، تێ‌گیران، دەس‌تێ‌هاوێژران، گیرکردن، بەسەرەوەتێ‌کەوتن، تێ‌وەردران،	ئاڵۆزی، پێچاوپێچی، پێچەڵاوپێچی،	(ماڵی) گوشار، تەنگانە
"""),
// With short examples define "involvement", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەوەی بەژداری لە شتێک یان مامەڵە لەگەڵ شتێک بکەیت"""),
                    SentencesRow(
                      englishText:
                          """Employees are demanding greater involvement in decision-making.""",
                      kurdishText:
                          """کارمەندان داوای بەژداریی زیاتر لە بڕیاردان دەکەن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He encourages parental involvement in the running of school.""",
                      kurdishText:
                          """هانی بەژداریی دایبابان دەدات لە بەڕێوەبردنی قوتابخانەکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The project needs full involvement from all members of the group.""",
                      kurdishText:
                          """پڕۆژەکە پێویستیی بە بەژداریی تەواوی هەموو ئەندامانی گرووپەکە هەیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is no evidence to suggest criminal involvement.""",
                      kurdishText:
                          """هیچ بەڵگەیەک نییە ئاماژە بە بەژداریی تاوانکاری بکات.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was found to have a deep involvement in organized crime.""",
                      kurdishText:
                          """زانرا تێوەگلانی قووڵی هەبێت لە تاوانی ڕێکخراو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەوەی کات و سەرنجی زۆر بدەیت بە شتێک کە گرنگی پێدەدەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The new album came out of her growing involvement with contemporary music.""",
                      kurdishText:
                          """ئەلبوومە تازە دەرچوو لە ئەنجامی حەزی زۆری بۆ میوزیکی سەردەم.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) پەیوەندییەکی نزیک لەگەڵ کەسێک، بە تایبەتی سۆزداری یانن سێکسی لەگەڵ کەسێک کە هاوسەرگیریت لەگەڵ نەکردووە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He spoke openly about his involvement with the singer.""",
                      kurdishText:
                          """بە ئاشکرایی باسی پەیوەندیی لەگەڵ گۆرانیبێژەکە کرد.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Nurses usually try to avoid emotional involvement with patients.""",
                      kurdishText:
                          """پەرستاران زۆرجار هەوڵ دەدەن دووربن لە پەیوەندیی سۆزداری لەگەڵ نەخۆشان.""",
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
// end involvement