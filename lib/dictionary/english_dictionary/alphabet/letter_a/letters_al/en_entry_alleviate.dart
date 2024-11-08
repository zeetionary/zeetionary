import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalleviate extends StatefulWidget {
  const EnglishEntryalleviate({super.key});

  @override
  State<EnglishEntryalleviate> createState() => _EnglishEntryalleviateState();
}

class _EnglishEntryalleviateState extends State<EnglishEntryalleviate> {
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
- Verb: alleviate (derived forms: alleviated, alleviates, alleviating)
1. Provide physical relief, as from pain (= relieve, palliate, assuage)
"This pill will alleviate your headaches";
 
2. Make easier (= facilitate, ease, grease [informal])
"you could alleviate the process by sharing your knowledge";
""",
  );
// 188888880002200

  final String keyword = "alleviate";
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
    await flutterTts.speak("""alleviate""");
  }

  Future<void> speakalleviate45277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A number of measures were taken to alleviate the problem.");
  }

  Future<void> speakalleviate35699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The drugs did nothing to alleviate her pain.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'YKRao30tXDA';
    const double startSecondsend = 51;
    const String videoIdone = 'D2IawwkP2Mc';
    const double startSecondsone = 19;
    const String videoIdtwo = 'EHJNGdFll4o';
    const double startSecondstwo = 65;
    const String videoIdthree = 'U61yzVVlUoE';
    const double startSecondsthree = 293;
    const String videoIdfour = 'zpDuNzO_rwA';
    const double startSecondsfour = 47;
    const String videoIdfive = 'Un1gfVckcVw';
    const double startSecondsfive = 987;
    // final String _videoId = 'WVzvTLSK5dY';
    // final double _startSeconds = 18;
    // final String _videoId = 'caVoqAfdkYQ';
    // final double _startSeconds = 758;
    // final String _videoId = 'dAMN9kqaaqw';
    // final double _startSeconds = 180;
    // final String _videoId = 'd2WjA753yPI';
    // final double _startSeconds = 207;

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
                      word: """alleviate""",
                      // alsoEnglishWord: "also: alleviate",
                      britshText: """IpaUK: /əˈliːvieɪt/""",
                      americanText: """IpaUS: /əˈliːvieɪt/""",
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
کوردی: دامرکاندنەوە، ھێورکردنەوە، سوککردن
"""),
                    const DefinitionKurdish(
                        text: "١. (کردار) سەختی شتێک کەمبکەیتەوە" ""),
                    SentencesRow(
                      englishText:
                          "A number of measures were taken to alleviate the problem.",
                      kurdishText:
                          "ژمارەیەک ڕێکار گردرانە بەر بۆ سوککردنی کێشەکە.",
                      onPressedBritish: () => speakalleviate45277("en-GB"),
                      onPressedAmerican: () => speakalleviate45277("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The drugs did nothing to alleviate her pain/suffering.",
                      kurdishText:
                          "چارەسەرەکان ھیچیان نەکرد بۆ کەمکردنەوەی ئازارەکەی.",
                      onPressedBritish: () => speakalleviate35699("en-GB"),
                      onPressedAmerican: () => speakalleviate35699("en-US"),
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

