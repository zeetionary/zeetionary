import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryisolated extends StatefulWidget {
  const EnglishEntryisolated({super.key});

  @override
  State<EnglishEntryisolated> createState() => _EnglishEntryisolatedState();
}

class _EnglishEntryisolatedState extends State<EnglishEntryisolated> {
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
- Adjective: isolated
1. Not close together in time (- stray)
"isolated instances of rebellion";
 
2. Being or feeling set or kept apart from others (- detached, separated, set-apart, out on a limb)
"could not remain the isolated figure he had been";
 
3. Marked by separation of or from usually contiguous elements (- disjunct)
"little isolated worlds, as abruptly disjunct and unexpected as a palm-shaded well in the Sahara";
 
4. Cut off or left behind (- marooned, stranded)
"an isolated pawn";
 
5. Under forced isolation especially for health reasons (- quarantined)
"isolated patients";
 
6. Remote and separate physically or socially (- apart, obscure, out on a limb)
"tiny isolated villages remote from centres of civilization";
""",
  );

  final String keyword = "isolated";
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
    await flutterTts.speak("""isolated""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Few visitors come to the isolated village in winter.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I felt very isolated in my new job.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Elderly people easily become socially isolated.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The police said the attack was an isolated incident.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'UuGpm01SPcA';
    const double startSecondsend = 352;
    const String videoIdone = 'AF8d72mA41M';
    const double startSecondsone = 242;
    const String videoIdtwo = 'zqllxbPWKNI';
    const double startSecondstwo = 669;
    const String videoIdthree = 'hOUGNGWmN0k';
    const double startSecondsthree = 721;
    const String videoIdfour = '-6vzjjIrRK8';
    const double startSecondsfour = 1263;
    const String videoIdfive = '-L7o6HtX8Vg';
    const double startSecondsfive = 709;

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
                      word: """isolated""",
                      // alsoEnglishWord: "also: isolated",
                      britshText: """IpaUK: /ˈaɪsəleɪtɪd/""",
                      americanText: """IpaUS: /ˈaɪsəleɪtɪd/""",
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
کوردی: لاتەریک، گۆشەگیر، تەنیا، تاک‌وتەنیا،	چەپەک، دوورەدەس، لاپەڕ،	تاک، تاق، جیا، لێک‌جیا، دابڕاو
"""),
// With short examples define "isolated", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) کە دوورە لە هی دیکە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: remote"),
                    SentencesRow(
                      englishText:
                          """Few visitors come to the isolated village in winter.""",
                      kurdishText:
                          """ڕێژەیەکی کەم ساردانکار هەموو زستانێک دێنە گوندەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە پەیوەندی زۆری لەگەڵ خەڵکی، وڵاتان، هتد ـی دیکە نییە"""),
                    SentencesRow(
                      englishText: """I felt very isolated in my new job.""",
                      kurdishText:
                          """لە کارەکەمدا هەستی زۆرم بە دابڕاوی دەکرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Elderly people easily become socially isolated.""",
                      kurdishText:
                          """کەسانی بەتەمەن بە ئاسانی لە لایەنی کۆمەڵایەتییەوە دابڕاو دەبن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە یەک جار ڕوویداوە و پەیوەندی بە شتی دیکە نییە"""),
                    SentencesRow(
                      englishText:
                          """The police said the attack was an isolated incident.""",
                      kurdishText:
                          """پۆلیس گوتی هێرشەکە ڕووداوێکی سەربەخۆ بووە.""",
                      englishNote:
                          "This means the police believe the attack was a one-time event, unrelated to any other occurrences, and not part of a larger pattern or ongoing issue.",
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
// end isolated
