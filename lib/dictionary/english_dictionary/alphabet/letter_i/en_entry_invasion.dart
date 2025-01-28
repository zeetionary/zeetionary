import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinvasion extends StatefulWidget {
  const EnglishEntryinvasion({super.key});

  @override
  State<EnglishEntryinvasion> createState() => _EnglishEntryinvasionState();
}

class _EnglishEntryinvasionState extends State<EnglishEntryinvasion> {
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
- Noun: invasion (Derived forms: invasions)
1. The act of invading; the act of an army that invades for conquest or plunder
 
2. Any entry into an area not previously occupied (- encroachment, intrusion)
"an invasion of locusts";
 
3. (pathology) the spread of pathogenic microorganisms or malignant cells to new sites in the body
"the tumour's invasion of surrounding structures"
""",
  );

  final String keyword = "invasion";
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
    await flutterTts.speak("""invasion""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Latest reports are of a full-scale military invasion.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The UN resolution condemned the invasion of the country.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Farmers are struggling to cope with an invasion of slugs.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The singer described the photographs of her as an invasion of privacy.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'NZ74oFctP_g';
    const double startSecondsend = 67;
    const String videoIdone = 'zqllxbPWKNI';
    const double startSecondsone = 1270;
    const String videoIdtwo = 'pFmtmO2cnlg';
    const double startSecondstwo = 47;
    const String videoIdthree = 'Xzv84ZdtlE0';
    const double startSecondsthree = 1799;
    const String videoIdfour = 'IgF3OX8nT0w';
    const double startSecondsfour = 630;
    const String videoIdfive = 'FQ4hvLqNfqo';
    const double startSecondsfive = 80;

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
                      word: """invasion""",
                      // alsoEnglishWord: "also: invasion",
                      britshText: """IpaUK: /ɪnˈveɪʒn/""",
                      americanText: """IpaUS: /ɪnˈveɪʒn/""",
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
کوردی: هێرش، پەلامار، دەس‌درێژی، داگیرکەری، تاڵان، ڕاوڕووت،	دەرکەوتن، تەنینەوە، داکەوتن،	شکاندن، بەزاندن، پێشێل‌کردن، سەرپێچی، قانوون‌بەزێنی
"""),
// With short examples define "invasion", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەوەی وڵاتێک بڕواتە وڵاتێکی دیکە و بە هێز کۆنترۆڵی بکات"""),
                    SentencesRow(
                      englishText:
                          """Latest reports are of a full-scale military invasion.""",
                      kurdishText:
                          """کۆتا ڕاپۆرتەکان باس لە داگیرکردنێکی تەواوی سەربازی دەکەن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The UN resolution condemned the invasion of the country.""",
                      kurdishText:
                          """بڕیارنامەی نەتەوە یەکگرتووەکان سەرکۆنەی داگیرکاریی ولاتەکەی کرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەوەی کە ڕێژەیەکی زۆر خەڵک بچنە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """Farmers are struggling to cope with an invasion of slugs.""",
                      kurdishText:
                          """جوتیاران تەقەڵایانە لەگەڵ مامەڵەکردن لەگەڵ لێشاوی شەیتانۆکەکان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شتێک کە کاریگەریی خراپی دەبێت لەسەر کەسێک/شتێک بە شێوەیەکی خراپ"""),
                    SentencesRow(
                      englishText:
                          """The singer described the photographs of her as an invasion of privacy.""",
                      kurdishText:
                          """گۆرانیبێژەکە وێنەکانی بە دەستدرێژی بۆ سەر ژیانی کەسیی باسکرد.""",
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
// end invasion