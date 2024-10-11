import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintelligence extends StatefulWidget {
  const EnglishEntryintelligence({super.key});

  @override
  State<EnglishEntryintelligence> createState() =>
      _EnglishEntryintelligenceState();
}

class _EnglishEntryintelligenceState extends State<EnglishEntryintelligence> {
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
- Noun: intelligence (Derived forms: intelligences)
1. The ability to comprehend; to understand and profit from experience
 
2. A unit responsible for gathering and interpreting information about an enemy (- intelligence service, intelligence agency)
 
3. Secret information about an enemy (or potential enemy) (- intelligence information)
"we sent out planes to gather intelligence on their radar coverage";
 
4. Information about recent and important events (- news, tidings, word, intel [informal])
"they awaited intelligence of the outcome";
 
5. The operation of gathering information about an enemy (- intelligence activity, intelligence operation)
""",
  );

  final String keyword = "intelligence";
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
    await flutterTts.speak("""intelligence""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He didn't even have the intelligence to call for an ambulance.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """As a director, he tends to underestimate the intelligence of his audience.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Please don't insult my intelligence by lying to me.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""At least she had the intelligence to turn off the gas.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Is it really possible to measure intelligence?""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They hope to gather more intelligence on any further plots.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We've obtained secret intelligence about enemy plans.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government had intelligence from several different sources.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'TRGHIN2PGIA';
    const double startSecondsend = 942;
    const String videoIdone = 'Js2UoMSumx4';
    const double startSecondsone = 3;
    const String videoIdtwo = 'GVsUOuSjvcg';
    const double startSecondstwo = 216;
    const String videoIdthree = 'IgF3OX8nT0w';
    const double startSecondsthree = 1142;
    const String videoIdfour = 'LWh8-2SJeLk';
    const double startSecondsfour = 18;
    const String videoIdfive = '-UrdExQW0cs';
    const double startSecondsfive = 31;

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
                      word: """intelligence""",
                      // alsoEnglishWord: "also: intelligence",
                      britshText: """IpaUK: /ɪnˈtelɪdʒəns/""",
                      americanText: """IpaUS: /ɪnˈtelɪdʒəns/""",
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
کوردی: هۆش، زەین، توانایی تێگەیشتن، توانایی هۆشی یان مێنتاڵ، تێگەیشتن، زیرەکی، ئەقڵ، ژیری، ئاوەز،	هەواڵ، نووچە،	ئاگاداری، ئاگایی، زانیاری، هەواڵ‌گری، بەڕێوەبەرایەتی هەواڵ‌گری، دەزگای سیخوڕی
"""),
// With short examples define "intelligence", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) توانای فێربوون، تێگەشتن، و بیرکردنەوە بە شێوەیەکی لۆژیکی؛ توانای کردنی ئەمە بە باشی"""),
                    SentencesRow(
                      englishText:
                          """He didn't even have the intelligence to call for an ambulance.""",
                      kurdishText:
                          """تەنانەت ئەو ئەقڵەی نەبوو کە پەیوەندی بە ئەمبوولانسەوە بکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As a director, he tends to underestimate the intelligence of his audience.""",
                      kurdishText:
                          """وەک دەرهێنەر مەیلی ئەوەی هەیە کە زیرەکی بینەرانی بە کەم ببینێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Please don't insult my intelligence by lying to me.""",
                      kurdishText:
                          """تکایە ئەقڵم بە کەم مەبینە بەوەی درۆم لەگەڵ بکەیت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """At least she had the intelligence to turn off the gas.""",
                      kurdishText:
                          """هیچ نەبێت ئەقڵی ئەوەی هەبوو کە گازەکە بکوژێنێتەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Is it really possible to measure intelligence?""",
                      kurdishText: """بە ڕاستی ئەکرێت هۆشمەندی بپێورێت؟""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) زانیاریی نهێنی کە کۆدەکرێتەوە، بۆ نموونە لەسەر وڵاتێک یان دوژمن؛ ئەو کەسانەی ئەم کارە دەکەن"""),
                    SentencesRow(
                      englishText:
                          """They hope to gather more intelligence on any further plots.""",
                      kurdishText:
                          """بەهیوان هەواڵگری دیکە لەسەر پلانی دیکە کۆبکەنەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We've obtained secret intelligence about enemy plans.""",
                      kurdishText:
                          """هەواڵگری نهێنیمان کۆکردووەتەوە سەبارەت بە پلانەکانی دوژمن.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government had intelligence from several different sources.""",
                      kurdishText:
                          """حکومەت هەواڵگری لە ژمارەیەک سەرچاوەوە هەبوو.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    // add_more_sentences
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
// end intelligence