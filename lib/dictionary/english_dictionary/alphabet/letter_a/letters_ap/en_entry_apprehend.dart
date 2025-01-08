import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapprehend extends StatefulWidget {
  const EnglishEntryapprehend({super.key});

  @override
  State<EnglishEntryapprehend> createState() => _EnglishEntryapprehendState();
}

class _EnglishEntryapprehendState extends State<EnglishEntryapprehend> {
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
- Verb: apprehend (derived forms: apprehended, apprehends, apprehending)
1. Get the meaning of something (= grok [N. Amer, informal], get the picture, comprehend, savvy, dig [informal], grasp, compass)
 
2. Take into custody (= collar [informal], nail [informal], arrest, pick up, nab [informal], cop [informal], pinch [Brit, informal], nick [Brit, informal])
"the police apprehended the suspected criminals";
 
3. Anticipate with dread or anxiety (= quail at)
""",
  );
// 188888880002200

  final String keyword = "apprehend";
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
    await flutterTts.speak("""apprehend""");
  }

  Future<void> speakapprehend922(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The police apprehended an armed suspect near the scene of the crime.");
  }

  Future<void> speakapprehend924(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was slow to apprehend danger.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'xi4wZJ-7ZCg';
    const double startSecondsend = 1133;
    const String videoIdone = '66B3i10hwiU';
    const double startSecondsone = 887;
    const String videoIdtwo = 'tcqiJAqjoxE';
    const double startSecondstwo = 1813;
    const String videoIdthree = 'BmPIYOceEXs';
    const double startSecondsthree = 258;
    const String videoIdfour = 'PQl82pAgnLo';
    const double startSecondsfour = 541;
    const String videoIdfive = 'N4wLj58UtA8';
    const double startSecondsfive = 531;
    // final String _videoId = 'SDkAGkd4NLc';
    // final double _startSeconds = 237;
    // final String _videoId = 'Ts4Qtw5LDjE';
    // final double _startSeconds = 566;
    // final String _videoId = 'Solb9uA-tgQ';
    // final double _startSeconds = 2559;
    // final String _videoId = '8hIr9H_LMKE';
    // final double _startSeconds = 848;
    // final String _videoId = 'no2bqNii-UU';
    // final double _startSeconds = 1086;

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
                      word: """apprehend""",
                      // alsoEnglishWord: "also: apprehend",
                      britshText: """IpaUK: /ˌæprɪˈhend/""",
                      americanText: """IpaUS: /ˌæprɪˈhend/""",
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
١. (کردار) دەستگیرکردن"""),
                    SentencesRow(
                      englishText:
                          "The police apprehended an armed suspect near the scene of the crime.",
                      kurdishText:
                          "پۆلیس گومانلێکراوێکیان بە چەکەوە دەستگیرکرد لە شوێنی تاوانەکە.",
                      onPressedBritish: () => speakapprehend922("en-GB"),
                      onPressedAmerican: () => speakapprehend922("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) تێگەشتن و ھەست‌کردن بە شتێک"""),
                    SentencesRow(
                      englishText: "He was slow to apprehend danger.",
                      kurdishText: "درەنگ ھەستی بە مەترسی دەکرد.",
                      onPressedBritish: () => speakapprehend924("en-GB"),
                      onPressedAmerican: () => speakapprehend924("en-US"),
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
