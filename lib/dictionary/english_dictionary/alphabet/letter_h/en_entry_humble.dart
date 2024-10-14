import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhumble extends StatefulWidget {
  const EnglishEntryhumble({super.key});

  @override
  State<EnglishEntryhumble> createState() => _EnglishEntryhumbleState();
}

class _EnglishEntryhumbleState extends State<EnglishEntryhumble> {
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
- Adjective: humble (Derived forms: humblest, humbler)
1. Marked by meekness or modesty; not arrogant or prideful
"a humble apology"; "essentially humble...and self-effacing, he achieved the highest formal honours and distinctions"
 
2. Low or inferior in station or quality (- low, lowly, modest, small)
"a humble cottage";
 
3. Used of unskilled work (especially domestic work) (- menial, lowly)
 
4. Of low birth or station (- base [archaic], baseborn, lowly)
"of humble (or lowly) birth";

- Verb: humble (Derived forms: humbling, humbles, humbled)
1. Cause to be unpretentious
"This experience will humble him"
 
2. Cause to feel shame; hurt the pride of (- humiliate, mortify, chagrin, abase)
"He humbled his colleague by criticising him in front of the boss";
""",
  );

  final String keyword = "humble";
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
    await flutterTts.speak("""humble""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Be humble enough to learn from your mistakes.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's a loving, kind and humble woman.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""In my humble opinion, you were in the wrong.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My humble apologies. I did not understand.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He is intensely proud of his humble background.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He has built a huge business empire from humble beginnings.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Most of us have never considered the humble potato as a precious gift from nature.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You are most welcome to my humble abode.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They have never disowned their humble roots.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'QLq6GEiHqR8';
    const double startSecondsend = 1879;
    const String videoIdone = 'iI48g7YTZFA';
    const double startSecondsone = 534;
    const String videoIdtwo = 'cqidD7kVnxY';
    const double startSecondstwo = 1414;
    const String videoIdthree = 'qJl1p0W5-y4';
    const double startSecondsthree = 94;
    const String videoIdfour = '7eM7pb5M5DU';
    const double startSecondsfour = 51;
    const String videoIdfive = 'tCqwT2MqLxI';
    const double startSecondsfive = 1485;

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
                      word: """humble""",
                      // alsoEnglishWord: "also: humble",
                      britshText: """IpaUK: /ˈhʌmbl/""",
                      americanText: """IpaUS: /ˈhʌmbl/""",
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
کوردی: نەرم، سەرکز، سووک، چروک، بێ‌دەمار، بێ‌فیز، خاکی، خاکینە، خاکینە و خۆڵینە، خاکەڕا، بێ‌هەوا، خاک‌وخۆڵی، بێ‌دەمارانە، بێ‌پۆزانە، خاکەڕایانە،	چکۆلانە، هەژارانە، فەقیرانە، دەروێشی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە وەها بیربکەیتەوە کە وەک کەسانی دیکە گرنگ نیت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: modest"),
                    SentencesRow(
                      englishText:
                          """Be humble enough to learn from your mistakes.""",
                      kurdishText: """هێندە خاکی بە لە هەڵەکانتەوە فێر بیت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She's a loving, kind and humble woman.""",
                      kurdishText: """ژنێکی سادەی میهرەبانی خۆشەویستە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) بۆ گوتنی ئەوەی کە وەک کەسانی دیکە گرنگ نیت، بەڵام ئەوە لە دڵەوە نییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In my humble opinion, you were in the wrong.""",
                      kurdishText:
                          """بە پێی بۆچوونی سادەم، تۆ لایەنی هەڵە بوویت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My humble apologies. I did not understand.""",
                      kurdishText: """لێبوردنخوازیی سادەم. تێنەگەشتم.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) هەبوونی پلە یان پێگەی کۆمەڵایەتی نزم"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He is intensely proud of his humble background.""",
                      kurdishText: """تەواو شانازی دەکات بە بنەچە سادەکەی.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They have never disowned their humble roots.""",
                      kurdishText: "خۆیان لە بنەچە سادەکەیان بێبەری نەکردووە.",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He has built a huge business empire from humble beginnings.""",
                      kurdishText:
                          """ئیمپراتۆرییەتێکی بازرگانیی زەبەلاحی درووستکردووە لە سەرەتای سادەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) کە گەورە یان تایبەت نییە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: modest"),
                    SentencesRow(
                      englishText:
                          """Most of us have never considered the humble potato as a precious gift from nature.""",
                      kurdishText:
                          """زۆرینەمان هەرگیز پەتاتەی هەژارانەمان وەک دیارییەک لە سرووشتەوە نەدیوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You are most welcome to my humble abode.""",
                      kurdishText: "زۆر بەخێربێیت بۆ وارگە سادەکەم.",
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