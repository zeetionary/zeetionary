// end affluence
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffluence extends StatefulWidget {
  const EnglishEntryaffluence({super.key});

  @override
  State<EnglishEntryaffluence> createState() => _EnglishEntryaffluenceState();
}

class _EnglishEntryaffluenceState extends State<EnglishEntryaffluence> {
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
- Noun: affluence (derived forms: affluences)
1. Abundant wealth (= richness)
"they studied forerunners of affluence or poverty";
""",
  );
// 188888880002200

  final String keyword = "affluence";
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
    await flutterTts.speak("""affluence""");
  }

  Future<void> speakafflue752(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The 1950s were an age of affluence in America.");
  }

  Future<void> speakafflue7566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The nation's affluence has made two- and even three-car families the norm.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zbgFbZmldeY';
    const double startSecondsend = 21;
    const String videoIdone = 'JSS4ITTZAwE';
    const double startSecondsone = 80;
    const String videoIdtwo = 'JsxYsqZKYSw';
    const double startSecondstwo = 308;
    const String videoIdthree = 'yGUISsEPEHY';
    const double startSecondsthree = 32;
    const String videoIdfour = 'D5STvgPM2c8';
    const double startSecondsfour = 12;
    const String videoIdfive = '4iUYNVDrrSI';
    const double startSecondsfive = 280;
    // const String videoId = '9DDjPzt6F-Y';
    // const double startSeconds = 1137;
    // const String videoId = '1DA6nQVYrsE';
    // const double startSeconds = 3444;
    // const String videoId = 'WP316ABiTt0';
    // const double startSeconds = 1258;
    // const String videoId = 'y55Pscc8L8k';
    // const double startSeconds = 591;

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
                      word: """affluence""",
                      // alsoEnglishWord: "also: affluence",
                      britshText: """IpaUK: /ˈæfluəns/""",
                      americanText: """IpaUS: /ˈæfluəns/""",
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
کوردی: ھەڵقوڵین، گوڕبوون، فرەیی، زۆری، زەبەندی، سامان، ماڵی دنیا، دەوڵەت، ناز و نێعمەت، خۆشی (و بەھرە)
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) بوونی پارەی زۆر و گوزەرانی باش" ""),
                    SentencesRow(
                      englishText:
                          "The 1950s were an age of affluence in America.",
                      kurdishText:
                          "ساڵانی ١٩٥٠ یەکان سەردەمی زۆر و زەبەندی بوو لە ئەمریکا.",
                      onPressedBritish: () => speakafflue752("en-GB"),
                      onPressedAmerican: () => speakafflue752("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The nation's affluence has made two- and even three-car families the norm.",
                      kurdishText:
                          "دەوڵەمەندی وڵاتەکە وایکردووە بوونی دوو و سێ ئۆتۆمبێل لە خێزانێکدا شتێکی ئاسایی بێت.",
                      onPressedBritish: () => speakafflue7566("en-GB"),
                      onPressedAmerican: () => speakafflue7566("en-US"),
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
