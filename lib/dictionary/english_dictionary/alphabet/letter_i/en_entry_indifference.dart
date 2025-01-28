import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindifference extends StatefulWidget {
  const EnglishEntryindifference({super.key});

  @override
  State<EnglishEntryindifference> createState() =>
      _EnglishEntryindifferenceState();
}

class _EnglishEntryindifferenceState extends State<EnglishEntryindifference> {
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
- Noun: indifference (Derived forms: indifferences)
1. Unbiased impartial unconcern
 
2. Apathy demonstrated by an absence of emotional reactions (- emotionlessness, impassivity, impassiveness, phlegm, stolidity, unemotionality)
 
3. The trait of lacking enthusiasm for or interest in things generally (- apathy, numbness, spiritlessness)
 
4. The trait of remaining calm and seeming not to care; a casual lack of concern (- nonchalance, unconcern)
""",
  );

  final String keyword = "indifference";
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
    await flutterTts.speak("""indifference""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""What she said is a matter of complete indifference to me.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their father treated them with indifference.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Ellis spoke with a casual indifference.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This cannot be regarded as a matter of indifference.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Fans were frustrated by the indifference of the midfield players.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '87y1_IbJRZE';
    const double startSecondsend = 385;
    const String videoIdone = 'd1eaQrxA6ZE';
    const double startSecondsone = 349;
    const String videoIdtwo = 'gTCYcpdq6Eg';
    const double startSecondstwo = 207;
    const String videoIdthree = 'mviTS_cIWXg';
    const double startSecondsthree = 287;
    const String videoIdfour = 'HBhXvLlB-kY';
    const double startSecondsfour = 5079;
    const String videoIdfive = '7QCYDzsQ_yM';
    const double startSecondsfive = 3;

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
                      word: """indifference""",
                      // alsoEnglishWord: "also: indifference",
                      britshText: """IpaUK: /ɪnˈdɪfrəns/""",
                      americanText: """IpaUS: /ɪnˈdɪfrəns/""",
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
// With short examples define "indifference", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەمی حەز و هەست و سۆز بەرامبەر بە کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """What she said is a matter of complete indifference to me.""",
                      kurdishText:
                          """ئەوەی گوتی بابەتی تەواو بێ‌دەربەستی بوو لام.""",
                      englishNote:
                          """This means that what she said does not affect or concern me at all. The phrase "complete indifference" suggests a total lack of interest, care, or emotional response to her words.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Their father treated them with indifference.""",
                      kurdishText:
                          """باوکیان بە بێ‌دەربەستی مامەڵەی لەگەڵ دەکردن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Ellis spoke with a casual indifference.""",
                      kurdishText:
                          """ئێلیس بە بێ‌دەربەستی تەواوە قسەی دەکرد.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ناو) کەمی گرنگی"""),
                    SentencesRow(
                      englishText:
                          """This cannot be regarded as a matter of indifference.""",
                      kurdishText:
                          """ئەمە ناکرێت بە بابەتێکی لاوەکی سەیر بکرێت.""",
                      englishNote:
                          """This means that the issue is important and cannot be ignored or treated with a lack of concern. The phrase "a matter of indifference" implies that it’s something that could be disregarded, but here, it emphasizes that this is not the case and it requires attention.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەوەی کە ئاسایی بێت یان زۆر باش نەبێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: mediocrity"),
                    SentencesRow(
                      englishText:
                          """Fans were frustrated by the indifference of the midfield players.""",
                      kurdishText:
                          """هەواداران بێزار بوون لە ئاستی مام‌ناوەندی یاریزانە ناوەڕاستەکان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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
