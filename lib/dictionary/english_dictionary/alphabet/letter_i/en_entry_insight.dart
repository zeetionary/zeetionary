import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinsight extends StatefulWidget {
  const EnglishEntryinsight({super.key});

  @override
  State<EnglishEntryinsight> createState() => _EnglishEntryinsightState();
}

class _EnglishEntryinsightState extends State<EnglishEntryinsight> {
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
- Noun: insight (Derived forms: insights)
1. Clear or deep perception of a situation (- penetration)
 
2. A feeling of understanding (- perceptiveness, perceptivity)
 
3. The clear (and often sudden) understanding of a complex situation (- brainstorm, brainwave)
 
4. Grasping the inner nature of things intuitively (- sixth sense)
""",
  );

  final String keyword = "insight";
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
    await flutterTts.speak("""insight""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His work offers several useful insights.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Now is the time to apply the insights you have gained from your studies.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The study of Roman coinage provides insights into Roman history and culture.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Jane Austen's correspondence with her sister provides insights into her life and thoughts.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Demographical data from the 1950s provides insights into societal changes.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her letters offer a fascinating insight into early Victorian family life.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A little less glibness and a little more insight would give the show more depth.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The study of Roman coinage provides insights into Roman history and culture.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The play offers some illuminating insights into the King’s character.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was a writer of great insight.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'lGSOWwUvJiU';
    const double startSecondsend = 1770;
    const String videoIdone = 'hOUGNGWmN0k';
    const double startSecondsone = 55;
    const String videoIdtwo = 'DxL2HoqLbyA';
    const double startSecondstwo = 236;
    const String videoIdthree = '5R65skWdg7Y';
    const double startSecondsthree = 1782;
    const String videoIdfour = '0PufM6dW_to';
    const double startSecondsfour = 78;
    const String videoIdfive = 'fHsa9DqmId8';
    const double startSecondsfive = 872;

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
                      word: """insight""",
                      // alsoEnglishWord: "also: insight",
                      britshText: """IpaUK: /ˈɪnsaɪt/""",
                      americanText: """IpaUS: /ˈɪnsaɪt/""",
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
کوردی: بینین، بینشت، دەروون‌بینی، ڕاستی‌بینی، تێڕوانین، بینایی، ڕێبەدی‌کردن، ڕاستی‌تێگەیشتن، زووپێزانین، تێگەیشتوویی، تێگەیشتن، پێزانین
"""),
// With short examples define "insight", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) تێگەشتنی ئەوەی شتێک چۆنە"""),
                    SentencesRow(
                      englishText:
                          """His work offers several useful insights.""",
                      kurdishText:
                          """کارەکەی ژمارەیەک تێگەشتنی باش دەدات بە دەستەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The study of Roman coinage provides insights into Roman history and culture.""",
                      kurdishText:
                          "لێکۆڵینەوە لە دراوی ڕۆم زانیاری دەدات بەدەستەوە لەسەر مێژوو و کەلتووری ڕۆم.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Jane Austen's correspondence with her sister provides insights into her life and thoughts.""",
                      kurdishText:
                          "نامەگۆڕینەوەی خەین ئۆستن لەگەڵ خوشکەکەی تێگەشتن دەدات بەدەستەوە لەسەر ژیان و بیرکردنەوەی.",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Demographical data from the 1950s provides insights into societal changes.""",
                      kurdishText:
                          "ئاماری دیموگرافییانە لە ١٩٥٠ ـیەکانەوە بەرچاوڕوونی بۆ گۆڕانە کۆمەڵایەتییەکان پیشان دەدات",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her letters offer a fascinating insight into early Victorian family life.""",
                      kurdishText:
                          """نامەکەی تێڕوانینێکی سەرنجڕاکێش دەبەخشێت بە سەرەتای ژیانی خێزانی سەردەمی شاژن ڤیکتۆریا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A little less glibness and a little more insight would give the show more depth.""",
                      kurdishText:
                          """کەمێک کەمتر لە خەیاڵپڵاوی و تێڕوانینی زیاتر قووڵی زیاتر دەدات بە نمایشەکە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The study of Roman coinage provides insights into Roman history and culture.""",
                      kurdishText:
                          "لێکۆڵینەوە لە دراوی ڕۆم زانیاری دەدات بەدەستەوە لەسەر مێژوو و کەلتووری ڕۆم.",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The play offers some illuminating insights into the King’s character.""",
                      kurdishText:
                          """شانۆکە هەندێک تێگەشتنی ڕۆشن‌کەرەوە دەخاتە بەردەست لەسەر کەسایەتی پاشا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) توانای بینین و تێگەشتن لە ڕاستی کەسێک یان دۆخێک"""),
                    SentencesRow(
                      englishText: """She was a writer of great insight.""",
                      kurdishText:
                          """نووسەرێکی خاوەن توانای تێگەشتنی زۆر بوو.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Now is the time to apply the insights you have gained from your studies.""",
                      kurdishText:
                          "ئێستا کاتی بەکارھێنانی ئەو توانایانەیە کە لە خوێندن فێریان بوویت.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
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
// end insight