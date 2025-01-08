import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantarcticcircle extends StatefulWidget {
  const EnglishEntryantarcticcircle({super.key});

  @override
  State<EnglishEntryantarcticcircle> createState() =>
      _EnglishEntryantarcticcircleState();
}

class _EnglishEntryantarcticcircleState
    extends State<EnglishEntryantarcticcircle> {
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
- Noun: Antarctic Circle
1. A line of latitude north of the south pole
""",
  );
// 188888880002200

  final String keyword = "Antarctic Circle";
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
    await flutterTts.speak("""Antarctic Circle""");
  }

  Future<void> speakantarcticcircle156(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Penguins live near the Antarctic Circle where it's very cold.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'uFg9Z368uS8';
    const double startSecondsend = 1;
    const String videoIdone = 'HF9zRqlN4T0';
    const double startSecondsone = 348;
    const String videoIdtwo = 'BLKD2Wf8_wk';
    const double startSecondstwo = 512;
    const String videoIdthree = '9yQEOSFfzI8';
    const double startSecondsthree = 775;
    const String videoIdfour = 'cX80uBHFHSo';
    const double startSecondsfour = 616;
    const String videoIdfive = 'k4iqIA6w6iM';
    const double startSecondsfive = 596;
    // final String _videoId = 'KVUJkcy5dq8';
    // final double _startSeconds = 698;
    // final String _videoId = 'ljjLV-5Sa98';
    // final double _startSeconds = 492;
    // final String _videoId = 'VBuvkktZoYE';
    // final double _startSeconds = 110;
    // final String _videoId = 'Z9Q6mhCJEqM';
    // final double _startSeconds = 130;

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
                      word: """Antarctic Circle""",
                      // alsoEnglishWord: "also: Antarctic Circle",
                      britshText: """IpaUK: /ði ænˌtɑːktɪk ˈsɜːkl/""",
                      americanText: """IpaUS: /ði ænˌtɑːrktɪk ˈsɜːrkl/""",
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
کوردی: خولگەی جەمسەری باشووری، سووڕگەی باشووران
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) یەکێک لە ھێڵەکانی درێژی کە بە نزیکەیی ٧٠ پلە لە باشووری زەوییە و دەوری خولگەی جەمسەری باشووری داوە"""),
                    SentencesRow(
                      englishText:
                          "Penguins live near the Antarctic Circle where it's very cold.",
                      kurdishText:
                          "پەنگوینەکان نزیک لە سووڕگەی ئەنتارکتیک دەژین کە زۆر ساردە.",
                      onPressedBritish: () => speakantarcticcircle156("en-GB"),
                      onPressedAmerican: () => speakantarcticcircle156("en-US"),
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


