import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallegation extends StatefulWidget {
  const EnglishEntryallegation({super.key});

  @override
  State<EnglishEntryallegation> createState() => _EnglishEntryallegationState();
}

class _EnglishEntryallegationState extends State<EnglishEntryallegation> {
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
- Noun: allegation (derived forms: allegations)
1. (law) a formal accusation against somebody (often in a court of law)
"an allegation of malpractice"
 
2. A statement affirming or denying certain matters of fact that you are prepared to prove (= allegement)
""",
  );
// 188888880002200

  final String keyword = "allegation";
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
    await flutterTts.speak("""allegation""");
  }

  Future<void> speakallegation534(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Several newspapers made allegations of corruption in the city's police department.");
  }

  Future<void> speakallegation36911(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She refused to admit the allegations.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'yCdbHiVPYwI';
    const double startSecondsend = 1026;
    const String videoIdone = 'uN84HhcdIws';
    const double startSecondsone = 492;
    const String videoIdtwo = 'P6bVl47kdNk';
    const double startSecondstwo = 1304;
    const String videoIdthree = 'YCnFYvL17v4';
    const double startSecondsthree = 1365;
    const String videoIdfour = '4IaOeVgZ-wc';
    const double startSecondsfour = 672;
    const String videoIdfive = 'sPGEyrXFEHM';
    const double startSecondsfive = 1047;
    // final String _videoId = '_87l4Loi8Dw';
    // final double _startSeconds = 9;
    // final String _videoId = '-fUDIucr2eo';
    // final double _startSeconds = 123;
    // final String _videoId = 'jtVfXLkc-ko';
    // final double _startSeconds = 915;
    // final String _videoId = '4cwXifDaCjE';
    // final double _startSeconds = 1000;
    // final String _videoId = '-2gV8LaH9SQ';
    // final double _startSeconds = 2016;
    // final String _videoId = 'xdaDJMcLtxk';
    // final double _startSeconds = 1944;

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
                      word: """allegation""",
                      // alsoEnglishWord: "also: allegation",
                      britshText: """IpaUK: /ˌæləˈɡeɪʃn/""",
                      americanText: """IpaUS: /ˌæləˈɡeɪʃn/""",
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
کوردی: تۆمەت، تاوانبارکردن، گوناھبارکردن، داواکاری، ئیدعا
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) تۆمەت کە تەنھا دەنگۆیە و بێ بەڵگەیە"
                            ""),
                    SentencesRow(
                      englishText:
                          "Several newspapers made allegations of corruption in the city's police department.",
                      kurdishText:
                          "ژمارەیەک ڕۆژنامە ئیدعای گەندەڵییان کرد لە پۆلیسخانەی شارەکە.",
                      onPressedBritish: () => speakallegation534("en-GB"),
                      onPressedAmerican: () => speakallegation534("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "She refused to admit the allegations.",
                      kurdishText: "ڕەتیکردەوە دان بە تۆمەتەکان بنێت.",
                      onPressedBritish: () => speakallegation36911("en-GB"),
                      onPressedAmerican: () => speakallegation36911("en-US"),
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

