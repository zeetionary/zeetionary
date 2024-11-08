// end all-clear
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallclear extends StatefulWidget {
  const EnglishEntryallclear({super.key});

  @override
  State<EnglishEntryallclear> createState() => _EnglishEntryallclearState();
}

class _EnglishEntryallclearState extends State<EnglishEntryallclear> {
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
- Noun: all-clear (derived forms: all-clears)
1. A signal (usually a siren) that danger is over
 
2. Permission to proceed because obstacles have been removed
""",
  );
// 188888880002200

  final String keyword = "all-clear";
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
    await flutterTts.speak("""all-clear""");
  }


  Future<void> speakallclear37455(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The children hid in the basement until the all-clear sounded.");
  }

  Future<void> speakallclear24121(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The building was given the all-clear following tests.");
  }

  Future<void> speakallclear385796(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ship was given the all-clear to sail.");
  }


  @override
  Widget build(BuildContext context) {

  const String videoIdend = 'V5H4blgtPjE';
  const double startSecondsend = 307;
  const String videoIdone = 'cqidD7kVnxY';
  const double startSecondsone = 817;
  const String videoIdtwo = 'rpM6DNoXVcs';
  const double startSecondstwo = 2213;
  const String videoIdthree = 'AqqaYs7LjlM';
  const double startSecondsthree = 1102;
  const String videoIdfour = 'JUhyyGOx9Gk';
  const double startSecondsfour = 564;
  const String videoIdfive = 'XGcYQIF7sls';
  const double startSecondsfive = 335;
  // final String _videoId = 'bLApZfnLJoM';
  // final double _startSeconds = 372;
  // final String _videoId = 'xfmD1yYqP6k';
  // final double _startSeconds = 218;
  // final String _videoId = 'fz5KrLjCZ1U';
  // final double _startSeconds = 309;
  // final String _videoId = 'uo63QQsm5Dw';
  // final double _startSeconds = 162;
  // final String _videoId = 'vVkTvlUzZEE';
  // final double _startSeconds = 234;

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
                      word: """all-clear""",
                      // alsoEnglishWord: "also: all-clear",
                      britshText: """IpaUK: /ði ˌɔːl ˈklɪə(r)/""",
                      americanText: """IpaUS: /ði ˌɔːl ˈklɪr/""",
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
١. (ناو) ئاماژەیەک بۆ ئەوەی شوێنێک چی تر مەترسیدار نییە"""),
                          SentencesRow(
                            englishText:
                                "The children hid in the basement until the all-clear sounded.",
                            kurdishText:
                                "منداڵەکان خۆیان لەژێر زەمینەکە شاردەوە تاوەکو ئاماژەی سەلامەتییان پێدرا.",
                            onPressedBritish: () => speakallclear37455("en-GB"),
                            onPressedAmerican: () =>
                                speakallclear37455("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) وتنی ئەوەی ھیچ کێشەیەک نییە، بۆ نموونە پزیشک بڵێت ھیچ کێشەی تەندرووستیت نییە"""),
                          SentencesRow(
                            englishText:
                                "The building was given the all-clear following tests.",
                            kurdishText:
                                "بیناکە بە سەلامەت دانرا لە دوای پشکنینەکان.",
                            onPressedBritish: () => speakallclear24121("en-GB"),
                            onPressedAmerican: () =>
                                speakallclear24121("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) مۆڵەتپێدان بۆ کردنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "The ship was given the all-clear to sail.",
                            kurdishText:
                                "کەشتییەکە مۆڵەتی پێدرا بۆ چوونە دەریا.",
                            onPressedBritish: () =>
                                speakallclear385796("en-GB"),
                            onPressedAmerican: () =>
                                speakallclear385796("en-US"),
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


