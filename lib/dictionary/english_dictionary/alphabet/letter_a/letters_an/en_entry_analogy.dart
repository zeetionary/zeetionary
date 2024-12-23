import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalogy extends StatefulWidget {
  const EnglishEntryanalogy({super.key});

  @override
  State<EnglishEntryanalogy> createState() => _EnglishEntryanalogyState();
}

class _EnglishEntryanalogyState extends State<EnglishEntryanalogy> {
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
- Noun: analogy (derived forms: analogies)
1. An inference that if things agree in some respects they probably agree in others
 
2. Drawing a comparison in order to show a similarity in some respect
"the operation of a computer presents an interesting analogy to the working of the brain"; "the models show by analogy how matter is built up"
 
3. The religious belief that between creature and creator no similarity can be found so great but that the dissimilarity is always greater; any analogy between God and humans will always be inadequate (= doctrine of analogy)
""",
  );
// 188888880002200

  final String keyword = "analogy";
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
    await flutterTts.speak("""analogy""");
  }

  Future<void> speakanalogy4805(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The teacher drew an analogy between the human heart and a pump.");
  }

  Future<void> speakanalogy8540(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The computer is a useful analogy for the brain.");
  }

  Future<void> speakanalogy8704(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We can understand this theory by analogy with human beings.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'HDntl7yzzVI';
    const double startSecondsend = 710;
    const String videoIdone = 'GcdB5bFwio4';
    const double startSecondsone = 373;
    const String videoIdtwo = 'IlU-zDU6aQ0';
    const double startSecondstwo = 1890;
    const String videoIdthree = 'HAnw168huqA';
    const double startSecondsthree = 113;
    const String videoIdfour = 'NeZ4yXyzUG0';
    const double startSecondsfour = 467;
    const String videoIdfive = '9yjZpBq1XBE';
    const double startSecondsfive = 4628;
    // final String _videoId = 'IgF3OX8nT0w';
    // final double _startSeconds = 32;
    // final String _videoId = 'oI_X2cMHNe0';
    // final double _startSeconds = 267;
    // final String _videoId = 'fHsa9DqmId8';
    // final double _startSeconds = 296;
    // final String _videoId = 'LJNtfyq3TDE';
    // final double _startSeconds = 899;

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
                      word: """analogy""",
                      // alsoEnglishWord: "also: analogy",
                      britshText: """IpaUK: /əˈnælədʒi/""",
                      americanText: """IpaUS: /əˈnælədʒi/""",
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
کوردی: لێکچوویی، ھاوشێوەیی، وەکیەکی، پێک‌گرتن، ھەڵسەنگاندن، پێوانە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بەراوردکارییەک لەگەڵ شتێک کە خاسیەتی لێکچووی ھەیە"""),
                    SentencesRow(
                      englishText:
                          "The teacher drew an analogy between the human heart and a pump.",
                      kurdishText: "مامۆستاکە دڵی مرۆڤی چواند بە پەمپێک.",
                      onPressedBritish: () => speakanalogy4805("en-GB"),
                      onPressedAmerican: () => speakanalogy4805("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The computer is a useful analogy for the brain.",
                      kurdishText: "کۆمپیوتەر لێکچوویەکی باشە بۆ مێشک.",
                      onPressedBritish: () => speakanalogy8540("en-GB"),
                      onPressedAmerican: () => speakanalogy8540("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) پڕۆسەی بەراوردکردنی دوو شتی لێكچوو"""),
                    SentencesRow(
                      englishText:
                          "We can understand this theory by analogy with human beings.",
                      kurdishText:
                          "ئەتوانین لەم بیردۆزە تێ‌بگەین بە بەراوردکردنی بە مرۆڤ.",
                      onPressedBritish: () => speakanalogy8704("en-GB"),
                      onPressedAmerican: () => speakanalogy8704("en-US"),
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


