import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantiperspirant extends StatefulWidget {
  const EnglishEntryantiperspirant({super.key});

  @override
  State<EnglishEntryantiperspirant> createState() =>
      _EnglishEntryantiperspirantState();
}

class _EnglishEntryantiperspirantState
    extends State<EnglishEntryantiperspirant> {
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
- Noun: antiperspirant (derived forms: antiperspirants)
1. An astringent substance applied to the skin to reduce perspiration
""",
  );
// 188888880002200

  final String keyword = "antiperspirant";
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
    await flutterTts.speak("""antiperspirant""");
  }

  Future<void> speakantiperspirant1117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Antiperspirant can make you more comfortable on hot days.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zvmJEj7pIv0';
    const double startSecondsend = 1;
    const String videoIdone = 'lgLNVTfRboE';
    const double startSecondsone = 1;
    const String videoIdtwo = 'd-97pEeP0LY';
    const double startSecondstwo = 390;
    const String videoIdthree = 'p8_2lObaed4';
    const double startSecondsthree = 763;
    const String videoIdfour = 'G8UELR5KWk8';
    const double startSecondsfour = 46;
    const String videoIdfive = '4YSi_Jt8blM';
    const double startSecondsfive = 296;
    // final String _videoId = 'lEnrCyQvm-c';
    // final double _startSeconds = 152;
    // final String _videoId = 'fOUsR065was';
    // final double _startSeconds = 486;
    // final String _videoId = 'aHg_YRuROtQ';
    // final double _startSeconds = 28;
    // final String _videoId = 'rta8m_DRI7o';
    // final double _startSeconds = 175;

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
                      word: """antiperspirant""",
                      // alsoEnglishWord: "also: antiperspirant",
                      britshText: """IpaUK: /ˌæntiˈpɜːspərənt/""",
                      americanText:
                          """IpaUS: /ˌæntiˈpɜːrspərənt/, /ˌæntaɪˈpɜːrspərənt/""",
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
کوردی: (دەرمانی) بۆن‌بەر، دژەئارەق، نەھێڵەئارەق
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) مادەیەک کە بەکاردێت دژ بە ئارەق، بەتایبەتی لەژێر باڵ"
                            ""),
                    SentencesRow(
                      englishText:
                          "Antiperspirant can make you more comfortable on hot days.",
                      kurdishText:
                          "لە ڕۆژانی گەرمدا دژە-بۆن دەکرێت وابکات زیاتر ئاسوودە بیت.",
                      onPressedBritish: () => speakantiperspirant1117("en-GB"),
                      onPressedAmerican: () => speakantiperspirant1117("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
