// end aggressively
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaggressively extends StatefulWidget {
  const EnglishEntryaggressively({super.key});

  @override
  State<EnglishEntryaggressively> createState() =>
      _EnglishEntryaggressivelyState();
}

class _EnglishEntryaggressivelyState extends State<EnglishEntryaggressively> {
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
- Adverb: aggressively
1. In an aggressive manner (= sharply)
"she was being aggressively questioned";
""",
  );
// 188888880002200

  final String keyword = "aggressively";
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
    await flutterTts.speak("""aggressively""");
  }

  Future<void> speakaggressiv1458(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many drivers behave aggressively on the road.");
  }

  Future<void> speakaggressively22222(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They played more aggressively in the second half.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'GjMmsEwIcl0';
    const double startSecondsend = 69;
    const String videoIdone = 'lGSOWwUvJiU';
    const double startSecondsone = 1294;
    const String videoIdtwo = '9K_CZizKdVs';
    const double startSecondstwo = 288;
    const String videoIdthree = 'yRmOWcWdQAo';
    const double startSecondsthree = 335;
    const String videoIdfour = 'fn--IVarumw';
    const double startSecondsfour = 1190;
    const String videoIdfive = 'K83zdXu2xrw';
    const double startSecondsfive = 462;
    // final String _videoId = 'cmw3SO42VVo';
    // final double _startSeconds = 312;
    // final String _videoId = '9s9UXXAmlTg';
    // final double _startSeconds = 650;

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
                      word: """aggressively""",
                      // alsoEnglishWord: "also: aggressively",
                      britshText: """IpaUK: /əˈɡresɪvli/""",
                      americanText: """IpaUS: /əˈɡresɪvli/""",
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
کوردی: دەس‌درێژکەرانە، دەساوێژانە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵکار) شەڕەنگێزانە و بەتوڕەیی" ""),
                    SentencesRow(
                      englishText:
                          "Many drivers behave aggressively on the road.",
                      kurdishText:
                          "زۆر شۆفێر لەسەر شەقامەکان بە توندوتیژی ڕەفتار دەکەن.",
                      onPressedBritish: () => speakaggressiv1458("en-GB"),
                      onPressedAmerican: () => speakaggressiv1458("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بەشێوەیەک کە ھێز و ماندووبوونی زیاتری تێدایە"""),
                    SentencesRow(
                      englishText:
                          "They played more aggressively in the second half.",
                      kurdishText: "لە گێمی دووەم سەرسەختانەتر یارییان کرد.",
                      onPressedBritish: () => speakaggressively22222("en-GB"),
                      onPressedAmerican: () => speakaggressively22222("en-US"),
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

