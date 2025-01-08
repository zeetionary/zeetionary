import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanthropologist extends StatefulWidget {
  const EnglishEntryanthropologist({super.key});

  @override
  State<EnglishEntryanthropologist> createState() =>
      _EnglishEntryanthropologistState();
}

class _EnglishEntryanthropologistState
    extends State<EnglishEntryanthropologist> {
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
- Noun: anthropologist (derived forms: anthropologists)
1. A social scientist who specializes in anthropology
"the anthropologist was impressed by the reconditeness of the native proverbs"
""",
  );
// 188888880002200

  final String keyword = "anthropologist";
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
    await flutterTts.speak("""anthropologist""");
  }

  Future<void> speakanthropologist857(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("An anthropologist dug and found old bones in the ground.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'P4SDBVaUboc';
    const double startSecondsend = 71;
    const String videoIdone = '6DYgImG1CKo';
    const double startSecondsone = 8;
    const String videoIdtwo = '7EQ16b7b0Eg';
    const double startSecondstwo = 12;
    const String videoIdthree = '7fbSXzLzzhg';
    const double startSecondsthree = 405;
    const String videoIdfour = 'zt1D0S-dO-c';
    const double startSecondsfour = 7;
    const String videoIdfive = '5mEu0AYpcO4';
    const double startSecondsfive = 64;
    // final String _videoId = '_Xp5rsGtR3w';
    // final double _startSeconds = 107;
    // final String _videoId = 'ybo3L_WhxCw';
    // final double _startSeconds = 1;
    // final String _videoId = 'BmUrJaOo1Lw';
    // final double _startSeconds = 199;
    // final String _videoId = 'YCnFYvL17v4';
    // final double _startSeconds = 1164;
    // final String _videoId = 'IOgq4Nk2H8w';
    // final double _startSeconds = 796;

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
                      word: """anthropologist""",
                      // alsoEnglishWord: "also: anthropologist",
                      britshText: """IpaUK: /ˌænθrəˈpɒlədʒɪst/""",
                      americanText: """IpaUS: /ˌænθrəˈpɑːlədʒɪst/""",
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
١. (ناو) کەسێک کە لێکۆڵینەوە دەکات لە مێژووی مرۆڤایەتی، بەتایبەتی سەرچاوە و گەشە و نەریت و باوەڕەکانی"""),
                    SentencesRow(
                      englishText:
                          "An anthropologist dug and found old bones in the ground.",
                      kurdishText:
                          "مرۆڤناسێک ھەڵکۆڵینی کرد و ئێسکی کۆنی دۆزییەوە لە زەوییەکەدا.",
                      onPressedBritish: () => speakanthropologist857("en-GB"),
                      onPressedAmerican: () => speakanthropologist857("en-US"),
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

// end WORD_WEB


