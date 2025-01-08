import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanticlockwise extends StatefulWidget {
  const EnglishEntryanticlockwise({super.key});

  @override
  State<EnglishEntryanticlockwise> createState() =>
      _EnglishEntryanticlockwiseState();
}

class _EnglishEntryanticlockwiseState extends State<EnglishEntryanticlockwise> {
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
- Adjective: anticlockwise 
Usage: Brit (N. Amer: counterclockwise)
1. In the direction opposite to the rotation of the hands of a clock (= counterclockwise [N. Amer], contraclockwise [non-standard])

- Adverb: anticlockwise 
Usage: Brit (N. Amer: counterclockwise)
1. In a direction opposite to the direction in which the hands of a clock move (= counterclockwise [N. Amer])
"please move anticlockwise in a circle!";
""",
  );
// 188888880002200

  final String keyword = "anticlockwise";
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
    await flutterTts.speak("""anticlockwise""");
  }

  Future<void> speakanticlockwise856(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "'How do I get the top off this bottle?'' 'Push it down and twist it anticlockwise.'");
  }

  Future<void> speakanticlockwise859(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Turn the key anticlockwise/in an anticlockwise direction.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '0mXW1zPlxEE';
    const double startSecondsend = 230;
    const String videoIdone = 'FXK0u16Vn-8';
    const double startSecondsone = 225;
    const String videoIdtwo = 'FrUxn9V6EoQ';
    const double startSecondstwo = 297;
    const String videoIdthree = 'CW0RJ-ejuvI';
    const double startSecondsthree = 52;
    const String videoIdfour = 'p36ED_Xn7PM';
    const double startSecondsfour = 628;
    const String videoIdfive = 'YNo2Uu2jcdw';
    const double startSecondsfive = 1294;
    // final String _videoId = 'Am2wf5RSV8M';
    // final double _startSeconds = 449;

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
                      word: """anticlockwise""",
                      // alsoEnglishWord: "also: anticlockwise",
                      britshText: """IpaUK: /ˌæntiˈklɒkwaɪz/""",
                      americanText:
                          """IpaUS: /ˌæntiˈklɑːkwaɪz/, /ˌæntaɪˈklɑːkwaɪz/""",
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
١. (ھاوەڵناو، ھاوەڵکار) پێچەوانەی سووڕانی میلەکانی سەعات"""),
                    SentencesRow(
                      englishText:
                          "'How do I get the top off this bottle?'' 'Push it down and twist it anticlockwise.'",
                      kurdishText:
                          "«چۆن سەری ئەم بوتڵە بکەمەوە؟» «پاڵی‌بنە خوار و بە پێچەوانەی میلی کاتژمێر بیسووڕێنە»",
                      onPressedBritish: () => speakanticlockwise856("en-GB"),
                      onPressedAmerican: () => speakanticlockwise856("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Turn the key anticlockwise/in an anticlockwise direction.",
                      kurdishText:
                          "کلیلەکە بە ئاراستەی پێچيوانەی میلی کاتژمێر.",
                      onPressedBritish: () => speakanticlockwise859("en-GB"),
                      onPressedAmerican: () => speakanticlockwise859("en-US"),
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


