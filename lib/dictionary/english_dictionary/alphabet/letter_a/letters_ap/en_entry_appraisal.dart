import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappraisal extends StatefulWidget {
  const EnglishEntryappraisal({super.key});

  @override
  State<EnglishEntryappraisal> createState() => _EnglishEntryappraisalState();
}

class _EnglishEntryappraisalState extends State<EnglishEntryappraisal> {
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
- Noun: appraisal (derived forms: appraisals)
The classification of someone or something with respect to its worth (= assessment)
 
2. A document appraising the value of something (as for insurance or taxation) (= estimate, estimation)
 
3. An expert estimation of the quality, quantity, and other characteristics of someone or something
""",
  );
// 188888880002200

  final String keyword = "appraisal";
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
    await flutterTts.speak("""appraisal""");
  }

  Future<void> speakappraisal930(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The report has been subject to appraisal.");
  }

  Future<void> speakappraisal932(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A detailed appraisal of the scheme will now be carried out.");
  }

  Future<void> speakappraisal935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have my appraisal today.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'B72OF38F93g';
    const double startSecondsend = 80;
    const String videoIdone = 'yoigsHYc77s';
    const double startSecondsone = 60;
    const String videoIdtwo = 'T_7vhsSBi7c';
    const double startSecondstwo = 921;
    const String videoIdthree = 'ZZ3F3zWiEmc';
    const double startSecondsthree = 287;
    const String videoIdfour = 'q-2l7-6hDHk';
    const double startSecondsfour = 429;
    const String videoIdfive = 'iX0mULW0XZI';
    const double startSecondsfive = 274;
    // final String _videoId = '9_1jolg6b-U';
    // final double _startSeconds = 1253;
    // final String _videoId = 'D_q4LhTrdls';
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
                      word: """appraisal""",
                      // alsoEnglishWord: "also: appraisal",
                      britshText: """IpaUK: /əˈpreɪzl/""",
                      americanText: """IpaUS: /əˈpreɪzl/""",
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
کوردی: نرخاندن، ھەڵسەنگاندن، مەزندە، قەبڵاندن، لێکدانەوە، بۆچوون
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) نرخاندنی نرخ و بەھای شتێک"""),
                    SentencesRow(
                      englishText: "The report has been subject to appraisal.",
                      kurdishText: "ڕاپۆرتەکە بە لێکدانەوەدا تێپەڕبووە.",
                      onPressedBritish: () => speakappraisal930("en-GB"),
                      onPressedAmerican: () => speakappraisal930("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "A detailed appraisal of the scheme will now be carried out.",
                      kurdishText: "ھەڵسەنگاندنێکی وردی پلانەکە ئەنجام دەدرێت.",
                      onPressedBritish: () => speakappraisal932("en-GB"),
                      onPressedAmerican: () => speakappraisal932("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کۆبوونەوەیەک کە تێیدا کارمەندێک باسی کارەکەی بۆ بەڕێوبەرەکەی دەکات"""),
                    SentencesRow(
                      englishText: "I have my appraisal today.",
                      kurdishText: "ئەمڕۆ ڕۆژی ھەڵسەنگاندنمە.",
                      onPressedBritish: () => speakappraisal935("en-GB"),
                      onPressedAmerican: () => speakappraisal935("en-US"),
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
