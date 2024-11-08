import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamniocentesis extends StatefulWidget {
  const EnglishEntryamniocentesis({super.key});

  @override
  State<EnglishEntryamniocentesis> createState() =>
      _EnglishEntryamniocentesisState();
}

class _EnglishEntryamniocentesisState extends State<EnglishEntryamniocentesis> {
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
- Noun: amniocentesis (derived forms: amniocenteses)
1. (pregnancy) extraction by centesis of amniotic fluid from a pregnant woman (after the 15th week of pregnancy) to aid in the diagnosis of foetal abnormalities (= amnio)
""",
  );
// 188888880002200

  final String keyword = "amniocentesis";
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
    await flutterTts.speak("""amniocentesis""");
  }

  Future<void> speakamniocentesis4799(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Pregnant women over the age of 35 will be offered (an) amniocentesis.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4C96YgAFxaQ';
    const double startSecondsend = 10;
    const String videoIdone = 's6OiNYL40Mw';
    const double startSecondsone = 948;
    const String videoIdtwo = 'zlf5Q_ZILFg';
    const double startSecondstwo = 342;
    const String videoIdthree = '5PrVMoIGokM';
    const double startSecondsthree = 724;
    const String videoIdfour = 'mI0Fo9kaWqo';
    const double startSecondsfour = 1720;
    const String videoIdfive = 'sg7xe8C9DmQ';
    const double startSecondsfive = 14;
    // final String _videoId = '77ZTK6jjXN0';
    // final double _startSeconds = 118;
    // final String _videoId = 'w2pXOg0J7Wk';
    // final double _startSeconds = 2272;
    // final String _videoId = '1B17eRAQ0lM';
    // final double _startSeconds = 586;
    // final String _videoId = 'vjwiTocVFgw';
    // final double _startSeconds = 417;

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
                      word: """amniocentesis""",
                      // alsoEnglishWord: "also: amniocentesis",
                      britshText: """IpaUK: /ˌæmniəʊsenˈtiːsɪs/""",
                      americanText: """IpaUS: /ˌæmniəʊsenˈtiːsɪs/""",
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
                    const DefinitionKurdish(text: """
١. (ھاوەڵناو) ئەمنیۆسێنتێسیس؛ تاقی‌کردنەوەیەکی پزیشکی بۆ ژنانی سکپڕ، بەمەبەستی دیاریکردنی بوونی نەخۆشییەکی تایبەتی یا کێشەیەکی تەندرووستی لە ئاوەڵمەدا"""),
                    SentencesRow(
                      englishText:
                          "Pregnant women over the age of 35 will be offered (an) amniocentesis.",
                      kurdishText:
                          "ژنانی سکپڕی سەروو ٣٥ ساڵان ئەمنیۆسێنتێسیسیان بۆ دەکرێت.",
                      onPressedBritish: () => speakamniocentesis4799("en-GB"),
                      onPressedAmerican: () => speakamniocentesis4799("en-US"),
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


