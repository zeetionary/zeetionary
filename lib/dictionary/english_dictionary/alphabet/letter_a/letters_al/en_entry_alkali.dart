import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalkali extends StatefulWidget {
  const EnglishEntryalkali({super.key});

  @override
  State<EnglishEntryalkali> createState() => _EnglishEntryalkaliState();
}

class _EnglishEntryalkaliState extends State<EnglishEntryalkali> {
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
- Noun: alkali (derived forms: alkalis, alkalies)
1. Any of various water-soluble compounds capable of turning litmus blue and reacting with an acid to form a salt and water (= base)
"alkalis include oxides and hydroxides of metals and ammonia";
 
2. A mixture of soluble salts found in arid soils and some bodies of water; detrimental to agriculture
""",
  );
// 188888880002200

  final String keyword = "alkali";
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
    await flutterTts.speak("""alkali""");
  }

  Future<void> speakalkali85236(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When an acid and an alkali react together the result is a salt and water.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'FyMWRcVTGAI';
    const double startSecondsend = 309;
    const String videoIdone = '2VrsmahNcfI';
    const double startSecondsone = 369;
    const String videoIdtwo = 'UWBNcMyfiGQ';
    const double startSecondstwo = 1385;
    const String videoIdthree = 'hCrJTLdmkHo';
    const double startSecondsthree = 269;
    const String videoIdfour = 'mBxRFw9W_xs';
    const double startSecondsfour = 343;
    const String videoIdfive = 'IY5ykPd3coo';
    const double startSecondsfive = 628;
    // final String _videoId = 'OD7T5GF6b28';
    // final double _startSeconds = 118;
    // final String _videoId = 'mzCEJVtED0U';
    // final double _startSeconds = 318;
    // final String _videoId = 'GBeCmbKiY0Y';
    // final double _startSeconds = 350;

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
                      word: """alkali""",
                      // alsoEnglishWord: "also: alkali",
                      britshText: """IpaUK: /ˈælkəlaɪ/""",
                      americanText: """IpaUS: /ˈælkəlaɪ/""",
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
کوردی: ئەلکالای، ئەلکالی، تفت، قەڵیە، قەلیە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) مادەیەکی کیمیایی کە لەگەڵ ترشەڵۆک کارلێک دەکات بۆ درووستکردنی خوێ و ڕەنووسی ھایدرۆجینی بەرزتر دەبێت لە حەوت کە لە ئاودا دەتوێتەوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "When an acid and an alkali react together the result is a salt and water.",
                      kurdishText:
                          "کاتێک ترش و تفت کارلێک دەکەن خوێ و ئاو درووست دەکەن.",
                      onPressedBritish: () => speakalkali85236("en-GB"),
                      onPressedAmerican: () => speakalkali85236("en-US"),
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

