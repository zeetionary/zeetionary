import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaddition extends StatefulWidget {
  const EnglishEntryaddition({super.key});

  @override
  State<EnglishEntryaddition> createState() => _EnglishEntryadditionState();
}

class _EnglishEntryadditionState extends State<EnglishEntryaddition> {
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
- Noun: addition (derived forms: additions)
1. A component that is added to something to improve it (add-on, improver)
"the addition of a bathroom was a major improvement";
 
2. The act of adding one thing to another
"the addition of flowers created a pleasing effect"; "the addition of a leap day every four years"
 
3. A quantity that is added (increase, gain)
"there was an addition to property taxes this year";
 
4. Something added to what you already have (accession)
"he was a new addition to the staff";
 
5. A suburban area laid out in streets and lots for a future residential area
 
6. The arithmetic operation of summing; calculating the sum of two or more numbers (= summation, plus)
"the addition of four and three gives seven";
""",
  );
// 188888880002200

  final String keyword = "addition";
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
    await flutterTts.speak("""addition""");
  }

  Future<void> speakaddi14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All of these technologies are fairly recent additions.");
  }

  Future<void> speakadditi769(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Add salt, tasting with every addition.");
  }

  Future<void> speakaddit445(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The addition should match the architecture of the house.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'N4LF0jXUrdk';
    const double startSecondsend = 50;
    const String videoIdone = 'rEdl2Uetpvo';
    const double startSecondsone = 35;
    const String videoIdtwo = 'zz7K1tLME8s';
    const double startSecondstwo = 142;
    const String videoIdthree = 'nzqIPiUn6A8';
    const double startSecondsthree = 13;
    const String videoIdfour = 'J-K5OjAkiEA';
    const double startSecondsfour = 199;
    const String videoIdfive = 'BlU49dJhfcw';
    const double startSecondsfive = 136;
    // const String videoId = 'wxm8jTzU_8o';
    // const double startSeconds = 34;
    // const String videoId = '3eDnKct5XAw';
    // const double startSeconds = 881;
    // const String videoId = 'c0pS3Zx7Fc8';
    // const double startSeconds = 601;
    // const String videoId = 'YeAxxMZf1O4';
    // const double startSeconds = 290;

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
                      word: """addition""",
                      // alsoEnglishWord: "also: addition",
                      britshText: """IpaUK: /əˈdɪʃn/""",
                      americanText: """IpaUS: /əˈdɪʃn/""",
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
کوردی: خستنەسەر، سەرخستن، پێ‌زیادکردن، کۆ، کۆکردنەوە، پێوەنان، خستنەپاڵ، دانەدەم، زیادی، پترلەپێویست، زیادە، سەربار، خراوەسەر، سەرخستە، سەرخراو، پاشکۆ
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) شتێک کە زیاد دەکرێت بۆ شتێکی تر"
                            ""),
                    SentencesRow(
                      englishText:
                          "All of these technologies are fairly recent additions.",
                      kurdishText: "ھەموو ئەم تەکنۆلۆژییانە تازە زیادکراون.",
                      onPressedBritish: () => speakaddi14("en-GB"),
                      onPressedAmerican: () => speakaddi14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کردەی زیادکردنی شتێک بۆ شتێکی تر"""),
                    SentencesRow(
                      englishText: "Add salt, tasting with every addition.",
                      kurdishText: "خوێی تێبکە و لەگەڵ ھەر تێکردنێک تامی بکە.",
                      onPressedBritish: () => speakadditi769("en-GB"),
                      onPressedAmerican: () => speakadditi769("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) بەشیکی تازە کە زیاددەکرێت بۆ بینایەک"""),
                    SentencesRow(
                      englishText:
                          "The addition should match the architecture of the house.",
                      kurdishText:
                          "بەشە زیادکراوەکە دەبێت بگونجێت لەگەڵ نەخشەی خانووەکە.",
                      onPressedBritish: () => speakaddit445("en-GB"),
                      onPressedAmerican: () => speakaddit445("en-US"),
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