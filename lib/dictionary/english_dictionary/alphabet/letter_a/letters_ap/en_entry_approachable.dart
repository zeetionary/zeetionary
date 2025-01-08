import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapproachable extends StatefulWidget {
  const EnglishEntryapproachable({super.key});

  @override
  State<EnglishEntryapproachable> createState() =>
      _EnglishEntryapproachableState();
}

class _EnglishEntryapproachableState extends State<EnglishEntryapproachable> {
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
- Adjective: approachable 
1. Capable of being read with comprehension (= accessible)
"the tales seem more approachable than his more difficult novels";
 
2. Easily approached (= reachable)
"a site approachable from a branch of the Niger";
 
3. Easy to meet, converse or do business with
"a friendly approachable person"
""",
  );
// 188888880002200

  final String keyword = "approachable";
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
    await flutterTts.speak("""approachable""");
  }

  Future<void> speakapproachable1253(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Despite being a big star, she's very approachable.");
  }

  Future<void> speakapproachable1255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The summit was approachable only from the south.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'she33LZsP7k';
    const double startSecondsend = 82;
    const String videoIdone = 'mviTS_cIWXg';
    const double startSecondsone = 590;
    const String videoIdtwo = '7fcqhU-23TA';
    const double startSecondstwo = 209;
    const String videoIdthree = 'X7MVGkqW5u8';
    const double startSecondsthree = 216;
    const String videoIdfour = 'fYVouIyOXC0';
    const double startSecondsfour = 622;
    const String videoIdfive = 'rmr_hgMAqg0';
    const double startSecondsfive = 199;
    // final String _videoId = 'a1I7QBCHqng';
    // final double _startSeconds = 468;
    // final String _videoId = 'DutQbEPqaNk';
    // final double _startSeconds = 703;
    // final String _videoId = 's6Mo7YNAmcs';
    // final double _startSeconds = 778;
    // final String _videoId = '85l5VbJbTtM';
    // final double _startSeconds = 69;

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
                      word: """approachable""",
                      // alsoEnglishWord: "also: approachable",
                      britshText: """IpaUK: /əˈprəʊtʃəbl/""",
                      americanText: """IpaUS: /əˈprəʊtʃəbl/""",
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
کوردی: دەس‌پێڕاگەیشتوو، لەگەیشتن‌ھاتوو، لەنزیک، لەبەردەست، ڕووخۆش
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) ڕووخۆش و کۆمەڵایەتی"""),
                    SentencesRow(
                      englishText:
                          "Despite being a big star, she's very approachable.",
                      kurdishText:
                          "ئەگەرچی ئەستێرەیەکی گەورەیە، بەڵام کەسێکی کۆمەڵایەتییە.",
                      onPressedBritish: () => speakapproachable1253("en-GB"),
                      onPressedAmerican: () => speakapproachable1253("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شوێنێک کە ڕێگایەک پێی‌دەگات"""),
                    SentencesRow(
                      englishText:
                          "The summit was approachable only from the south.",
                      kurdishText: "لوتکەی شاخەکە تەنھا لە باشوورەوە بەردەستە.",
                      onPressedBritish: () => speakapproachable1255("en-GB"),
                      onPressedAmerican: () => speakapproachable1255("en-US"),
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
