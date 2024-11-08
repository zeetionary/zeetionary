import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffiliate extends StatefulWidget {
  const EnglishEntryaffiliate({super.key});

  @override
  State<EnglishEntryaffiliate> createState() => _EnglishEntryaffiliateState();
}

class _EnglishEntryaffiliateState extends State<EnglishEntryaffiliate> {
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
- Noun: affiliate (derived forms: affiliates)
1. A subordinate or subsidiary associate; a person who is affiliated with another or with an organization
 
2. A subsidiary or subordinate organization that is affiliated with another organization
"network affiliates"

- Verb: affiliate (derived forms: affiliating, affiliates, affiliated)
1. Keep company with; hang out with (= consort, associate, assort)
"She affiliates with her colleagues";

2. Join in an affiliation
"The two colleges affiliated"; "They affiliated with a national group"
""",
  );
// 188888880002200

  final String keyword = "affiliate";
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
    await flutterTts.speak("""affiliate""");
  }

  Future<void> speakaffil3588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The group is not affiliated to any political party.");
  }

  Future<void> speakaffi2699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The hospital is affiliated with the local university.");
  }

  Future<void> speakaffi25699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our college is an affiliate of the university.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'TLM94DnKkQo';
    const double startSecondsend = 79;
    const String videoIdone = 'mOWXI6VKGpg';
    const double startSecondsone = 22;
    const String videoIdtwo = 'yVQneGsDOlc';
    const double startSecondstwo = 126;
    const String videoIdthree = '0_UB1KaBIP8';
    const double startSecondsthree = 21;
    const String videoIdfour = 'cqidD7kVnxY';
    const double startSecondsfour = 1396;
    const String videoIdfive = 'cY4e0uvp7uI';
    const double startSecondsfive = 44;
    // const String videoId = 'oL0umpPPe-8';
    // const double startSeconds = 526;
    // const String videoId = '2ta77xmA7D4';
    // const double startSeconds = 38;
    // const String videoId = 'HkOUCgi4WSM';
    // const double startSeconds = 615;
    // const String videoId = '99NA0m6FZRA';
    // const double startSeconds = 1255;

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
                      word: """affiliate""",
                      // alsoEnglishWord: "also: affiliate",
                      britshText: """IpaUK: /əˈfɪlieɪt/""",
                      americanText: """IpaUS: /əˈfɪlieɪt/""",
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
کوردی: کۆمپانی، ناوکۆیی، دامەزراوە یان ڕێکخراوی پشت‌بەستوو، ڕێکخراوی پاشکۆ، ئەندامی ناسەربەخۆ یان پشت‌بەستوو، پێوەبەند، پاشکۆ، پشت‌پێ‌بەستوو، خۆبەستە، ناسەربەخۆ، سەربەدی، (پێوە)بەستراو
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (کردار) گرێدراو بە شتێکەوە، بوون بە بەشێک لە شتێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "The group is not affiliated to any political party.",
                      kurdishText:
                          "گرووپەکە گرێدراو نییە بە ھیچ پارتێکی سیاسییەوە.",
                      onPressedBritish: () => speakaffil3588("en-GB"),
                      onPressedAmerican: () => speakaffil3588("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The hospital is affiliated with the university.",
                      kurdishText: "نەخۆشخانەکە گرێدراو نییە بە زانکۆکەوە.",
                      onPressedBritish: () => speakaffi2699("en-GB"),
                      onPressedAmerican: () => speakaffi2699("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کۆمپانیایەک یان دامەزراوەیەک کە بەشێکە لە یەکێکی گەورەتر"""),
                    SentencesRow(
                      englishText:
                          "Our college is an affiliate of the university.",
                      kurdishText: "کۆلێژەکەمان بەشێکە لە زانکۆکە.",
                      onPressedBritish: () => speakaffi25699("en-GB"),
                      onPressedAmerican: () => speakaffi25699("en-US"),
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
