import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalcoholic extends StatefulWidget {
  const EnglishEntryalcoholic({super.key});

  @override
  State<EnglishEntryalcoholic> createState() => _EnglishEntryalcoholicState();
}

class _EnglishEntryalcoholicState extends State<EnglishEntryalcoholic> {
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
- Adjective: alcoholic
1. Addicted to alcohol (= alcohol-dependent)
"alcoholic expatriates in Paris";
 
2. Characteristic of or containing alcohol
"alcoholic drinks"

- Noun: alcoholic (derived forms: alcoholics)
1. A person who drinks alcohol to excess habitually (= alky [informal], dipsomaniac, boozer [informal], lush [N. Amer, informal], soaker [informal], souse [informal], dipso [informal], winebibber [archaic], alkie [informal], tosspot [informal], drunkard, drunk, rummy, sot, inebriate, wino [informal])
""",
  );
// 188888880002200

  final String keyword = "alcoholic";
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
    await flutterTts.speak("""alcoholic""");
  }

  Future<void> speakalcoholic459(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fruit juice tasted slightly alcoholic.");
  }

  Future<void> speakalcoholic469(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The guests left in an alcoholic haze.");
  }

  Future<void> speakalcoholic358(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was taking care of her alcoholic son.");
  }

  Future<void> speakalcoholic39412(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I don’t think an alcoholic can dry out without proper medical help.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'S4Du0z5fuLw';
    const double startSecondsend = 27;
    const String videoIdone = '5wgvpo-xBnA';
    const double startSecondsone = 12;
    const String videoIdtwo = 'VAbZreFNDjg';
    const double startSecondstwo = 25;
    const String videoIdthree = 'F9lZKl6Qnho';
    const double startSecondsthree = 2;
    const String videoIdfour = 'pIFNyh0npAo';
    const double startSecondsfour = 1;
    const String videoIdfive = 'IJ45ejB80XA';
    const double startSecondsfive = 1;
    // final String _videoId = 'E2wyBt4qAUc';
    // final double _startSeconds = 707;
    // final String _videoId = '3Hf6r5FczHM';
    // final double _startSeconds = 1;
    // final String _videoId = 'E5PBZhdvaQY';
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
                      word: """alcoholic""",
                      // alsoEnglishWord: "also: alcoholic",
                      britshText: """IpaUK: /ˌælkəˈhɒlɪk/""",
                      americanText: """IpaUS: /ˌælkəˈhɑːlɪk/""",
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
١. (ھاوەڵناو) پەیوەندیدار بە کحول، یان ھەبوونی کحول تێیدا"""),
                    SentencesRow(
                      englishText: "The fruit juice tasted slightly alcoholic.",
                      kurdishText: "شەربەتەکە کەمێک تامی کحولی دەدا.",
                      onPressedBritish: () => speakalcoholic459("en-GB"),
                      onPressedAmerican: () => speakalcoholic459("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پەیوەندیدار بە کحول، یان ھەبوونی کحول تێیدا"""),
                    SentencesRow(
                      englishText: "The guests left in an alcoholic haze.",
                      kurdishText: "میوانەکان بە گێژخواردوویی کحولەوە ڕۆشتن.",
                      onPressedBritish: () => speakalcoholic469("en-GB"),
                      onPressedAmerican: () => speakalcoholic469("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ئاڵوودەی کحول بە ڕادەی نەخۆشبوون"""),
                    SentencesRow(
                      englishText: "She was taking care of her alcoholic son.",
                      kurdishText: "چاودێری کوڕە ئاڵوودەکەیی دەکرد.",
                      onPressedBritish: () => speakalcoholic358("en-GB"),
                      onPressedAmerican: () => speakalcoholic358("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) کەسێک لە ڕادەبەدەر بخواتەوە"""),
                    SentencesRow(
                      englishText:
                          "I don’t think an alcoholic can dry out without proper medical help.",
                      kurdishText:
                          "پێم وانییە کەسێکی ئاڵوودە بتوانێت خواردنەوە تەرک بکات بەبێ یارمەتی گونجاوی پزیشکی.",
                      onPressedBritish: () => speakalcoholic39412("en-GB"),
                      onPressedAmerican: () => speakalcoholic39412("en-US"),
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


