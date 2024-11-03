// end airy
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairy extends StatefulWidget {
  const EnglishEntryairy({super.key});

  @override
  State<EnglishEntryairy> createState() => _EnglishEntryairyState();
}

class _EnglishEntryairyState extends State<EnglishEntryairy> {
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
- Adjective: airy (derived forms: airiest, airier)
1. Open to or abounding in fresh air (= aired)
"airy rooms";
 
2. Not practical or realizable; speculative (= impractical, visionary, Laputan, windy)
"airy theories about socioeconomic improvement";
 
3. Having little or no perceptible weight; so light as to resemble air
"airy gauze curtains"
 
4. Characterized by lightness and insubstantiality; as impalpable or intangible as air (= aeriform, aerial, aery, ethereal, etherial)
"an airy apparition";
""",
  );
// 188888880002200

  final String keyword = "airy";
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
    await flutterTts.speak("""airy""");
  }

  Future<void> speakairy7352(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The office was light and airy.");
  }

  Future<void> speakairy748(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He dismissed her with an airy wave.");
  }

  Future<void> speakairy4255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The airy promises proved empty in practical implementation.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '5aeilMGWApY';
    const double startSecondsend = 1;
    const String videoIdone = 'bqEOzS3O7uc';
    const double startSecondsone = 11;
    const String videoIdtwo = 'csgssP_Yffs';
    const double startSecondstwo = 1;
    const String videoIdthree = 'C0qtkNx-yPU';
    const double startSecondsthree = 60;
    const String videoIdfour = 'qaj4u42XZLg';
    const double startSecondsfour = 39;
    const String videoIdfive = 'rEdl2Uetpvo';
    const double startSecondsfive = 84;
    // final String _videoId = 'CS634d_ZbVI';
    // final double _startSeconds = 1458;
    // final String _videoId = '3gt6cHooI6M';
    // final double _startSeconds = 493;
    // final String _videoId = 'NWGVFi-213w';
    // final double _startSeconds = 178;
    // final String _videoId = 'pH_zsbN5N5U';
    // final double _startSeconds = 393;

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
                      word: """airy""",
                      // alsoEnglishWord: "also: airy",
                      britshText: """IpaUK: /ˈeəri/""",
                      americanText: """IpaUS: /ˈeri/""",
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
کوردی: ھەوایی، سەربە کەش یان ئەتمۆسفێر، کراو لە حەوادا، حەوایی، ھەوایی، ھەواخۆش، ناکرداریی، دەستکرد، ناڕاستەقینە، خەیاڵی، ئالۆری، بێ‌خەم، کەمتەرخەم، نادەربەست، بێ‌خەیاڵ، نابەڕاست، سەرسەرەکی، درۆ، ھیچ، فشە، پڕوپووچ، خەیاڵی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) شوێنێک کە جەنجاڵی کەمە و ھەوای پاکی زۆرە"
                            ""),
                    SentencesRow(
                      englishText: "The office was light and airy.",
                      kurdishText: "ئۆفیسەکە ڕۆشن و ھەواخۆش بوو.",
                      onPressedBritish: () => speakairy7352("en-GB"),
                      onPressedAmerican: () => speakairy7352("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ڕەفتارکردن یان کردنی شتێک بە شێوەیەک کە گرنگ نەبێ لات"""),
                    SentencesRow(
                      englishText: "He dismissed her with an airy wave.",
                      kurdishText: "ماڵئاوایی لێ‌کرد بە دەستڕاوەشاندنێکی سادە.",
                      onPressedBritish: () => speakairy748("en-GB"),
                      onPressedAmerican: () => speakairy748("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) شتێک کە بە جدی نییە"""),
                    SentencesRow(
                      englishText:
                          "The airy promises proved empty in practical implementation.",
                      kurdishText:
                          "بەڵێنە دەستکردەکانی پڕووپووچ بوون لە جێبەجێکردنی کرداریدا.",
                      onPressedBritish: () => speakairy4255("en-GB"),
                      onPressedAmerican: () => speakairy4255("en-US"),
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


