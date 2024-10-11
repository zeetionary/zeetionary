import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinfinite extends StatefulWidget {
  const EnglishEntryinfinite({super.key});

  @override
  State<EnglishEntryinfinite> createState() => _EnglishEntryinfiniteState();
}

class _EnglishEntryinfiniteState extends State<EnglishEntryinfinite> {
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
- Adjective: infinite
1. Having no limits or boundaries in time or space or extent or magnitude
"the infinite ingenuity of man"; "infinite wealth"
 
2. (of verbs) not having tense, person, or number (as a participle or gerund or infinitive) (- non-finite, nonfinite)
"infinite verb form";
 
3. Too numerous to be counted (- countless, innumerable, innumerous, multitudinous, myriad, numberless, uncounted, unnumberable, unnumbered, unnumerable)
"an infinite number of reasons";
 
4. Total and all-embracing
"God's infinite wisdom"
 
5. (mathematics) denotes a quantity or set larger than any finite number (- transfinite)

- Noun: infinite (Derived forms: infinites)
1. The unlimited expanse in which everything is located (- space)
"the boundless regions of the infinite";
""",
  );

  final String keyword = "infinite";
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
    await flutterTts.speak("""infinite""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She explained the same thing again with infinite patience.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The infinite distances of space are too great for the human mind to comprehend.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He argued that all matter was infinitely divisible.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'wJa5Ch0O4BI';
    const double startSecondsend = 273;
    const String videoIdone = 'QcUey-DVYjk';
    const double startSecondsone = 2113;
    const String videoIdtwo = 'SwQhKFMxmDY';
    const double startSecondstwo = 3676;
    const String videoIdthree = 'DxL2HoqLbyA';
    const double startSecondsthree = 499;
    const String videoIdfour = 'YrMGIqecu0Y';
    const double startSecondsfour = 576;
    const String videoIdfive = 'dtp6b76pMak';
    const double startSecondsfive = 347;

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
                      word: """infinite""",
                      // alsoEnglishWord: "also: infinite",
                      britshText: """IpaUK: /ˈɪnfɪnət/""",
                      americanText: """IpaUS: /ˈɪnfɪnət/""",
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
کوردی: بێ‌دوایی، بێ‌کۆتایی، دیاری‌نەکراو، بێ‌سنوور، بێ‌بن، بێ‌دووماهی، لە ڕادەبەدەر، بێ‌ئەژمار، لە ئەندازبەدەر، بێ‌ڕادە
"""),
// With short examples define "infinite", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) زۆر گەور ەکە سەختە بۆ پێوانە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: boundless"),
                    SentencesRow(
                      englishText:
                          """She explained the same thing again with infinite patience.""",
                      kurdishText:
                          """هەمان شتی دووبارە ڕوونکردەوە بە هەمان پشوودرێژی.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The infinite distances of space are too great for the human mind to comprehend.""",
                      kurdishText:
                          "مەودا بێ‌کۆتاکانی ئاسمان زۆر گەورەترن لەوەی مێشکی مرۆڤ لێی تێ بگات.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He argued that all matter was infinitely divisible.""",
                      kurdishText:
                          "مشتومڕی ئەوەی دەکرد کە ھەموو مادەیەک بێکۆتا لەدابەش‌ھاتووە.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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