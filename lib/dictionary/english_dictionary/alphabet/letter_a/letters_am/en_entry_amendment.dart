import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamendment extends StatefulWidget {
  const EnglishEntryamendment({super.key});

  @override
  State<EnglishEntryamendment> createState() => _EnglishEntryamendmentState();
}

class _EnglishEntryamendmentState extends State<EnglishEntryamendment> {
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
- Noun: amendment (derived forms: amendments)
1. The act of amending or correcting
 
2. A statement that is added to or revises or improves a proposal or document (a bill or constitution etc.)
""",
  );
// 188888880002200

  final String keyword = "amendment";
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
    await flutterTts.speak("""amendment""");
  }

  Future<void> speakamendment1244(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Parliament passed the bill without further amendment.");
  }

  Future<void> speakamendment4557(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Senate added numerous amendments to the bill.");
  }

  Future<void> speakamendment74111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The 19th Amendment gave women the right to vote.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'wWwQjH7T1bE';
    const double startSecondsend = 207;
    const String videoIdone = 'VS3cAOEVTss';
    const double startSecondsone = 107;
    const String videoIdtwo = 'CKNYcYYvfv4';
    const double startSecondstwo = 67;
    const String videoIdthree = 'pE2VIj7ozyA';
    const double startSecondsthree = 57;
    const String videoIdfour = 'zZ2AUptmvfA';
    const double startSecondsfour = 24;
    const String videoIdfive = '3xxHqPIk0r4';
    const double startSecondsfive = 24;
    // final String _videoId = '-hwFKze2a_8';
    // final double _startSeconds = 1;
    // final String _videoId = '5A_2I8Y5tWk';
    // final double _startSeconds = 25;

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
                      word: """amendment""",
                      // alsoEnglishWord: "also: amendment",
                      britshText: """IpaUK: /əˈmendmənt/""",
                      americanText: """IpaUS: /əˈmendmənt/""",
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
کوردی: چا(ک)کردن، ڕاست‌کردنەوە، خاوێن‌کردنەوە، بژارکردن، پیاچوونەوە، چاوپیاخشاندن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) گۆڕانکارییەکی بچووک کە لە یاسایەک یان دۆکیومێنتێک دەکرێت"""),
                    SentencesRow(
                      englishText:
                          "Parliament passed the bill without further amendment.",
                      kurdishText:
                          "پەرلەمان پڕۆژە یاساکەی تێپەڕاند بەبێ گۆڕانکاری زیاتر.",
                      onPressedBritish: () => speakamendment1244("en-GB"),
                      onPressedAmerican: () => speakamendment1244("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The Senate added numerous amendments to the bill.",
                      kurdishText:
                          "ئەنجوومەنی پیران ژمارەیەک گۆڕانکاری بۆ پڕۆژە یاساکە زیادکرد.",
                      onPressedBritish: () => speakamendment4557("en-GB"),
                      onPressedAmerican: () => speakamendment4557("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) گۆڕانکارییەک لە دەستووری ئەمریکا"""),
                    SentencesRow(
                      englishText:
                          "The 19th Amendment gave women the right to vote.",
                      kurdishText:
                          "نۆزدەیەمین گۆڕانکاری بۆ دەستووری ئەمریکا مافی دەنگدانی دا بە ژنان.",
                      onPressedBritish: () => speakamendment74111("en-GB"),
                      onPressedAmerican: () => speakamendment74111("en-US"),
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

