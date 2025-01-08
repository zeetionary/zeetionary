import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantibiotic extends StatefulWidget {
  const EnglishEntryantibiotic({super.key});

  @override
  State<EnglishEntryantibiotic> createState() => _EnglishEntryantibioticState();
}

class _EnglishEntryantibioticState extends State<EnglishEntryantibiotic> {
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
- Noun: antibiotic (derived forms: antibiotics)
1. A chemical substance derivable from a mould or bacterium that can kill microorganisms and cure bacterial infections (= antibiotic drug)
"when antibiotics were first discovered they were called wonder drugs";

- Adjective: antibiotic 
1. Of or relating to antibiotic drugs
""",
  );
// 188888880002200

  final String keyword = "antibiotic";
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
    await flutterTts.speak("""antibiotic""");
  }

  Future<void> speakantibiotic958(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The doctor put her on antibiotics.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VP09H7zk9Ic';
    const double startSecondsend = 37;
    const String videoIdone = 'p8RkiEX9j4Y';
    const double startSecondsone = 8;
    const String videoIdtwo = 'pkTalaQsRlw';
    const double startSecondstwo = 88;
    const String videoIdthree = 'SDkKCw3xeYo';
    const double startSecondsthree = 51;
    const String videoIdfour = 'pkTalaQsRlw';
    const double startSecondsfour = 88;
    const String videoIdfive = '2HUgPQftzRY';
    const double startSecondsfive = 8;
    // final String _videoId = '4cKkhpiNzFE';
    // final double _startSeconds = 58;
    // final String _videoId = 'Ge46PH-Gjug';
    // final double _startSeconds = 12;
    // final String _videoId = '8VZH4GZLWZc';
    // final double _startSeconds = 13;
    // final String _videoId = '2CR4Nz0QyXc';
    // final double _startSeconds = 1;
    // final String _videoId = 'Y5jyVuhqxcY';
    // final double _startSeconds = 1;

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
                      word: """antibiotic""",
                      // alsoEnglishWord: "also: antibiotic",
                      britshText: """IpaUK: /ˌæntibaɪˈɒtɪk/""",
                      americanText:
                          """IpaUS: /ˌæntibaɪˈɑːtɪk/, /ˌæntaɪbaɪˈɑːtɪk/""",
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
کوردی: دژەزیندە، ئانتی‌بیوتیک، زیندەدژ، دژەبەکتریا (بەتایبەت پێنی‌سیلین)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) مادەیەک، بۆ نموونە پێنی‌سیلین، کە دەتوانێت گەشەی بەکتریا بوەستێنێت و تووشبوون بە نەخۆشی چارەسەر بکات"
                            ""),
                    SentencesRow(
                      englishText:
                          "The doctor put her on antibiotics (= told her to take them).",
                      kurdishText: "دکتۆرەکە پێی‌گوت دژەبەکتریا بخوات.",
                      onPressedBritish: () => speakantibiotic958("en-GB"),
                      onPressedAmerican: () => speakantibiotic958("en-US"),
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


