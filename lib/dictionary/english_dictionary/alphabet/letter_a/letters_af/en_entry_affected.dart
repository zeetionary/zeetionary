import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffected extends StatefulWidget {
  const EnglishEntryaffected({super.key});

  @override
  State<EnglishEntryaffected> createState() => _EnglishEntryaffectedState();
}

class _EnglishEntryaffectedState extends State<EnglishEntryaffected> {
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
- Adjective: affected 
1. Acted upon; influenced
 
2. Speaking or behaving in an artificial way to make an impression (= unnatural)
 
3. Being excited or provoked to the expression of an emotion (= moved, stirred, touched)
"too affected to speak";
""",
  );
// 188888880002200

  final String keyword = "affected";
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
    await flutterTts.speak("""affected""");
  }

  Future<void> speakaffec357(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Don't worry about the rule changes—you're not affected.");
  }

  Future<void> speakaffec3618(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Don’t use such strange words—it makes you sound affected.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 't6ugaHl_vps';
    const double startSecondsend = 662;
    const String videoIdone = 'dmZw0-sPSc4';
    const double startSecondsone = 689;
    const String videoIdtwo = 'hWmOA8XIrQE';
    const double startSecondstwo = 58;
    const String videoIdthree = 'hvZ8BcJnzj4';
    const double startSecondsthree = 2;
    const String videoIdfour = 'kP6pW24T7Go';
    const double startSecondsfour = 151;
    const String videoIdfive = 'fQ2jIBMSSWI';
    const double startSecondsfive = 5;
    // const String videoId = 'FelLnPywn-E';
    // const double startSeconds = 226;
    // const String videoId = 'n53UaiSZuDg';
    // const double startSeconds = 41;

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
                      word: """affected""",
                      // alsoEnglishWord: "also: affected",
                      britshText: """IpaUK: /əˈfektɪd/""",
                      americanText: """IpaUS: /əˈfektɪd/""",
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
کوردی: ساختە، ناڕاست، درۆ، دەستکرد، خۆپیشان‌دەرانە، نەخۆش، توش‌بوو، (پیا)پیاکراو
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) کاریگەربوون بە شتێک" ""),
                    SentencesRow(
                      englishText:
                          "Don't worry about the rule changes—you're not affected.",
                      kurdishText:
                          "نیگەران مەبە سەبارەت بە گۆڕانی یاساکان، تۆ کاریگەر نابیت پێیان.",
                      onPressedBritish: () => speakaffec357("en-GB"),
                      onPressedAmerican: () => speakaffec357("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) نا سرووشتی"""),
                    SentencesRow(
                      englishText:
                          "Don’t use such strange words—it makes you sound affected.",
                      kurdishText:
                          "وشەی وا نامۆ بەکارمەھێنە، وای دەردەخات کە نواندن دەکەیت.",
                      onPressedBritish: () => speakaffec3618("en-GB"),
                      onPressedAmerican: () => speakaffec3618("en-US"),
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
