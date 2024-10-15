import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinvolve extends StatefulWidget {
  const EnglishEntryinvolve({super.key});

  @override
  State<EnglishEntryinvolve> createState() => _EnglishEntryinvolveState();
}

class _EnglishEntryinvolveState extends State<EnglishEntryinvolve> {
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
- Verb: involve (Derived forms: involved, involves, involving)
1. Connect closely and often incriminatingly (- affect, regard)
"This new ruling involves your business";
 
2. Engage as a participant
"Don't involve me in your family affairs!"
 
3. Have as a necessary feature (- imply)
"This decision involves many changes";
 
4. Must previously have happened or existed, happen or be in place during (in order for stated thing to be happening or be the case) (- necessitate, ask, postulate, need, require, take, call for, demand)
"This job involves a lot of patience and skill";
 
5. Contain as a part
"Dinner at Joe's always involves at least six courses"
 
6. Occupy or engage the interest of
"His story completely involved me during the entire afternoon"
 
7. Make complex, intricate or complicated
"The situation was rather involved"
""",
  );

  final String keyword = "involve";
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
    await flutterTts.speak("""involve""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Any investment involves an element of risk.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The test will involve answering questions about a photograph.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The job involves me travelling all over the country.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Many of the crimes involved drugs.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The measures to improve the health service will involve an increase in government spending.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There was a serious incident involving a group of youths.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We want to involve as many people as possible in the celebrations.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Parents should involve themselves in their child's education.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His confession involved a number of other politicians in the affair.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'bhRCzudj3rA';
    const double startSecondsend = 193;
    const String videoIdone = 'J-K5OjAkiEA';
    const double startSecondsone = 38;
    const String videoIdtwo = 'b4wRdoWpw0w';
    const double startSecondstwo = 675;
    const String videoIdthree = 'bV9f3DE4LlM';
    const double startSecondsthree = 112;
    const String videoIdfour = 'G3pJOg1MJuo';
    const double startSecondsfour = 274;
    const String videoIdfive = '7eM7pb5M5DU';
    const double startSecondsfive = 564;

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
                      word: """involve""",
                      // alsoEnglishWord: "also: involve",
                      britshText: """IpaUK: /ɪnˈvɒlv/""",
                      americanText: """IpaUS: /ɪnˈvɑːlv/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "involve", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) کە دۆخێک، بۆنەیەک، یان چالاکییەک شتێک لەخۆ بگرێت، ئەو شتە بەشێکی گرنگ، پێویست، یان ئەنجامەکەیەتی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: entail"),
                    SentencesRow(
                      englishText:
                          """Any investment involves an element of risk.""",
                      kurdishText:
                          """هەر وەبەرهێنانێک کەمێک لە مەترسی لەخۆ دەگرێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The test will involve answering questions about a photograph.""",
                      kurdishText:
                          """تاقیکردنەوەکە وەڵامدانەوەی پرسیار لەخۆ دەگرێت لەسەر وێنەیەک.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The job involves me travelling all over the country.""",
                      kurdishText:
                          """کارەکە ئەوە لەخۆ دەگرێت کە بە هەموو جیهاندا گەشت بکەم.""",
                      englishNote:
                          """(formal) The job involves my travelling all over the country.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Many of the crimes involved drugs.""",
                      kurdishText: """زۆر تاوان مادەی هۆشبەر لەخۆ دەگرن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The measures to improve the health service will involve an increase in government spending.""",
                      kurdishText:
                          """ڕێکارەکانی باشترکردنی کەرتی تەندرووستی زیادبوونی خەرجی حکومەت لەخۆ دەگرێت.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) کە دۆخێک، بۆنەیەک، یان چالاکییەک ک/شت لەخۆ بگرێت، ئەوا بەژداری تێدا دەکەن یان کاریگەر دەبن پێی"""),
                    SentencesRow(
                      englishText:
                          """There was a serious incident involving a group of youths.""",
                      kurdishText:
                          """ڕووداوێکی توند هەبوو کە ژمارەیەک گەنجی تێدا بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) واکردنی ئەوەی کەسێک بەژداری لە شتێک بکات"""),
                    SentencesRow(
                      englishText:
                          """We want to involve as many people as possible in the celebrations.""",
                      kurdishText:
                          """دەمانەوێت چەندە بکرێت خەڵکی زۆر لە ئاهەنگگێڕانەکان لەخۆ بگرین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Parents should involve themselves in their child's education.""",
                      kurdishText:
                          """دایبابان دەبێت بەژداری بە خۆیان بکەن لە خوێندنی منداڵەکەیان.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) گوتن یان کردنی شتێک بۆ گوتنی ئەوەی کەسێک بەژدار بوو لە شتێک، بە تایبەتی تاوانێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: implicate"),
                    SentencesRow(
                      englishText:
                          """His confession involved a number of other politicians in the affair.""",
                      kurdishText:
                          """دانپێدانانەکەی ژمارەیەک بەرپرسی دیکەی تێوەگلاند لە بابەتەکە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
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
// end involve
