import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryidentity extends StatefulWidget {
  const EnglishEntryidentity({super.key});

  @override
  State<EnglishEntryidentity> createState() => _EnglishEntryidentityState();
}

class _EnglishEntryidentityState extends State<EnglishEntryidentity> {
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
- Noun: identity (Derived forms: identities)
1. The distinct personality of an individual regarded as a persisting entity (- personal identity, individuality)
"you can lose your identity when you join the army";
 
2. The individual characteristics by which a thing or person is recognized or known
"geneticists only recently discovered the identity of the gene that causes it"; "it was too dark to determine his identity"; "she guessed the identity of his lover"
 
3. An operator that leaves unchanged the element on which it operates (- identity element, identity operator)
"the identity under numerical multiplication is 1";
 
4. Exact sameness (- identicalness, indistinguishability)
"they shared an identity of interests";
""",
  );

  final String keyword = "identity";
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
    await flutterTts.speak("""identity""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The police are trying to discover the identity of the killer.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Their names have been changed for the purposes of this article to protect their identities.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their identities were kept secret.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The themes in Arabic poetry often revolve around love, nature, and cultural identity.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He used three different burner numbers to conceal his identity.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """For many women, wearing a chador is a way to express their faith and cultural identity.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The donor's identity is a close secret.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The hat gives a clue to the identity of the killer.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We have yet to confirm the identities of the victims.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He wears an identity disc around his neck.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Police refused to divulge the identity of the suspect.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Scotland has never lost its identity as a separate nation.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The two companies started working together as a result of a clear identity of interests.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There's a close identity between fans and their team.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hS2x1zl4rn0';
    const double startSecondsend = 527;
    const String videoIdone = 'Cqbleas1mmo';
    const double startSecondsone = 579;
    const String videoIdtwo = 'zZM57oTu9Ng';
    const double startSecondstwo = 199;
    const String videoIdthree = 'Js2UoMSumx4';
    const double startSecondsthree = 886;
    const String videoIdfour = 'x6btmJSRueE';
    const double startSecondsfour = 144;
    const String videoIdfive = 'YrMGIqecu0Y';
    const double startSecondsfive = 1228;

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
                      word: """identity""",
                      // alsoEnglishWord: "also: identity",
                      britshText: """IpaUK: /aɪˈdentəti/""",
                      americanText: """IpaUS: /aɪˈdentəti/""",
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
کوردی: لێکچوویی، وەکیەکی، یەکێ‌بوون، یەکێتی، عەینی یەک‌بوون، تەواو لێکچوون، یەک‌شێوەیی، هەروەک یەک‌بوون، هەرئەوبوون، هەمان‌بوون، هەمانی، یەک‌جۆری، هاوچەشنی
"""),
// With short examples define "identity", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) ئەوەی کەسێک/شتێک کێیە/چییە """),
                    SentencesRow(
                      englishText:
                          """The police are trying to discover the identity of the killer.""",
                      kurdishText:
                          """پۆلیس هەوڵ دەدەن ناسنامەی بکوژەکە بدۆزنەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Their names have been changed for the purposes of this article to protect their identities.""",
                              kurdishText:
                                  """ناوەکانیان گۆڕدراون لە چوارچێوەی ئەم وتارەدا بە مەبەستی پاراستنی ناسنامەیان.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Their identities were kept secret.""",
                              kurdishText:
                                  """ناسنامەیان بە نهێنی هێڵدرایەوە.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He used three different burner numbers to conceal his identity.""",
                              kurdishText:
                                  "سێ موبایلی جیاوازی کاتیی بەکارھێنا بۆ شاردنەوەی ناسنامەی.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The donor's identity is a close secret.""",
                              kurdishText:
                                  "ناسنامەی بەخشەرەکە نھێنییەکی پارێزراوە.",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The hat gives a clue to the identity of the killer.""",
                              kurdishText:
                                  "کڵاوەکە سەرەداوێک دەدات بەدەستەوە سەبارەت بە ناسنامەی بکووژەکە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We have yet to confirm the identities of the victims.""",
                              kurdishText:
                                  "ھێشتا خەریکین ناسنامەی قوربانییەکان پشت‌ڕاست دەکەینەوە.",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He wears an identity disc around his neck.""",
                              kurdishText: "پەپکێکی ناسنامە لە ملی دەبەستێت.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Police refused to divulge the identity of the suspect.""",
                              kurdishText:
                                  "پۆلیس ڕەتیکردەوە ناسنامەی گومانلێکراوەکە ئاشکرا بکات.",
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
                            """٢. (ناو) خاسیەت، هەست، یان باوەڕ کە وادەکات خەڵکی لە یەکدی جیاواز بن"""),
                    SentencesRow(
                      englishText:
                          """Scotland has never lost its identity as a separate nation.""",
                      kurdishText:
                          """سکۆتلەندا هەرگیز وەک نەتەوەیەک ناسنامەی خۆی لەدەست نەداوە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The themes in Arabic poetry often revolve around love, nature, and cultural identity.""",
                      kurdishText:
                          "بابەتەکانی ھۆنراوەی عەرەبی زۆرجار باسی خۆشەویستی و سرووشت و ناسنامەی نەتەوەیین.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """For many women, wearing a chador is a way to express their faith and cultural identity.""",
                      kurdishText:
                          "بۆ زۆر ژن، لەبەرکردنی چارشێوێک ڕێگایەکە بۆ پیشاندانی ئایین و ناسنامەی کەلتووری.",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو هەستە یان ئەوەی کە زۆر وەک کەسێک/شتێک بیت"""),
                    SentencesRow(
                      englishText:
                          """The two companies started working together as a result of a clear identity of interests.""",
                      kurdishText:
                          """دوو کۆمپانیاکە دەستیان کرد بە کارکردن پێکەوە بەهۆی بەرکەوتنی ڕوونی بەرژەوەندییەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There's a close identity between fans and their team.""",
                      kurdishText:
                          """هەستی بەهێز هەیە لەنێوان هاندەران و تیمەکانیان.""",
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