// end affiliation
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffiliation extends StatefulWidget {
  const EnglishEntryaffiliation({super.key});

  @override
  State<EnglishEntryaffiliation> createState() =>
      _EnglishEntryaffiliationState();
}

class _EnglishEntryaffiliationState extends State<EnglishEntryaffiliation> {
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
- Noun: affiliation (derived forms: affiliations)
1. A social or business relationship (= association, tie, tie-up)
"a valuable financial affiliation";
 
2. The act of becoming formally connected or joined
"welcomed the affiliation of the research centre with the university"
""",
  );
// 188888880002200

  final String keyword = "affiliation";
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
    await flutterTts.speak("""affiliation""");
  }

  Future<void> speakaffili628(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The group has affiliations with several organizations abroad.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ylmaqi2G4v8';
    const double startSecondsend = 34;
    const String videoIdone = 'OwU56wxEw48';
    const double startSecondsone = 35;
    const String videoIdtwo = 'UoSSCUMk-7I';
    const double startSecondstwo = 141;
    const String videoIdthree = 'scCf26FfQ5E';
    const double startSecondsthree = 633;
    const String videoIdfour = '3C9wZf88y4Q';
    const double startSecondsfour = 549;
    const String videoIdfive = 'IDj1OBG5Tpw';
    const double startSecondsfive = 86;
    // const String videoId = 'pgjcfnxiWmE';
    // const double startSeconds = 125;
    // const String videoId = 'lBBj-K_qfIw';
    // const double startSeconds = 336;
    // const String videoId = 'm3nxiiViuwE';
    // const double startSeconds = 55;
    // const String videoId = 'fTtEYzQYilU';
    // const double startSeconds = 256;

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
                      word: """affiliation""",
                      // alsoEnglishWord: "also: affiliation",
                      britshText: """IpaUK: /əˌfɪliˈeɪʃn/""",
                      americanText: """IpaUS: /əˌfɪliˈeɪʃn/""",
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
کوردی: (پێوە)بەستراوی، پێوەستایەتی، پێوەبەندی، سەربەدی‌یەتی، پشت‌پێ‌بەستوویی، پاشکۆیی، پێوەبەندایەتی، دیبەندایەتی، ئەندامێتی
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) پەیوەندی لەگەڵ پارتێک یان ڕێکخراوێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "The group has affiliations with several organizations abroad.",
                      kurdishText:
                          "گرووپەکە پەیوەندی ھەیە لەگەڵ ژمارەیەک ڕێکخراوی بیانی.",
                      onPressedBritish: () => speakaffili628("en-GB"),
                      onPressedAmerican: () => speakaffili628("en-US"),
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