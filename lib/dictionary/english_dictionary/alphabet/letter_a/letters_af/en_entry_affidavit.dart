// end affidavit
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffidavit extends StatefulWidget {
  const EnglishEntryaffidavit({super.key});

  @override
  State<EnglishEntryaffidavit> createState() => _EnglishEntryaffidavitState();
}

class _EnglishEntryaffidavitState extends State<EnglishEntryaffidavit> {
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
IpaUK
EnglishEntryaffidavit affidavit
- Noun: affidavit (derived forms: affidavits)
1. (law) written declaration made under oath; a written statement sworn to be true before someone legally authorized to administer an oath
""",
  );

  final String keyword = "affidavit";
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
    await flutterTts.speak("""affidavit""");
  }

  Future<void> speakaffi359(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He admitted he was one of a number of people stealing from the company, according to the affidavit filed by the shown to court.");
  }

  @override
  Widget build(BuildContext context) {
// 188888880002200

    const String videoIdend = '63tQ7yGmsmI';
    const double startSecondsend = 1341;
    const String videoIdone = '2azPQVnkLTA';
    const double startSecondsone = 78;
    const String videoIdtwo = 'XlkVRy_YNg0';
    const double startSecondstwo = 13;
    const String videoIdthree = '5J_QaTA0_jw';
    const double startSecondsthree = 105;
    const String videoIdfour = 'uBVCUSkoBIM';
    const double startSecondsfour = 21;
    const String videoIdfive = 'iZVyJn6nynQ';
    const double startSecondsfive = 35;
    // const String videoId = 'zhWWcWtAUoY';
    // const double startSeconds = 2366;
    // const String videoId = 'ill2cgCyTUc';
    // const double startSeconds = 416;

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
                      word: """affidavit""",
                      // alsoEnglishWord: "also: affidavit",
                      britshText: """IpaUK: haʊʊʊʊʊʊʊ4""",
                      americanText: """IpaUS: haʊʊʊʊʊʊʊ4""",
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
کوردی: سوێندنامە، نامەی سوێند (وەک بەڵگەیێ لە دادگا)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) پارچە نووسراوێک کە سوێند دەخۆیت ڕاستە و لە دادگا دەکرێت وەک بەڵگە بەکاربێت"
                            ""),
                    SentencesRow(
                      englishText:
                          "He admitted he was one of a number of people stealing from the company, according to the affidavit filed by the shown to court.",
                      kurdishText:
                          "دانیپێدانا کە ئەو یەکێکە لەو کەسانەی دزی لە کۆمپانیاکە کردووە بەپێی ئەو سوێندنامەی بە دادگا پیشان درا.",
                      onPressedBritish: () => speakaffi359("en-GB"),
                      onPressedAmerican: () => speakaffi359("en-US"),
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
